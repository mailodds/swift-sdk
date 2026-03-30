# MessageEventsAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMessageEvents**](MessageEventsAPI.md#getmessageevents) | **GET** /v1/message-events | Get message events


# **getMessageEvents**
```swift
    open class func getMessageEvents(messageId: String, completion: @escaping (_ data: GetMessageEvents200Response?, _ error: Error?) -> Void)
```

Get message events

Get delivery and engagement events for a specific sent message. Returns events in chronological order with bot detection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let messageId = "messageId_example" // String | UUID of the sent message

// Get message events
MessageEventsAPI.getMessageEvents(messageId: messageId) { (response, error) in
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
 **messageId** | **String** | UUID of the sent message | 

### Return type

[**GetMessageEvents200Response**](GetMessageEvents200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

