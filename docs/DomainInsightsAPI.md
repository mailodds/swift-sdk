# DomainInsightsAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDomainHookEffectiveness**](DomainInsightsAPI.md#getdomainhookeffectiveness) | **GET** /v1/sending-domains/{domain_id}/insights/hook-effectiveness | Get hook effectiveness metrics
[**getDomainInsightsFunnel**](DomainInsightsAPI.md#getdomaininsightsfunnel) | **GET** /v1/sending-domains/{domain_id}/insights/funnel | Get domain engagement funnel
[**getDomainInsightsTrends**](DomainInsightsAPI.md#getdomaininsightstrends) | **GET** /v1/sending-domains/{domain_id}/insights/trends | Get domain engagement trends


# **getDomainHookEffectiveness**
```swift
    open class func getDomainHookEffectiveness(domainId: String, days: Int? = nil, completion: @escaping (_ data: GetDomainHookEffectiveness200Response?, _ error: Error?) -> Void)
```

Get hook effectiveness metrics

Get webhook delivery effectiveness metrics for a sending domain. Requires Pro+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | Sending domain ID
let days = 987 // Int | Lookback period in days (optional) (default to 30)

// Get hook effectiveness metrics
DomainInsightsAPI.getDomainHookEffectiveness(domainId: domainId, days: days) { (response, error) in
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
 **domainId** | **String** | Sending domain ID | 
 **days** | **Int** | Lookback period in days | [optional] [default to 30]

### Return type

[**GetDomainHookEffectiveness200Response**](GetDomainHookEffectiveness200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomainInsightsFunnel**
```swift
    open class func getDomainInsightsFunnel(domainId: String, days: Int? = nil, completion: @escaping (_ data: GetDomainInsightsFunnel200Response?, _ error: Error?) -> Void)
```

Get domain engagement funnel

Get engagement funnel for a sending domain (sent > delivered > opened > clicked > converted). Requires Pro+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | Sending domain ID
let days = 987 // Int | Lookback period in days (optional) (default to 30)

// Get domain engagement funnel
DomainInsightsAPI.getDomainInsightsFunnel(domainId: domainId, days: days) { (response, error) in
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
 **domainId** | **String** | Sending domain ID | 
 **days** | **Int** | Lookback period in days | [optional] [default to 30]

### Return type

[**GetDomainInsightsFunnel200Response**](GetDomainInsightsFunnel200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomainInsightsTrends**
```swift
    open class func getDomainInsightsTrends(domainId: String, days: Int? = nil, completion: @escaping (_ data: GetDomainInsightsTrends200Response?, _ error: Error?) -> Void)
```

Get domain engagement trends

Get daily engagement trend data for a sending domain. Requires Pro+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | Sending domain ID
let days = 987 // Int | Lookback period in days (optional) (default to 30)

// Get domain engagement trends
DomainInsightsAPI.getDomainInsightsTrends(domainId: domainId, days: days) { (response, error) in
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
 **domainId** | **String** | Sending domain ID | 
 **days** | **Int** | Lookback period in days | [optional] [default to 30]

### Return type

[**GetDomainInsightsTrends200Response**](GetDomainInsightsTrends200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

