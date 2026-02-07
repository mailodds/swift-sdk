# SystemAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTelemetrySummary**](SystemAPI.md#gettelemetrysummary) | **GET** /v1/telemetry/summary | Get validation telemetry
[**healthCheck**](SystemAPI.md#healthcheck) | **GET** /health | Health check


# **getTelemetrySummary**
```swift
    open class func getTelemetrySummary(window: Window_getTelemetrySummary? = nil, completion: @escaping (_ data: TelemetrySummary?, _ error: Error?) -> Void)
```

Get validation telemetry

Get validation metrics for your account. Useful for building dashboards and monitoring. Supports ETag caching.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let window = "window_example" // String | Time window for metrics (optional) (default to ._24h)

// Get validation telemetry
SystemAPI.getTelemetrySummary(window: window) { (response, error) in
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
 **window** | **String** | Time window for metrics | [optional] [default to ._24h]

### Return type

[**TelemetrySummary**](TelemetrySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthCheck**
```swift
    open class func healthCheck(completion: @escaping (_ data: HealthCheck200Response?, _ error: Error?) -> Void)
```

Health check

Check API health status. No authentication required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Health check
SystemAPI.healthCheck() { (response, error) in
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

[**HealthCheck200Response**](HealthCheck200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

