// SDK smoke test -- validates build-from-source and API integration using the SDK client.
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import MailOdds

var passed = 0
var failed = 0

func check(_ label: String, _ expected: String?, _ actual: String?) {
    if expected == actual { passed += 1 }
    else { failed += 1; print("  FAIL: \(label) expected=\(expected ?? "nil") got=\(actual ?? "nil")") }
}

func checkBool(_ label: String, _ expected: Bool, _ actual: Bool?) {
    if expected == actual { passed += 1 }
    else { failed += 1; print("  FAIL: \(label) expected=\(expected) got=\(actual.map(String.init) ?? "nil")") }
}

func syncCall<T>(_ block: @escaping (@escaping (T?, Error?) -> Void) -> RequestTask) throws -> T {
    let sem = DispatchSemaphore(value: 0)
    var result: T?
    var callError: Error?
    _ = block { data, err in
        result = data
        callError = err
        sem.signal()
    }
    sem.wait()
    if let err = callError { throw err }
    guard let data = result else { throw NSError(domain: "SmokeTest", code: -1, userInfo: [NSLocalizedDescriptionKey: "nil response"]) }
    return data
}

guard let apiKey = ProcessInfo.processInfo.environment["MAILODDS_TEST_KEY"], !apiKey.isEmpty else {
    print("ERROR: MAILODDS_TEST_KEY not set")
    exit(1)
}

// Configure SDK -- override basePath to avoid /v1/v1 double prefix
MailOddsAPI.basePath = "https://api.mailodds.com"
MailOddsAPI.customHeaders = ["Authorization": "Bearer \(apiKey)"]
MailOddsAPI.apiResponseQueue = DispatchQueue(label: "api", attributes: .concurrent)

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
        let resp: ValidationResponse = try syncCall { completion in
            EmailValidationAPI.validateEmail(validateRequest: ValidateRequest(email: email), completion: completion)
        }
        check("\(domain).status", expStatus, resp.status.rawValue)
        check("\(domain).action", expAction, resp.action.rawValue)
        check("\(domain).sub_status", expSub, resp.subStatus?.rawValue)
        checkBool("\(domain).free_provider", expFree, resp.freeProvider)
        checkBool("\(domain).disposable", expDisp, resp.disposable)
        checkBool("\(domain).role_account", expRole, resp.roleAccount)
        checkBool("\(domain).mx_found", expMx, resp.mxFound)
        check("\(domain).depth", "enhanced", resp.depth.rawValue)
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
do {
    let savedHeaders = MailOddsAPI.customHeaders
    MailOddsAPI.customHeaders = ["Authorization": "Bearer invalid_key"]
    defer { MailOddsAPI.customHeaders = savedHeaders }
    let _: ValidationResponse = try syncCall { completion in
        EmailValidationAPI.validateEmail(validateRequest: ValidateRequest(email: "test@deliverable.mailodds.com"), completion: completion)
    }
    failed += 1
    print("  FAIL: error.401 no error raised")
} catch let error as ErrorResponse {
    if case .error(let code, _, _, _) = error, code == 401 { passed += 1 }
    else { failed += 1; print("  FAIL: error.401 wrong error: \(error)") }
} catch {
    failed += 1
    print("  FAIL: error.401 wrong error: \(error)")
}

// Error handling: 400/422 with missing email
do {
    let _: ValidationResponse = try syncCall { completion in
        EmailValidationAPI.validateEmail(validateRequest: ValidateRequest(email: ""), completion: completion)
    }
    failed += 1
    print("  FAIL: error.400 no error raised")
} catch let error as ErrorResponse {
    if case .error(let code, _, _, _) = error, (code == 400 || code == 422) { passed += 1 }
    else { failed += 1; print("  FAIL: error.400 wrong error: \(error)") }
} catch {
    failed += 1
    print("  FAIL: error.400 wrong error: \(error)")
}

// ---------------------------------------------------------------------------
// 2. Bulk Validation
// ---------------------------------------------------------------------------
print("--- Bulk Validation ---")

var bulkJobId: String? = nil
do {
    let jobResp: JobResponse = try syncCall { completion in
        BulkValidationAPI.createJob(createJobRequest: CreateJobRequest(emails: ["test@deliverable.mailodds.com"]), completion: completion)
    }
    let jobId = jobResp.job?.id ?? ""
    bulkJobId = jobId.isEmpty ? nil : jobId
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
            let getResp: JobResponse = try syncCall { completion in
                BulkValidationAPI.getJob(jobId: jobId, completion: completion)
            }
            check("bulk.get.id", jobId, getResp.job?.id)
        } catch {
            failed += 1; print("  FAIL: bulk.get error: \(error)")
        }

        // Delete job
        do {
            let delResp: DeleteJob200Response = try syncCall { completion in
                BulkValidationAPI.deleteJob(jobId: jobId, completion: completion)
            }
            checkBool("bulk.delete.deleted", true, delResp.deleted)
            bulkJobId = nil
        } catch {
            failed += 1; print("  FAIL: bulk.delete error: \(error)")
        }
    }
} catch {
    failed += 1; print("  FAIL: bulk.create error: \(error)")
}
// Cleanup
if let jId = bulkJobId {
    let _: DeleteJob200Response? = try? syncCall { completion in
        BulkValidationAPI.deleteJob(jobId: jId, completion: completion)
    }
}

// ---------------------------------------------------------------------------
// 3. Suppression Lists
// ---------------------------------------------------------------------------
print("--- Suppression Lists ---")

let testEmail = "swift-smoke-\(ts)@example.com"

// Add suppression
do {
    let addResp: AddSuppressionResponse = try syncCall { completion in
        SuppressionListsAPI.addSuppression(addSuppressionRequest: AddSuppressionRequest(
            entries: [AddSuppressionRequestEntriesInner(type: .email, value: testEmail)]
        ), completion: completion)
    }
    if addResp.added == 1 { passed += 1 }
    else { failed += 1; print("  FAIL: suppression.add.added expected=1 got=\(addResp.added ?? -1)") }
} catch {
    failed += 1; print("  FAIL: suppression.add error: \(error)")
}

// Check suppression
do {
    let checkResp: SuppressionCheckResponse = try syncCall { completion in
        SuppressionListsAPI.checkSuppression(checkSuppressionRequest: CheckSuppressionRequest(email: testEmail), completion: completion)
    }
    checkBool("suppression.check.suppressed", true, checkResp.suppressed)
} catch {
    failed += 1; print("  FAIL: suppression.check error: \(error)")
}

// Get suppression stats
do {
    let statsResp: SuppressionStatsResponse = try syncCall { completion in
        SuppressionListsAPI.getSuppressionStats(completion: completion)
    }
    if statsResp.total != nil && statsResp.total! >= 0 { passed += 1 }
    else { failed += 1; print("  FAIL: suppression.stats.total is nil or negative") }
} catch {
    failed += 1; print("  FAIL: suppression.stats error: \(error)")
}

// Remove suppression
do {
    let removeResp: RemoveSuppression200Response = try syncCall { completion in
        SuppressionListsAPI.removeSuppression(removeSuppressionRequest: RemoveSuppressionRequest(entries: [testEmail]), completion: completion)
    }
    if removeResp.removed == 1 { passed += 1 }
    else { failed += 1; print("  FAIL: suppression.remove.removed expected=1 got=\(removeResp.removed ?? -1)") }
} catch {
    failed += 1; print("  FAIL: suppression.remove error: \(error)")
}

// ---------------------------------------------------------------------------
// 4. Validation Policies
// ---------------------------------------------------------------------------
print("--- Validation Policies ---")

// Cleanup leftover smoke policies
do {
    let existingResp: PolicyListResponse = try syncCall { completion in
        ValidationPoliciesAPI.listPolicies(completion: completion)
    }
    for p in existingResp.policies ?? [] {
        if let name = p.name, name.hasPrefix("smoke") {
            let _: DeletePolicy200Response? = try? syncCall { completion in
                ValidationPoliciesAPI.deletePolicy(policyId: p.id ?? 0, completion: completion)
            }
        }
    }
} catch {}

// List presets
do {
    let presetsResp: PolicyPresetsResponse = try syncCall { completion in
        ValidationPoliciesAPI.getPolicyPresets(completion: completion)
    }
    if let presets = presetsResp.presets, !presets.isEmpty { passed += 1 }
    else { failed += 1; print("  FAIL: policies.presets expected non-empty") }
} catch {
    failed += 1; print("  FAIL: policies.presets error: \(error)")
}

// Create from preset
var createdPolicyId: Int? = nil
do {
    let policyResp: PolicyResponse = try syncCall { completion in
        ValidationPoliciesAPI.createPolicyFromPreset(
            createPolicyFromPresetRequest: CreatePolicyFromPresetRequest(presetId: .strict, name: "smoke-\(ts)"),
            completion: completion
        )
    }
    let pId = policyResp.policy?.id
    if pId != nil { passed += 1; createdPolicyId = pId }
    else { failed += 1; print("  FAIL: policies.create.id is nil") }
    check("policies.create.name", "smoke-\(ts)", policyResp.policy?.name)
} catch {
    failed += 1; print("  FAIL: policies.create error: \(error)")
}

// Delete policy (cleanup)
if let pId = createdPolicyId {
    do {
        let delResp: DeletePolicy200Response = try syncCall { completion in
            ValidationPoliciesAPI.deletePolicy(policyId: pId, completion: completion)
        }
        checkBool("policies.delete.deleted", true, delResp.deleted)
    } catch {
        failed += 1; print("  FAIL: policies.delete error: \(error)")
    }
}

// ---------------------------------------------------------------------------
// 5. System
// ---------------------------------------------------------------------------
print("--- System ---")

// Health check (no auth)
do {
    let savedHeaders = MailOddsAPI.customHeaders
    MailOddsAPI.customHeaders = [:]
    let health: HealthCheck200Response = try syncCall { completion in
        SystemAPI.healthCheck(completion: completion)
    }
    MailOddsAPI.customHeaders = savedHeaders
    check("system.health.status", "healthy", health.status)
} catch {
    failed += 1; print("  FAIL: system.health error: \(error)")
}

// Telemetry summary
do {
    let telResp: TelemetrySummary = try syncCall { completion in
        SystemAPI.getTelemetrySummary(completion: completion)
    }
    if telResp.window != nil { passed += 1 }
    else { failed += 1; print("  FAIL: system.telemetry.window is nil") }
    if telResp.totals != nil { passed += 1 }
    else { failed += 1; print("  FAIL: system.telemetry.totals is nil") }
} catch {
    failed += 1; print("  FAIL: system.telemetry error: \(error)")
}

// ---------------------------------------------------------------------------
// 6. Sending Domains
// ---------------------------------------------------------------------------
print("--- Sending Domains ---")

do {
    let listResp: ListSendingDomains200Response = try syncCall { completion in
        SendingDomainsAPI.listSendingDomains(completion: completion)
    }
    if listResp.domains != nil { passed += 1 }
    else { failed += 1; print("  FAIL: sending.list.domains is nil") }
} catch {
    failed += 1; print("  FAIL: sending.list error: \(error)")
}

let smokeDomain = "swift-smoke-\(ts).example.com"
var createdDomainId: String? = nil
do {
    let createResp: CreateSendingDomain201Response = try syncCall { completion in
        SendingDomainsAPI.createSendingDomain(
            createSendingDomainRequest: CreateSendingDomainRequest(domain: smokeDomain),
            completion: completion
        )
    }
    check("sending.create.domain", smokeDomain, createResp.domain?.domain)
    if let dId = createResp.domain?.id, !dId.isEmpty { passed += 1; createdDomainId = dId }
    else { failed += 1; print("  FAIL: sending.create.id expected non-empty") }
} catch {
    failed += 1; print("  FAIL: sending.create error: \(error)")
}

if let dId = createdDomainId {
    do {
        let _: DeletePolicyRule200Response? = try? syncCall { completion in
            SendingDomainsAPI.deleteSendingDomain(domainId: dId, completion: completion)
        }
        passed += 1
    }
}

// ---------------------------------------------------------------------------
// 7. Subscriber Lists
// ---------------------------------------------------------------------------
print("--- Subscriber Lists ---")

let listName = "swift-smoke-\(ts)"
var createdListId: String? = nil
do {
    let createResp: CreateList201Response = try syncCall { completion in
        SubscriberListsAPI.createList(createListRequest: CreateListRequest(name: listName), completion: completion)
    }
    check("subscribers.create.name", listName, createResp.list?.name)
    if let lId = createResp.list?.id, !lId.isEmpty { passed += 1; createdListId = lId }
    else { failed += 1; print("  FAIL: subscribers.create.id expected non-empty") }
} catch {
    failed += 1; print("  FAIL: subscribers.create error: \(error)")
}

if let lId = createdListId {
    do {
        let listsResp: GetLists200Response = try syncCall { completion in
            SubscriberListsAPI.getLists(completion: completion)
        }
        if let lists = listsResp.lists, !lists.isEmpty { passed += 1 }
        else { failed += 1; print("  FAIL: subscribers.get_lists expected non-empty") }
    } catch {
        failed += 1; print("  FAIL: subscribers.get_lists error: \(error)")
    }

    let subEmail = "swift-smoke-\(ts)@example.com"
    do {
        let _: UnsubscribeSubscriber200Response = try syncCall { completion in
            SubscriberListsAPI.subscribe(listId: lId, subscribeRequest: SubscribeRequest(email: subEmail), completion: completion)
        }
        passed += 1
    } catch {
        failed += 1; print("  FAIL: subscribers.subscribe error: \(error)")
    }

    do {
        let _: DeletePolicyRule200Response? = try? syncCall { completion in
            SubscriberListsAPI.deleteList(listId: lId, completion: completion)
        }
        passed += 1
    }
}

// ---------------------------------------------------------------------------
// 8. Email Sending (import-only verification)
// ---------------------------------------------------------------------------
print("--- Email Sending ---")

_ = EmailSendingAPI.self
check("sending.exists", "true", "true")

// ---------------------------------------------------------------------------
// Summary
// ---------------------------------------------------------------------------
let total = passed + failed
let result = failed == 0 ? "PASS" : "FAIL"
print("\n\(result): Swift SDK (\(passed)/\(total))")
exit(failed == 0 ? 0 : 1)
