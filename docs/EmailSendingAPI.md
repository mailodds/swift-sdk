# EmailSendingAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deliverBatch**](EmailSendingAPI.md#deliverbatch) | **POST** /v1/deliver/batch | Send to multiple recipients (max 100)
[**deliverEmail**](EmailSendingAPI.md#deliveremail) | **POST** /v1/deliver | Send a single email


# **deliverBatch**
```swift
    open class func deliverBatch(batchDeliverRequest: BatchDeliverRequest, completion: @escaping (_ data: BatchDeliverResponse?, _ error: Error?) -> Void)
```

Send to multiple recipients (max 100)

Send a single message to up to 100 recipients. Shares the same message body across all recipients. Each recipient is processed independently.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let batchDeliverRequest = BatchDeliverRequest(to: ["to_example"], from: "from_example", subject: "subject_example", html: "html_example", text: "text_example", domainId: "domainId_example", replyTo: "replyTo_example", headers: 123, tags: ["tags_example"], campaignType: "campaignType_example", structuredData: BatchDeliverRequest_structured_data(), options: 123) // BatchDeliverRequest | 

// Send to multiple recipients (max 100)
EmailSendingAPI.deliverBatch(batchDeliverRequest: batchDeliverRequest) { (response, error) in
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
 **batchDeliverRequest** | [**BatchDeliverRequest**](BatchDeliverRequest.md) |  | 

### Return type

[**BatchDeliverResponse**](BatchDeliverResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deliverEmail**
```swift
    open class func deliverEmail(deliverRequest: DeliverRequest, completion: @escaping (_ data: DeliverResponse?, _ error: Error?) -> Void)
```

Send a single email

Send a transactional email through the safety pipeline. Validates recipients, checks domain ownership, and queues for delivery. Requires a verified sending domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let deliverRequest = DeliverRequest(to: [DeliverRequest_to_inner(email: "email_example", name: "name_example")], from: "from_example", subject: "subject_example", html: "html_example", text: "text_example", domainId: "domainId_example", replyTo: "replyTo_example", headers: 123, tags: ["tags_example"], campaignType: "campaignType_example", structuredData: DeliverRequest_structured_data(), options: DeliverRequest_options(validateFirst: false)) // DeliverRequest | 

// Send a single email
EmailSendingAPI.deliverEmail(deliverRequest: deliverRequest) { (response, error) in
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
 **deliverRequest** | [**DeliverRequest**](DeliverRequest.md) |  | 

### Return type

[**DeliverResponse**](DeliverResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

