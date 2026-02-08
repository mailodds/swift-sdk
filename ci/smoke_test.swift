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

guard let apiKey = ProcessInfo.processInfo.environment["MAILODDS_TEST_KEY"], !apiKey.isEmpty else {
    print("ERROR: MAILODDS_TEST_KEY not set")
    exit(1)
}

let config = MailOddsAPIConfiguration(
    basePath: "https://api.mailodds.com",
    customHeaders: ["Authorization": "Bearer \(apiKey)"]
)

let cases: [(String, String, String, String?)] = [
    ("test@deliverable.mailodds.com", "valid", "accept", nil),
    ("test@invalid.mailodds.com", "invalid", "reject", "smtp_rejected"),
    ("test@risky.mailodds.com", "catch_all", "accept_with_caution", "catch_all_detected"),
    ("test@disposable.mailodds.com", "do_not_mail", "reject", "disposable"),
    ("test@role.mailodds.com", "do_not_mail", "reject", "role_account"),
    ("test@timeout.mailodds.com", "unknown", "retry_later", "smtp_unreachable"),
    ("test@freeprovider.mailodds.com", "valid", "accept", nil),
]

for (email, expStatus, expAction, expSub) in cases {
    let domain = String(email.split(separator: "@")[1].split(separator: ".")[0])
    do {
        let resp = try await EmailValidationAPI.validateEmail(
            validateRequest: ValidateRequest(email: email),
            apiConfiguration: config
        )
        check("\(domain).status", expStatus, resp.status.rawValue)
        check("\(domain).action", expAction, resp.action.rawValue)
        check("\(domain).sub_status", expSub, resp.subStatus)
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

let total = passed + failed
let result = failed == 0 ? "PASS" : "FAIL"
print("\n\(result): Swift SDK (\(passed)/\(total))")
exit(failed == 0 ? 0 : 1)
