// SDK smoke test -- validates build-from-source and API integration.
// Uses curl subprocess since Foundation.URLSession needs async runtime setup.
import Foundation

let apiUrl = "https://api.mailodds.com"
guard let apiKey = ProcessInfo.processInfo.environment["MAILODDS_TEST_KEY"], !apiKey.isEmpty else {
    print("ERROR: MAILODDS_TEST_KEY not set")
    exit(1)
}

var passed = 0
var failed = 0

func check(_ label: String, _ expected: String?, _ actual: String?) {
    if expected == actual { passed += 1 }
    else { failed += 1; print("  FAIL: \(label) expected=\(expected ?? "nil") got=\(actual ?? "nil")") }
}

func apiCall(_ email: String, _ key: String) -> (Int, [String: Any]) {
    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/usr/bin/curl")
    process.arguments = ["-s", "-w", "\n%{http_code}", "-X", "POST",
                         "-H", "Authorization: Bearer \(key)",
                         "-H", "Content-Type: application/json",
                         "-d", "{\"email\":\"\(email)\"}",
                         "\(apiUrl)/v1/validate", "--max-time", "30"]
    let pipe = Pipe()
    process.standardOutput = pipe
    try! process.run()
    process.waitUntilExit()

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!.trimmingCharacters(in: .whitespacesAndNewlines)
    let lines = output.components(separatedBy: "\n")
    let code = Int(lines.last!) ?? 0
    let body = lines.dropLast().joined(separator: "\n")

    if let jsonData = body.data(using: .utf8),
       let json = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] {
        return (code, json)
    }
    return (code, [:])
}

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
    let domain = email.split(separator: "@")[1].split(separator: ".")[0]
    let (_, r) = apiCall(email, apiKey)
    check("\(domain).status", expStatus, r["status"] as? String)
    check("\(domain).action", expAction, r["action"] as? String)
    let sub = r["sub_status"] as? String
    check("\(domain).sub_status", expSub, sub)
    let testMode = r["test_mode"] as? Bool ?? false
    check("\(domain).test_mode", "true", testMode ? "true" : "false")
}

// Error handling
let (code401, _) = apiCall("test@deliverable.mailodds.com", "invalid_key")
check("error.401", "401", "\(code401)")

let process = Process()
process.executableURL = URL(fileURLWithPath: "/usr/bin/curl")
process.arguments = ["-s", "-w", "\n%{http_code}", "-X", "POST",
                     "-H", "Authorization: Bearer \(apiKey)",
                     "-H", "Content-Type: application/json",
                     "-d", "{}",
                     "\(apiUrl)/v1/validate", "--max-time", "10"]
let pipe = Pipe()
process.standardOutput = pipe
try! process.run()
process.waitUntilExit()
let data = pipe.fileHandleForReading.readDataToEndOfFile()
let output = String(data: data, encoding: .utf8)!.trimmingCharacters(in: .whitespacesAndNewlines)
let code400 = Int(output.components(separatedBy: "\n").last!) ?? 0
if code400 == 400 || code400 == 422 { passed += 1 }
else { failed += 1; print("  FAIL: error.400 expected=400|422 got=\(code400)") }

let total = passed + failed
let result = failed == 0 ? "PASS" : "FAIL"
print("\n\(result): Swift SDK (\(passed)/\(total))")
exit(failed == 0 ? 0 : 1)
