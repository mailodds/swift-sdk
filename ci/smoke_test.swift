// SDK smoke test -- validates build-from-source and API integration using the SDK client.
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import MailOdds

var passed = 0
var failed = 0

@MainActor func check(_ label: String, _ expected: String?, _ actual: String?) {
    if expected == actual { passed += 1 }
    else { failed += 1; print("  FAIL: \(label) expected=\(expected ?? "nil") got=\(actual ?? "nil")") }
}

@MainActor func checkBool(_ label: String, _ expected: Bool, _ actual: Bool?) {
    if expected == actual { passed += 1 }
    else { failed += 1; print("  FAIL: \(label) expected=\(expected) got=\(actual.map(String.init) ?? "nil")") }
}

guard let apiKey = ProcessInfo.processInfo.environment["MAILODDS_TEST_KEY"], !apiKey.isEmpty else {
    print("ERROR: MAILODDS_TEST_KEY not set")
    exit(1)
}

let config = MailOddsAPIConfiguration(
    basePath: "https://api.mailodds.com",
    customHeaders: ["Authorization": "Bearer \(apiKey)"]
)

let ts = String(Int(Date().timeIntervalSince1970))

// ---------------------------------------------------------------------------
// 1. Email Validation
// ---------------------------------------------------------------------------
print("--- Email Validation ---")

let cases: [(String, String, String, String?, Bool, Bool, Bool, Bool)] = [
    ("test@deliverable.mailodds.com", "valid", "accept", nil, false, false, false, true),
    ("test@invalid.mailodds.com", "invalid", "reject", "smtp_rejected", false, false, false, true),
    ("test@risky.mailodds.com", "catch_all", "accept_with_caution", "catch_all_detected", false, false, false, true),
    ("test@disposable.mailodds.com", "do_not_mail", "reject", "disposable", false, true, false, true),
    ("test@role.mailodds.com", "do_not_mail", "reject", "role_account", false, false, true, true),
    ("test@timeout.mailodds.com", "unknown", "retry_later", "smtp_unreachable", false, false, false, true),
    ("test@freeprovider.mailodds.com", "valid", "accept", nil, true, false, false, true),
]

for (email, expStatus, expAction, expSub, expFree, expDisp, expRole, expMx) in cases {
    let domain = String(email.split(separator: "@")[1].split(separator: ".")[0])
    do {
        let resp = try await EmailValidationAPI.validateEmail(
            validateRequest: ValidateRequest(email: email),
            apiConfiguration: config
        )
        check("\(domain).status", expStatus, resp.status.rawValue)
        check("\(domain).action", expAction, resp.action.rawValue)
        check("\(domain).sub_status", expSub, resp.subStatus?.rawValue)
        checkBool("\(domain).free_provider", expFree, resp.freeProvider)
        checkBool("\(domain).disposable", expDisp, resp.disposable)
        checkBool("\(domain).role_account", expRole, resp.roleAccount)
        checkBool("\(domain).mx_found", expMx, resp.mxFound)
        check("\(domain).depth", "enhanced", resp.depth.rawValue)
        // processedAt is a non-optional Date; verify it is not the Unix epoch (a sensible sanity check)
        if resp.processedAt.timeIntervalSince1970 > 0 {
            passed += 1
        } else {
            failed += 1; print("  FAIL: \(domain).processed_at is epoch zero")
        }
    } catch {
        failed += 1
        print("  FAIL: \(domain) error: \(error)")
    }
}

// Error handling: 401 with bad key
let badConfig = MailOddsAPIConfiguration(
    basePath: "https://api.mailodds.com",
    customHeaders: ["Authorization": "Bearer invalid_key"]
)
do {
    _ = try await EmailValidationAPI.validateEmail(
        validateRequest: ValidateRequest(email: "test@deliverable.mailodds.com"),
        apiConfiguration: badConfig
    )
    failed += 1
    print("  FAIL: error.401 no error raised")
} catch ErrorResponse.error(let code, _, _, _) {
    if code == 401 { passed += 1 }
    else { failed += 1; print("  FAIL: error.401 expected=401 got=\(code)") }
} catch {
    failed += 1
    print("  FAIL: error.401 wrong error: \(error)")
}

// Error handling: 400/422 with missing email
do {
    _ = try await EmailValidationAPI.validateEmail(
        validateRequest: ValidateRequest(email: ""),
        apiConfiguration: config
    )
    failed += 1
    print("  FAIL: error.400 no error raised")
} catch ErrorResponse.error(let code, _, _, _) {
    if code == 400 || code == 422 { passed += 1 }
    else { failed += 1; print("  FAIL: error.400 expected=400|422 got=\(code)") }
} catch {
    failed += 1
    print("  FAIL: error.400 wrong error: \(error)")
}

// ---------------------------------------------------------------------------
// 2. Bulk Validation
// ---------------------------------------------------------------------------
print("--- Bulk Validation ---")

do {
    let jobResp = try await BulkValidationAPI.createJob(
        createJobRequest: CreateJobRequest(emails: ["test@deliverable.mailodds.com"]),
        apiConfiguration: config
    )
    let jobId = jobResp.job?.id ?? ""
    if jobId.hasPrefix("job_") {
        passed += 1
    } else {
        failed += 1; print("  FAIL: bulk.create.id expected job_ prefix got=\(jobId)")
    }
    if jobResp.job?.status != nil {
        passed += 1
    } else {
        failed += 1; print("  FAIL: bulk.create.status is nil")
    }

    // Get job
    if !jobId.isEmpty {
        do {
            let getResp = try await BulkValidationAPI.getJob(
                jobId: jobId,
                apiConfiguration: config
            )
            check("bulk.get.id", jobId, getResp.job?.id)
        } catch {
            failed += 1
            print("  FAIL: bulk.get error: \(error)")
        }

        // Delete job
        do {
            let delResp = try await BulkValidationAPI.deleteJob(
                jobId: jobId,
                apiConfiguration: config
            )
            checkBool("bulk.delete.deleted", true, delResp.deleted)
        } catch {
            failed += 1
            print("  FAIL: bulk.delete error: \(error)")
        }
    }
} catch {
    failed += 1
    print("  FAIL: bulk.create error: \(error)")
}

// ---------------------------------------------------------------------------
// 3. Suppression Lists
// ---------------------------------------------------------------------------
print("--- Suppression Lists ---")

let testEmail = "swift-smoke-\(ts)@example.com"

// Add suppression
do {
    let addResp = try await SuppressionListsAPI.addSuppression(
        addSuppressionRequest: AddSuppressionRequest(
            entries: [AddSuppressionRequestEntriesInner(type: .email, value: testEmail)]
        ),
        apiConfiguration: config
    )
    if addResp.added == 1 {
        passed += 1
    } else {
        failed += 1; print("  FAIL: suppression.add.added expected=1 got=\(addResp.added ?? -1)")
    }
} catch {
    failed += 1
    print("  FAIL: suppression.add error: \(error)")
}

// Check suppression
do {
    let checkResp = try await SuppressionListsAPI.checkSuppression(
        checkSuppressionRequest: CheckSuppressionRequest(email: testEmail),
        apiConfiguration: config
    )
    checkBool("suppression.check.suppressed", true, checkResp.suppressed)
} catch {
    failed += 1
    print("  FAIL: suppression.check error: \(error)")
}

// Get suppression stats
do {
    let statsResp = try await SuppressionListsAPI.getSuppressionStats(
        apiConfiguration: config
    )
    if statsResp.total != nil && statsResp.total! >= 0 {
        passed += 1
    } else {
        failed += 1; print("  FAIL: suppression.stats.total is nil or negative")
    }
} catch {
    failed += 1
    print("  FAIL: suppression.stats error: \(error)")
}

// Remove suppression
do {
    let removeResp = try await SuppressionListsAPI.removeSuppression(
        removeSuppressionRequest: RemoveSuppressionRequest(entries: [testEmail]),
        apiConfiguration: config
    )
    if removeResp.removed == 1 {
        passed += 1
    } else {
        failed += 1; print("  FAIL: suppression.remove.removed expected=1 got=\(removeResp.removed ?? -1)")
    }
} catch {
    failed += 1
    print("  FAIL: suppression.remove error: \(error)")
}

// ---------------------------------------------------------------------------
// 4. Validation Policies
// ---------------------------------------------------------------------------
print("--- Validation Policies ---")

// Cleanup leftover smoke policies (free plan allows only 1)
do {
    let existingResp = try await ValidationPoliciesAPI.listPolicies(
        apiConfiguration: config
    )
    for p in existingResp.policies ?? [] {
        if let name = p.name, name.hasPrefix("smoke") {
            _ = try? await ValidationPoliciesAPI.deletePolicy(
                policyId: p.id ?? 0,
                apiConfiguration: config
            )
        }
    }
} catch {}

// List presets
do {
    let presetsResp = try await ValidationPoliciesAPI.getPolicyPresets(
        apiConfiguration: config
    )
    if let presets = presetsResp.presets, !presets.isEmpty {
        passed += 1
    } else {
        failed += 1; print("  FAIL: policies.presets expected non-empty")
    }
} catch {
    failed += 1
    print("  FAIL: policies.presets error: \(error)")
}

// Create from preset
var createdPolicyId: Int? = nil
do {
    let policyResp = try await ValidationPoliciesAPI.createPolicyFromPreset(
        createPolicyFromPresetRequest: CreatePolicyFromPresetRequest(
            presetId: .strict,
            name: "smoke-\(ts)"
        ),
        apiConfiguration: config
    )
    let pId = policyResp.policy?.id
    if pId != nil {
        passed += 1
        createdPolicyId = pId
    } else {
        failed += 1; print("  FAIL: policies.create.id is nil")
    }
    check("policies.create.name", "smoke-\(ts)", policyResp.policy?.name)
} catch {
    failed += 1
    print("  FAIL: policies.create error: \(error)")
}

// Delete policy (cleanup)
if let pId = createdPolicyId {
    do {
        let delResp = try await ValidationPoliciesAPI.deletePolicy(
            policyId: pId,
            apiConfiguration: config
        )
        checkBool("policies.delete.deleted", true, delResp.deleted)
    } catch {
        failed += 1
        print("  FAIL: policies.delete error: \(error)")
    }
}

// ---------------------------------------------------------------------------
// 5. System
// ---------------------------------------------------------------------------
print("--- System ---")

// Health check (no auth required)
let noAuthConfig = MailOddsAPIConfiguration(
    basePath: "https://api.mailodds.com",
    customHeaders: [:]
)
do {
    let health = try await SystemAPI.healthCheck(apiConfiguration: noAuthConfig)
    check("system.health.status", "healthy", health.status)
} catch {
    failed += 1
    print("  FAIL: system.health error: \(error)")
}

// Telemetry summary (requires auth)
do {
    let telResp = try await SystemAPI.getTelemetrySummary(apiConfiguration: config)
    if telResp.window != nil {
        passed += 1
    } else {
        failed += 1; print("  FAIL: system.telemetry.window is nil")
    }
    if telResp.totals != nil {
        passed += 1
    } else {
        failed += 1; print("  FAIL: system.telemetry.totals is nil")
    }
} catch {
    failed += 1
    print("  FAIL: system.telemetry error: \(error)")
}

// ---------------------------------------------------------------------------
// 6. Sending Domains
// ---------------------------------------------------------------------------
print("--- Sending Domains ---")

// List sending domains
do {
    let listResp = try await SendingDomainsAPI.listSendingDomains(apiConfiguration: config)
    if listResp.domains != nil {
        passed += 1
    } else {
        failed += 1; print("  FAIL: sending.list.domains is nil")
    }
} catch {
    failed += 1
    print("  FAIL: sending.list error: \(error)")
}

// Create sending domain
let smokeDomain = "swift-smoke-\(ts).example.com"
var createdDomainId: String? = nil
do {
    let createResp = try await SendingDomainsAPI.createSendingDomain(
        createSendingDomainRequest: CreateSendingDomainRequest(domain: smokeDomain),
        apiConfiguration: config
    )
    let domainId = createResp.domain?.id
    check("sending.create.domain", smokeDomain, createResp.domain?.domain)
    if let dId = domainId, !dId.isEmpty {
        passed += 1
        createdDomainId = dId
    } else {
        failed += 1; print("  FAIL: sending.create.id expected non-empty")
    }
} catch {
    failed += 1
    print("  FAIL: sending.create error: \(error)")
}

// Delete sending domain (cleanup)
if let dId = createdDomainId {
    do {
        let delResp = try await SendingDomainsAPI.deleteSendingDomain(
            domainId: dId,
            apiConfiguration: config
        )
        checkBool("sending.delete.deleted", true, delResp.deleted)
    } catch {
        failed += 1
        print("  FAIL: sending.delete error: \(error)")
    }
}

// ---------------------------------------------------------------------------
// 7. Subscriber Lists
// ---------------------------------------------------------------------------
print("--- Subscriber Lists ---")

let listName = "swift-smoke-\(ts)"
var createdListId: String? = nil
do {
    let createResp = try await SubscriberListsAPI.createList(
        createListRequest: CreateListRequest(name: listName),
        apiConfiguration: config
    )
    let listId = createResp.list?.id
    check("subscribers.create.name", listName, createResp.list?.name)
    if let lId = listId, !lId.isEmpty {
        passed += 1
        createdListId = lId
    } else {
        failed += 1; print("  FAIL: subscribers.create.id expected non-empty")
    }
} catch {
    failed += 1
    print("  FAIL: subscribers.create error: \(error)")
}

if let lId = createdListId {
    // Get lists
    do {
        let listsResp = try await SubscriberListsAPI.getLists(apiConfiguration: config)
        if let lists = listsResp.lists, !lists.isEmpty {
            passed += 1
        } else {
            failed += 1; print("  FAIL: subscribers.get_lists expected non-empty")
        }
    } catch {
        failed += 1
        print("  FAIL: subscribers.get_lists error: \(error)")
    }

    // Subscribe
    let subEmail = "swift-smoke-\(ts)@example.com"
    do {
        let subResp = try await SubscriberListsAPI.subscribe(
            listId: lId,
            subscribeRequest: SubscribeRequest(email: subEmail),
            apiConfiguration: config
        )
        check("subscribers.subscribe.email", subEmail, subResp.subscriber?.email)
    } catch {
        failed += 1
        print("  FAIL: subscribers.subscribe error: \(error)")
    }

    // Delete list (cleanup)
    do {
        let delResp = try await SubscriberListsAPI.deleteList(
            listId: lId,
            apiConfiguration: config
        )
        checkBool("subscribers.delete.deleted", true, delResp.deleted)
    } catch {
        failed += 1
        print("  FAIL: subscribers.delete error: \(error)")
    }
}

// ---------------------------------------------------------------------------
// 8. Email Sending (import-only verification)
// ---------------------------------------------------------------------------
print("--- Email Sending ---")

// Verify the EmailSendingAPI type is accessible (no live send in smoke test)
_ = EmailSendingAPI.self
check("sending.exists", "true", "true")

// ---------------------------------------------------------------------------
// Summary
// ---------------------------------------------------------------------------
let total = passed + failed
let result = failed == 0 ? "PASS" : "FAIL"
print("\n\(result): Swift SDK (\(passed)/\(total))")
exit(failed == 0 ? 0 : 1)
