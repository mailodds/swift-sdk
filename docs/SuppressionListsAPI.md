# SuppressionListsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSuppression**](SuppressionListsAPI.md#addsuppression) | **POST** /v1/suppression | Add suppression entries
[**checkSuppression**](SuppressionListsAPI.md#checksuppression) | **POST** /v1/suppression/check | Check suppression status
[**getSuppressionStats**](SuppressionListsAPI.md#getsuppressionstats) | **GET** /v1/suppression/stats | Get suppression statistics
[**listSuppression**](SuppressionListsAPI.md#listsuppression) | **GET** /v1/suppression | List suppression entries
[**removeSuppression**](SuppressionListsAPI.md#removesuppression) | **DELETE** /v1/suppression | Remove suppression entries


# **addSuppression**
```swift
    open class func addSuppression(addSuppressionRequest: AddSuppressionRequest, completion: @escaping (_ data: AddSuppressionResponse?, _ error: Error?) -> Void)
```

Add suppression entries

Add emails or domains to the suppression list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let addSuppressionRequest = AddSuppressionRequest(entries: [AddSuppressionRequest_entries_inner(type: "type_example", value: "value_example", reason: "reason_example")]) // AddSuppressionRequest | 

// Add suppression entries
SuppressionListsAPI.addSuppression(addSuppressionRequest: addSuppressionRequest) { (response, error) in
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
 **addSuppressionRequest** | [**AddSuppressionRequest**](AddSuppressionRequest.md) |  | 

### Return type

[**AddSuppressionResponse**](AddSuppressionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkSuppression**
```swift
    open class func checkSuppression(checkSuppressionRequest: CheckSuppressionRequest, completion: @escaping (_ data: SuppressionCheckResponse?, _ error: Error?) -> Void)
```

Check suppression status

Check if an email is suppressed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let checkSuppressionRequest = checkSuppression_request(email: "email_example") // CheckSuppressionRequest | 

// Check suppression status
SuppressionListsAPI.checkSuppression(checkSuppressionRequest: checkSuppressionRequest) { (response, error) in
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
 **checkSuppressionRequest** | [**CheckSuppressionRequest**](CheckSuppressionRequest.md) |  | 

### Return type

[**SuppressionCheckResponse**](SuppressionCheckResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSuppressionStats**
```swift
    open class func getSuppressionStats(completion: @escaping (_ data: SuppressionStatsResponse?, _ error: Error?) -> Void)
```

Get suppression statistics

Get statistics about the suppression list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Get suppression statistics
SuppressionListsAPI.getSuppressionStats() { (response, error) in
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

[**SuppressionStatsResponse**](SuppressionStatsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSuppression**
```swift
    open class func listSuppression(page: Int? = nil, perPage: Int? = nil, type: ModelType_listSuppression? = nil, search: String? = nil, completion: @escaping (_ data: SuppressionListResponse?, _ error: Error?) -> Void)
```

List suppression entries

List all suppression entries for the account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 50)
let type = "type_example" // String |  (optional)
let search = "search_example" // String |  (optional)

// List suppression entries
SuppressionListsAPI.listSuppression(page: page, perPage: perPage, type: type, search: search) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 50]
 **type** | **String** |  | [optional] 
 **search** | **String** |  | [optional] 

### Return type

[**SuppressionListResponse**](SuppressionListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeSuppression**
```swift
    open class func removeSuppression(removeSuppressionRequest: RemoveSuppressionRequest, completion: @escaping (_ data: RemoveSuppression200Response?, _ error: Error?) -> Void)
```

Remove suppression entries

Remove emails or domains from the suppression list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let removeSuppressionRequest = removeSuppression_request(entries: ["entries_example"]) // RemoveSuppressionRequest | 

// Remove suppression entries
SuppressionListsAPI.removeSuppression(removeSuppressionRequest: removeSuppressionRequest) { (response, error) in
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
 **removeSuppressionRequest** | [**RemoveSuppressionRequest**](RemoveSuppressionRequest.md) |  | 

### Return type

[**RemoveSuppression200Response**](RemoveSuppression200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

