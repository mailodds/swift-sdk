# EventsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trackEvent**](EventsAPI.md#trackevent) | **POST** /v1/events/track | Track a commerce event


# **trackEvent**
```swift
    open class func trackEvent(trackEventRequest: TrackEventRequest, completion: @escaping (_ data: TrackEventResponse?, _ error: Error?) -> Void)
```

Track a commerce event

Ingest a commerce event (purchase, cart abandonment, browse, wishlist, review, etc.). Supports idempotency via the idempotency_key field (5 minute Redis TTL + DB unique constraint).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let trackEventRequest = TrackEventRequest(eventType: "eventType_example", email: "email_example", properties: 123, occurredAt: Date(), idempotencyKey: "idempotencyKey_example") // TrackEventRequest | 

// Track a commerce event
EventsAPI.trackEvent(trackEventRequest: trackEventRequest) { (response, error) in
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
 **trackEventRequest** | [**TrackEventRequest**](TrackEventRequest.md) |  | 

### Return type

[**TrackEventResponse**](TrackEventResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

