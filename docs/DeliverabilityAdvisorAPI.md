# DeliverabilityAdvisorAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dismissDeliverabilityRecommendation**](DeliverabilityAdvisorAPI.md#dismissdeliverabilityrecommendation) | **POST** /v1/deliverability/recommendations/{recommendation_id}/dismiss | Dismiss a deliverability recommendation
[**getDeliverabilityRecommendations**](DeliverabilityAdvisorAPI.md#getdeliverabilityrecommendations) | **GET** /v1/deliverability/recommendations | Get deliverability recommendations


# **dismissDeliverabilityRecommendation**
```swift
    open class func dismissDeliverabilityRecommendation(recommendationId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Dismiss a deliverability recommendation

Dismiss a deliverability recommendation so it no longer appears.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let recommendationId = "recommendationId_example" // String | 

// Dismiss a deliverability recommendation
DeliverabilityAdvisorAPI.dismissDeliverabilityRecommendation(recommendationId: recommendationId) { (response, error) in
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
 **recommendationId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliverabilityRecommendations**
```swift
    open class func getDeliverabilityRecommendations(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get deliverability recommendations

Retrieve actionable deliverability recommendations for the account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Get deliverability recommendations
DeliverabilityAdvisorAPI.getDeliverabilityRecommendations() { (response, error) in
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

