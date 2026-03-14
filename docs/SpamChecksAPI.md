# SpamChecksAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpamCheck**](SpamChecksAPI.md#getspamcheck) | **GET** /v1/spam-checks/{check_id} | Get spam check
[**listSpamChecks**](SpamChecksAPI.md#listspamchecks) | **GET** /v1/spam-checks | List spam checks
[**runSpamCheck**](SpamChecksAPI.md#runspamcheck) | **POST** /v1/spam-checks | Run spam check


# **getSpamCheck**
```swift
    open class func getSpamCheck(checkId: String, completion: @escaping (_ data: RunSpamCheck201Response?, _ error: Error?) -> Void)
```

Get spam check

Get the detailed result of a specific spam check. Currently available to beta accounts only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let checkId = "checkId_example" // String | Spam check UUID

// Get spam check
SpamChecksAPI.getSpamCheck(checkId: checkId) { (response, error) in
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
 **checkId** | **String** | Spam check UUID | 

### Return type

[**RunSpamCheck201Response**](RunSpamCheck201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSpamChecks**
```swift
    open class func listSpamChecks(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ListSpamChecks200Response?, _ error: Error?) -> Void)
```

List spam checks

List past spam check results with pagination. Currently available to beta accounts only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List spam checks
SpamChecksAPI.listSpamChecks(page: page, perPage: perPage) { (response, error) in
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
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**ListSpamChecks200Response**](ListSpamChecks200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runSpamCheck**
```swift
    open class func runSpamCheck(runSpamCheckRequest: RunSpamCheckRequest, completion: @escaping (_ data: RunSpamCheck201Response?, _ error: Error?) -> Void)
```

Run spam check

Run backend spam checks on email sending parameters. Checks domain reputation, link safety, and subject line quality. Currently available to beta accounts only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let runSpamCheckRequest = runSpamCheck_request(fromDomain: "fromDomain_example", links: ["links_example"], subjectPreview: "subjectPreview_example", clientScores: 123) // RunSpamCheckRequest | 

// Run spam check
SpamChecksAPI.runSpamCheck(runSpamCheckRequest: runSpamCheckRequest) { (response, error) in
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
 **runSpamCheckRequest** | [**RunSpamCheckRequest**](RunSpamCheckRequest.md) |  | 

### Return type

[**RunSpamCheck201Response**](RunSpamCheck201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

