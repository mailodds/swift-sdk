# EmailValidationAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validateEmail**](EmailValidationAPI.md#validateemail) | **POST** /v1/validate | Validate single email


# **validateEmail**
```swift
    open class func validateEmail(validateRequest: ValidateRequest, completion: @escaping (_ data: ValidationResponse?, _ error: Error?) -> Void)
```

Validate single email

Validate a single email address. Returns detailed validation results including status, sub-status, and recommended action.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let validateRequest = ValidateRequest(email: "email_example", policyId: 123) // ValidateRequest | 

// Validate single email
EmailValidationAPI.validateEmail(validateRequest: validateRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateRequest** | [**ValidateRequest**](ValidateRequest.md) |  | 

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

