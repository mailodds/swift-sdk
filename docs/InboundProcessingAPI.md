# InboundProcessingAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correctInboundMessage**](InboundProcessingAPI.md#correctinboundmessage) | **PATCH** /v1/inbound-messages/{message_id}/correction | Correct inbound message classification
[**getBounceStats**](InboundProcessingAPI.md#getbouncestats) | **GET** /v1/bounce-stats | Get bounce statistics
[**getBounceStatsSummary**](InboundProcessingAPI.md#getbouncestatssummary) | **GET** /v1/bounce-stats/summary | Get bounce statistics summary
[**getComplaintAssessment**](InboundProcessingAPI.md#getcomplaintassessment) | **GET** /v1/complaint-assessment | Get complaint assessment
[**getInboundMessage**](InboundProcessingAPI.md#getinboundmessage) | **GET** /v1/inbound-messages/{message_id} | Get inbound message
[**listInboundMessages**](InboundProcessingAPI.md#listinboundmessages) | **GET** /v1/inbound-messages | List inbound messages


# **correctInboundMessage**
```swift
    open class func correctInboundMessage(messageId: String, correctInboundMessageRequest: CorrectInboundMessageRequest, completion: @escaping (_ data: GetInboundMessage200Response?, _ error: Error?) -> Void)
```

Correct inbound message classification

Submit a human correction for an inbound message classification. Requires Pro+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let messageId = "messageId_example" // String | 
let correctInboundMessageRequest = correctInboundMessage_request(correction: "correction_example") // CorrectInboundMessageRequest | 

// Correct inbound message classification
InboundProcessingAPI.correctInboundMessage(messageId: messageId, correctInboundMessageRequest: correctInboundMessageRequest) { (response, error) in
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
 **messageId** | **String** |  | 
 **correctInboundMessageRequest** | [**CorrectInboundMessageRequest**](CorrectInboundMessageRequest.md) |  | 

### Return type

[**GetInboundMessage200Response**](GetInboundMessage200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBounceStats**
```swift
    open class func getBounceStats(domainId: String? = nil, period: Period_getBounceStats? = nil, groupBy: GroupBy_getBounceStats? = nil, completion: @escaping (_ data: GetBounceStats200Response?, _ error: Error?) -> Void)
```

Get bounce statistics

Get bounce and complaint statistics grouped by time period. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | Filter by sending domain ID (optional)
let period = "period_example" // String | Time period (optional) (default to ._7d)
let groupBy = "groupBy_example" // String | Grouping interval (optional) (default to .day)

// Get bounce statistics
InboundProcessingAPI.getBounceStats(domainId: domainId, period: period, groupBy: groupBy) { (response, error) in
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
 **domainId** | **String** | Filter by sending domain ID | [optional] 
 **period** | **String** | Time period | [optional] [default to ._7d]
 **groupBy** | **String** | Grouping interval | [optional] [default to .day]

### Return type

[**GetBounceStats200Response**](GetBounceStats200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBounceStatsSummary**
```swift
    open class func getBounceStatsSummary(domainId: String? = nil, period: Period_getBounceStatsSummary? = nil, completion: @escaping (_ data: GetBounceStatsSummary200Response?, _ error: Error?) -> Void)
```

Get bounce statistics summary

Get aggregated bounce and complaint statistics. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | Filter by sending domain ID (optional)
let period = "period_example" // String | Time period (optional) (default to ._30d)

// Get bounce statistics summary
InboundProcessingAPI.getBounceStatsSummary(domainId: domainId, period: period) { (response, error) in
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
 **domainId** | **String** | Filter by sending domain ID | [optional] 
 **period** | **String** | Time period | [optional] [default to ._30d]

### Return type

[**GetBounceStatsSummary200Response**](GetBounceStatsSummary200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComplaintAssessment**
```swift
    open class func getComplaintAssessment(domainId: String? = nil, period: Period_getComplaintAssessment? = nil, completion: @escaping (_ data: GetComplaintAssessment200Response?, _ error: Error?) -> Void)
```

Get complaint assessment

Assess complaint risk based on recent inbound data. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | Filter by sending domain ID (optional)
let period = "period_example" // String | Time period (optional) (default to ._30d)

// Get complaint assessment
InboundProcessingAPI.getComplaintAssessment(domainId: domainId, period: period) { (response, error) in
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
 **domainId** | **String** | Filter by sending domain ID | [optional] 
 **period** | **String** | Time period | [optional] [default to ._30d]

### Return type

[**GetComplaintAssessment200Response**](GetComplaintAssessment200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboundMessage**
```swift
    open class func getInboundMessage(messageId: String, completion: @escaping (_ data: GetInboundMessage200Response?, _ error: Error?) -> Void)
```

Get inbound message

Get a single inbound message with full body content. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let messageId = "messageId_example" // String | 

// Get inbound message
InboundProcessingAPI.getInboundMessage(messageId: messageId) { (response, error) in
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
 **messageId** | **String** |  | 

### Return type

[**GetInboundMessage200Response**](GetInboundMessage200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInboundMessages**
```swift
    open class func listInboundMessages(category: Category_listInboundMessages? = nil, domainId: String? = nil, since: Date? = nil, until: Date? = nil, isRead: Bool? = nil, recipient: String? = nil, search: String? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ListInboundMessages200Response?, _ error: Error?) -> Void)
```

List inbound messages

List inbound messages (bounces, complaints, replies, OOO). Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let category = "category_example" // String | Filter by category (optional)
let domainId = "domainId_example" // String | Filter by sending domain ID (optional)
let since = Date() // Date | Start date (ISO 8601) (optional)
let until = Date() // Date | End date (ISO 8601) (optional)
let isRead = true // Bool | Filter by read status (optional)
let recipient = "recipient_example" // String | Filter by original recipient (optional)
let search = "search_example" // String | Search in subject and body (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 50)

// List inbound messages
InboundProcessingAPI.listInboundMessages(category: category, domainId: domainId, since: since, until: until, isRead: isRead, recipient: recipient, search: search, page: page, perPage: perPage) { (response, error) in
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
 **category** | **String** | Filter by category | [optional] 
 **domainId** | **String** | Filter by sending domain ID | [optional] 
 **since** | **Date** | Start date (ISO 8601) | [optional] 
 **until** | **Date** | End date (ISO 8601) | [optional] 
 **isRead** | **Bool** | Filter by read status | [optional] 
 **recipient** | **String** | Filter by original recipient | [optional] 
 **search** | **String** | Search in subject and body | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 50]

### Return type

[**ListInboundMessages200Response**](ListInboundMessages200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

