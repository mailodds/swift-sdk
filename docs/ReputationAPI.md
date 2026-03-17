# ReputationAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getReputation**](ReputationAPI.md#getreputation) | **GET** /v1/reputation | Get account reputation
[**getReputationTimeline**](ReputationAPI.md#getreputationtimeline) | **GET** /v1/reputation/timeline | Get reputation timeline


# **getReputation**
```swift
    open class func getReputation(period: Period_getReputation? = nil, completion: @escaping (_ data: GetReputation200Response?, _ error: Error?) -> Void)
```

Get account reputation

Get the aggregate reputation score and breakdown for the account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let period = "period_example" // String | Evaluation period (optional) (default to ._7d)

// Get account reputation
ReputationAPI.getReputation(period: period) { (response, error) in
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
 **period** | **String** | Evaluation period | [optional] [default to ._7d]

### Return type

[**GetReputation200Response**](GetReputation200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReputationTimeline**
```swift
    open class func getReputationTimeline(period: Period_getReputationTimeline? = nil, completion: @escaping (_ data: GetReputationTimeline200Response?, _ error: Error?) -> Void)
```

Get reputation timeline

Get reputation metrics over time.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let period = "period_example" // String | Timeline period (optional) (default to ._30d)

// Get reputation timeline
ReputationAPI.getReputationTimeline(period: period) { (response, error) in
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
 **period** | **String** | Timeline period | [optional] [default to ._30d]

### Return type

[**GetReputationTimeline200Response**](GetReputationTimeline200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

