# MailOdds SDK for Swift

Official Swift client for the [MailOdds Email Validation API](https://mailodds.com/docs).

## Installation

Add the package via Swift Package Manager in your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/mailodds/swift-sdk.git", from: "1.0.0")
]
```

Or add it through Xcode: File > Add Package Dependencies, then enter the repository URL.

## Quick Start

```swift
import MailOdds

let config = MailOddsAPIConfiguration(
    customHeaders: ["Authorization": "Bearer mo_live_your_api_key"]
)

let request = ValidateRequest(email: "user@example.com")
let result = try await EmailValidationAPI.validateEmail(
    validateRequest: request,
    apiConfiguration: config
)

switch result.action {
case .accept:
    print("Safe to send")
case .acceptWithCaution:
    print("Valid but risky -- flag for review")
case .reject:
    print("Do not send")
case .retryLater:
    print("Temporary failure -- retry after backoff")
}
```

## Response Handling

Branch on the `action` field for decisioning:

| Action | Meaning | Recommended |
|--------|---------|-------------|
| `accept` | Safe to send | Add to mailing list |
| `accept_with_caution` | Valid but risky (catch-all, role account) | Flag for review |
| `reject` | Invalid or disposable | Do not send |
| `retry_later` | Temporary failure | Retry after backoff |

## Test Mode

Use an `mo_test_` prefixed API key with test domains for predictable responses without consuming credits.

## API Reference

Full API documentation: https://mailodds.com/docs
OpenAPI spec: https://mailodds.com/openapi.yaml

## License

MIT
