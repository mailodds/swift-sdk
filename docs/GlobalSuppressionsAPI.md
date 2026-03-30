# GlobalSuppressionsAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGlobalSuppressionOverride**](GlobalSuppressionsAPI.md#addglobalsuppressionoverride) | **POST** /v1/global-suppressions/overrides | Add global suppression override
[**checkGlobalSuppression**](GlobalSuppressionsAPI.md#checkglobalsuppression) | **GET** /v1/global-suppressions/check | Check global suppression
[**removeGlobalSuppressionOverride**](GlobalSuppressionsAPI.md#removeglobalsuppressionoverride) | **DELETE** /v1/global-suppressions/overrides | Remove global suppression override


# **addGlobalSuppressionOverride**
```swift
    open class func addGlobalSuppressionOverride(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add global suppression override

Add an override to allow sending to a globally suppressed email address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Add global suppression override
GlobalSuppressionsAPI.addGlobalSuppressionOverride() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkGlobalSuppression**
```swift
    open class func checkGlobalSuppression(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Check global suppression

Check if an email address is globally suppressed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Check global suppression
GlobalSuppressionsAPI.checkGlobalSuppression() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeGlobalSuppressionOverride**
```swift
    open class func removeGlobalSuppressionOverride(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove global suppression override

Remove an override for a globally suppressed email address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Remove global suppression override
GlobalSuppressionsAPI.removeGlobalSuppressionOverride() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

