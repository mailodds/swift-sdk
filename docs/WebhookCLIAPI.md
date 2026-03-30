# WebhookCLIAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhookCliSession**](WebhookCLIAPI.md#createwebhookclisession) | **POST** /v1/webhook-cli/sessions | Create CLI forwarding session
[**deleteWebhookCliSession**](WebhookCLIAPI.md#deletewebhookclisession) | **DELETE** /v1/webhook-cli/sessions/{session_id} | Close CLI session
[**listWebhookDeliveries**](WebhookCLIAPI.md#listwebhookdeliveries) | **GET** /v1/webhook-cli/deliveries | List recent webhook deliveries
[**replayWebhookDelivery**](WebhookCLIAPI.md#replaywebhookdelivery) | **POST** /v1/webhook-cli/deliveries/{delivery_id}/replay | Replay webhook delivery


# **createWebhookCliSession**
```swift
    open class func createWebhookCliSession(createWebhookCliSessionRequest: CreateWebhookCliSessionRequest? = nil, completion: @escaping (_ data: CreateWebhookCliSession201Response?, _ error: Error?) -> Void)
```

Create CLI forwarding session

Register a new session for receiving webhook events via SSE.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createWebhookCliSessionRequest = createWebhookCliSession_request(forwardUrl: "forwardUrl_example") // CreateWebhookCliSessionRequest |  (optional)

// Create CLI forwarding session
WebhookCLIAPI.createWebhookCliSession(createWebhookCliSessionRequest: createWebhookCliSessionRequest) { (response, error) in
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
 **createWebhookCliSessionRequest** | [**CreateWebhookCliSessionRequest**](CreateWebhookCliSessionRequest.md) |  | [optional] 

### Return type

[**CreateWebhookCliSession201Response**](CreateWebhookCliSession201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhookCliSession**
```swift
    open class func deleteWebhookCliSession(sessionId: String, completion: @escaping (_ data: DeleteWebhookCliSession200Response?, _ error: Error?) -> Void)
```

Close CLI session

Close a webhook CLI forwarding session.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let sessionId = "sessionId_example" // String | 

// Close CLI session
WebhookCLIAPI.deleteWebhookCliSession(sessionId: sessionId) { (response, error) in
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
 **sessionId** | **String** |  | 

### Return type

[**DeleteWebhookCliSession200Response**](DeleteWebhookCliSession200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWebhookDeliveries**
```swift
    open class func listWebhookDeliveries(limit: Int? = nil, completion: @escaping (_ data: ListWebhookDeliveries200Response?, _ error: Error?) -> Void)
```

List recent webhook deliveries

List recent webhook deliveries for replay.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let limit = 987 // Int | Maximum deliveries to return (optional) (default to 50)

// List recent webhook deliveries
WebhookCLIAPI.listWebhookDeliveries(limit: limit) { (response, error) in
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
 **limit** | **Int** | Maximum deliveries to return | [optional] [default to 50]

### Return type

[**ListWebhookDeliveries200Response**](ListWebhookDeliveries200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replayWebhookDelivery**
```swift
    open class func replayWebhookDelivery(deliveryId: Int, completion: @escaping (_ data: ReplayWebhookDelivery200Response?, _ error: Error?) -> Void)
```

Replay webhook delivery

Replay a historical webhook delivery to active CLI sessions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let deliveryId = 987 // Int | 

// Replay webhook delivery
WebhookCLIAPI.replayWebhookDelivery(deliveryId: deliveryId) { (response, error) in
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
 **deliveryId** | **Int** |  | 

### Return type

[**ReplayWebhookDelivery200Response**](ReplayWebhookDelivery200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

