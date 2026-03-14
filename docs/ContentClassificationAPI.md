# ContentClassificationAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classifyContent**](ContentClassificationAPI.md#classifycontent) | **POST** /v1/content-check | Classify email content


# **classifyContent**
```swift
    open class func classifyContent(classifyContentRequest: ClassifyContentRequest, completion: @escaping (_ data: ClassifyContent200Response?, _ error: Error?) -> Void)
```

Classify email content

Run LLM-powered content analysis on email content. Detects spam signals, compliance issues, and content quality. Provide either subject+html_body or raw content text.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let classifyContentRequest = classifyContent_request(subject: "subject_example", htmlBody: "htmlBody_example", content: "content_example") // ClassifyContentRequest | 

// Classify email content
ContentClassificationAPI.classifyContent(classifyContentRequest: classifyContentRequest) { (response, error) in
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
 **classifyContentRequest** | [**ClassifyContentRequest**](ClassifyContentRequest.md) |  | 

### Return type

[**ClassifyContent200Response**](ClassifyContent200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

