# DMARCMonitoringAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDmarcDomain**](DMARCMonitoringAPI.md#adddmarcdomain) | **POST** /v1/dmarc-domains | Add DMARC domain
[**getDmarcDomain**](DMARCMonitoringAPI.md#getdmarcdomain) | **GET** /v1/dmarc-domains/{domain_id} | Get DMARC domain
[**getDmarcRecommendation**](DMARCMonitoringAPI.md#getdmarcrecommendation) | **GET** /v1/dmarc-domains/{domain_id}/recommendation | Get DMARC policy recommendation
[**getDmarcSources**](DMARCMonitoringAPI.md#getdmarcsources) | **GET** /v1/dmarc-domains/{domain_id}/sources | Get DMARC sending sources
[**getDmarcTrend**](DMARCMonitoringAPI.md#getdmarctrend) | **GET** /v1/dmarc-domains/{domain_id}/trend | Get DMARC trend
[**listDmarcDomains**](DMARCMonitoringAPI.md#listdmarcdomains) | **GET** /v1/dmarc-domains | List DMARC domains
[**verifyDmarcDomain**](DMARCMonitoringAPI.md#verifydmarcdomain) | **POST** /v1/dmarc-domains/{domain_id}/verify | Verify DMARC DNS records


# **addDmarcDomain**
```swift
    open class func addDmarcDomain(addDmarcDomainRequest: AddDmarcDomainRequest, completion: @escaping (_ data: AddDmarcDomain201Response?, _ error: Error?) -> Void)
```

Add DMARC domain

Add a domain for DMARC monitoring. A unique reporting address is generated for receiving aggregate DMARC reports.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let addDmarcDomainRequest = addDmarcDomain_request(domain: "domain_example") // AddDmarcDomainRequest | 

// Add DMARC domain
DMARCMonitoringAPI.addDmarcDomain(addDmarcDomainRequest: addDmarcDomainRequest) { (response, error) in
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
 **addDmarcDomainRequest** | [**AddDmarcDomainRequest**](AddDmarcDomainRequest.md) |  | 

### Return type

[**AddDmarcDomain201Response**](AddDmarcDomain201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDmarcDomain**
```swift
    open class func getDmarcDomain(domainId: String, days: Int? = nil, completion: @escaping (_ data: GetDmarcDomain200Response?, _ error: Error?) -> Void)
```

Get DMARC domain

Get a single DMARC domain with summary statistics including pass/fail rates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | DMARC domain UUID
let days = 987 // Int | Number of days for summary stats (optional) (default to 30)

// Get DMARC domain
DMARCMonitoringAPI.getDmarcDomain(domainId: domainId, days: days) { (response, error) in
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
 **domainId** | **String** | DMARC domain UUID | 
 **days** | **Int** | Number of days for summary stats | [optional] [default to 30]

### Return type

[**GetDmarcDomain200Response**](GetDmarcDomain200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDmarcRecommendation**
```swift
    open class func getDmarcRecommendation(domainId: String, completion: @escaping (_ data: GetDmarcRecommendation200Response?, _ error: Error?) -> Void)
```

Get DMARC policy recommendation

Get a recommendation for upgrading the domain's DMARC policy based on alignment data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | DMARC domain UUID

// Get DMARC policy recommendation
DMARCMonitoringAPI.getDmarcRecommendation(domainId: domainId) { (response, error) in
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
 **domainId** | **String** | DMARC domain UUID | 

### Return type

[**GetDmarcRecommendation200Response**](GetDmarcRecommendation200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDmarcSources**
```swift
    open class func getDmarcSources(domainId: String, days: Int? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: GetDmarcSources200Response?, _ error: Error?) -> Void)
```

Get DMARC sending sources

Get sending IPs that have sent email for this domain with their DKIM/SPF alignment status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | DMARC domain UUID
let days = 987 // Int | Number of days to look back (optional) (default to 30)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// Get DMARC sending sources
DMARCMonitoringAPI.getDmarcSources(domainId: domainId, days: days, page: page, perPage: perPage) { (response, error) in
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
 **domainId** | **String** | DMARC domain UUID | 
 **days** | **Int** | Number of days to look back | [optional] [default to 30]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**GetDmarcSources200Response**](GetDmarcSources200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDmarcTrend**
```swift
    open class func getDmarcTrend(domainId: String, days: Int? = nil, completion: @escaping (_ data: GetDmarcTrend200Response?, _ error: Error?) -> Void)
```

Get DMARC trend

Get daily pass/fail trend data for DMARC authentication over the specified period.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | DMARC domain UUID
let days = 987 // Int | Number of days of trend data (optional) (default to 30)

// Get DMARC trend
DMARCMonitoringAPI.getDmarcTrend(domainId: domainId, days: days) { (response, error) in
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
 **domainId** | **String** | DMARC domain UUID | 
 **days** | **Int** | Number of days of trend data | [optional] [default to 30]

### Return type

[**GetDmarcTrend200Response**](GetDmarcTrend200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDmarcDomains**
```swift
    open class func listDmarcDomains(completion: @escaping (_ data: ListDmarcDomains200Response?, _ error: Error?) -> Void)
```

List DMARC domains

List all domains being monitored for DMARC compliance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List DMARC domains
DMARCMonitoringAPI.listDmarcDomains() { (response, error) in
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

[**ListDmarcDomains200Response**](ListDmarcDomains200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyDmarcDomain**
```swift
    open class func verifyDmarcDomain(domainId: String, completion: @escaping (_ data: AddDmarcDomain201Response?, _ error: Error?) -> Void)
```

Verify DMARC DNS records

Check that the domain has the correct DMARC TXT record pointing to the MailOdds reporting address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | DMARC domain UUID

// Verify DMARC DNS records
DMARCMonitoringAPI.verifyDmarcDomain(domainId: domainId) { (response, error) in
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
 **domainId** | **String** | DMARC domain UUID | 

### Return type

[**AddDmarcDomain201Response**](AddDmarcDomain201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

