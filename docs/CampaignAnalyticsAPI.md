# CampaignAnalyticsAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCampaignABResults**](CampaignAnalyticsAPI.md#getcampaignabresults) | **GET** /v1/campaigns/{campaign_id}/ab-results | Get A/B test results
[**getCampaignAttribution**](CampaignAnalyticsAPI.md#getcampaignattribution) | **GET** /v1/campaigns/{campaign_id}/conversions/attribution | Get campaign attribution
[**getCampaignDeliveryConfidence**](CampaignAnalyticsAPI.md#getcampaigndeliveryconfidence) | **GET** /v1/campaigns/{campaign_id}/delivery-confidence | Get pre-send delivery confidence
[**getCampaignFunnel**](CampaignAnalyticsAPI.md#getcampaignfunnel) | **GET** /v1/campaigns/{campaign_id}/funnel | Get campaign funnel
[**getCampaignProviderIntelligence**](CampaignAnalyticsAPI.md#getcampaignproviderintelligence) | **GET** /v1/campaigns/{campaign_id}/provider-intelligence | Get provider intelligence


# **getCampaignABResults**
```swift
    open class func getCampaignABResults(campaignId: String, completion: @escaping (_ data: GetCampaignABResults200Response?, _ error: Error?) -> Void)
```

Get A/B test results

Get per-variant performance metrics for an A/B test campaign including open rate, click rate, and statistical confidence.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID

// Get A/B test results
CampaignAnalyticsAPI.getCampaignABResults(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 

### Return type

[**GetCampaignABResults200Response**](GetCampaignABResults200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignAttribution**
```swift
    open class func getCampaignAttribution(campaignId: String, completion: @escaping (_ data: GetCampaignAttribution200Response?, _ error: Error?) -> Void)
```

Get campaign attribution

Get first-touch and last-touch attribution comparison for campaign conversions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID

// Get campaign attribution
CampaignAnalyticsAPI.getCampaignAttribution(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 

### Return type

[**GetCampaignAttribution200Response**](GetCampaignAttribution200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignDeliveryConfidence**
```swift
    open class func getCampaignDeliveryConfidence(campaignId: String, completion: @escaping (_ data: GetCampaignDeliveryConfidence200Response?, _ error: Error?) -> Void)
```

Get pre-send delivery confidence

Get a predicted delivery confidence score before sending a campaign. Evaluates list quality, sender reputation, and domain authentication.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID

// Get pre-send delivery confidence
CampaignAnalyticsAPI.getCampaignDeliveryConfidence(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 

### Return type

[**GetCampaignDeliveryConfidence200Response**](GetCampaignDeliveryConfidence200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignFunnel**
```swift
    open class func getCampaignFunnel(campaignId: String, completion: @escaping (_ data: GetCampaignFunnel200Response?, _ error: Error?) -> Void)
```

Get campaign funnel

Get the full delivery and engagement funnel for a campaign showing progression from sent through delivered, opened, and clicked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID

// Get campaign funnel
CampaignAnalyticsAPI.getCampaignFunnel(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 

### Return type

[**GetCampaignFunnel200Response**](GetCampaignFunnel200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignProviderIntelligence**
```swift
    open class func getCampaignProviderIntelligence(campaignId: String, completion: @escaping (_ data: GetCampaignProviderIntelligence200Response?, _ error: Error?) -> Void)
```

Get provider intelligence

Get per-provider delivery and engagement breakdown for a campaign (e.g. Gmail, Outlook, Yahoo).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID

// Get provider intelligence
CampaignAnalyticsAPI.getCampaignProviderIntelligence(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 

### Return type

[**GetCampaignProviderIntelligence200Response**](GetCampaignProviderIntelligence200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

