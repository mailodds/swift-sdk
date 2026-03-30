# ServerTestsAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getServerTest**](ServerTestsAPI.md#getservertest) | **GET** /v1/server-tests/{test_id} | Get server test
[**listServerTests**](ServerTestsAPI.md#listservertests) | **GET** /v1/server-tests | List server tests
[**runServerTest**](ServerTestsAPI.md#runservertest) | **POST** /v1/server-tests | Run server test


# **getServerTest**
```swift
    open class func getServerTest(testId: String, completion: @escaping (_ data: RunServerTest201Response?, _ error: Error?) -> Void)
```

Get server test

Get the detailed results of a specific server test.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let testId = "testId_example" // String | 

// Get server test
ServerTestsAPI.getServerTest(testId: testId) { (response, error) in
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
 **testId** | **String** |  | 

### Return type

[**RunServerTest201Response**](RunServerTest201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listServerTests**
```swift
    open class func listServerTests(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ListServerTests200Response?, _ error: Error?) -> Void)
```

List server tests

List past server test results with pagination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List server tests
ServerTestsAPI.listServerTests(page: page, perPage: perPage) { (response, error) in
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

[**ListServerTests200Response**](ListServerTests200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runServerTest**
```swift
    open class func runServerTest(runServerTestRequest: RunServerTestRequest, completion: @escaping (_ data: RunServerTest201Response?, _ error: Error?) -> Void)
```

Run server test

Run an SMTP handshake test and MX configuration audit for a domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let runServerTestRequest = runServerTest_request(domain: "domain_example") // RunServerTestRequest | 

// Run server test
ServerTestsAPI.runServerTest(runServerTestRequest: runServerTestRequest) { (response, error) in
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
 **runServerTestRequest** | [**RunServerTestRequest**](RunServerTestRequest.md) |  | 

### Return type

[**RunServerTest201Response**](RunServerTest201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

