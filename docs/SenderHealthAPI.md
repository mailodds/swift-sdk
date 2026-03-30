# SenderHealthAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSenderHealth**](SenderHealthAPI.md#getsenderhealth) | **GET** /v1/sender-health | Get sender health score
[**getSenderHealthTrend**](SenderHealthAPI.md#getsenderhealthtrend) | **GET** /v1/sender-health/trend | Get sender health trend


# **getSenderHealth**
```swift
    open class func getSenderHealth(period: Period_getSenderHealth? = nil, completion: @escaping (_ data: GetSenderHealth200Response?, _ error: Error?) -> Void)
```

Get sender health score

Get an aggregate sender health score (0-100) across all sending domains. Factors in delivery rate, bounce rate, complaint rate, and authentication status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let period = "period_example" // String | Time period for health calculation (optional) (default to ._30d)

// Get sender health score
SenderHealthAPI.getSenderHealth(period: period) { (response, error) in
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
 **period** | **String** | Time period for health calculation | [optional] [default to ._30d]

### Return type

[**GetSenderHealth200Response**](GetSenderHealth200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSenderHealthTrend**
```swift
    open class func getSenderHealthTrend(period: Period_getSenderHealthTrend? = nil, completion: @escaping (_ data: GetSenderHealthTrend200Response?, _ error: Error?) -> Void)
```

Get sender health trend

Get historical sender health scores over time for trend analysis. Returns daily data points for the requested period.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let period = "period_example" // String | Time period for trend data (optional) (default to ._30d)

// Get sender health trend
SenderHealthAPI.getSenderHealthTrend(period: period) { (response, error) in
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
 **period** | **String** | Time period for trend data | [optional] [default to ._30d]

### Return type

[**GetSenderHealthTrend200Response**](GetSenderHealthTrend200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

