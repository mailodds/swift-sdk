# SendingDomainsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSendingDomain**](SendingDomainsAPI.md#createsendingdomain) | **POST** /v1/sending-domains | Add a sending domain
[**deleteSendingDomain**](SendingDomainsAPI.md#deletesendingdomain) | **DELETE** /v1/sending-domains/{domain_id} | Delete a sending domain
[**getSendingDomain**](SendingDomainsAPI.md#getsendingdomain) | **GET** /v1/sending-domains/{domain_id} | Get a sending domain
[**getSendingDomainIdentityScore**](SendingDomainsAPI.md#getsendingdomainidentityscore) | **GET** /v1/sending-domains/{domain_id}/identity-score | Get domain identity score
[**getSendingStats**](SendingDomainsAPI.md#getsendingstats) | **GET** /v1/sending-stats | Get sending statistics
[**listSendingDomains**](SendingDomainsAPI.md#listsendingdomains) | **GET** /v1/sending-domains | List sending domains
[**verifySendingDomain**](SendingDomainsAPI.md#verifysendingdomain) | **POST** /v1/sending-domains/{domain_id}/verify | Verify domain DNS records


# **createSendingDomain**
```swift
    open class func createSendingDomain(createSendingDomainRequest: CreateSendingDomainRequest, completion: @escaping (_ data: CreateSendingDomain201Response?, _ error: Error?) -> Void)
```

Add a sending domain

Register a new sending domain with NS delegation. After adding, configure DNS records and verify.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createSendingDomainRequest = createSendingDomain_request(domain: "domain_example") // CreateSendingDomainRequest | 

// Add a sending domain
SendingDomainsAPI.createSendingDomain(createSendingDomainRequest: createSendingDomainRequest) { (response, error) in
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
 **createSendingDomainRequest** | [**CreateSendingDomainRequest**](CreateSendingDomainRequest.md) |  | 

### Return type

[**CreateSendingDomain201Response**](CreateSendingDomain201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSendingDomain**
```swift
    open class func deleteSendingDomain(domainId: String, completion: @escaping (_ data: DeletePolicyRule200Response?, _ error: Error?) -> Void)
```

Delete a sending domain

Permanently remove a sending domain from the account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Delete a sending domain
SendingDomainsAPI.deleteSendingDomain(domainId: domainId) { (response, error) in
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
 **domainId** | **String** |  | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSendingDomain**
```swift
    open class func getSendingDomain(domainId: String, completion: @escaping (_ data: CreateSendingDomain201Response?, _ error: Error?) -> Void)
```

Get a sending domain

Get details of a specific sending domain including DNS verification status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Get a sending domain
SendingDomainsAPI.getSendingDomain(domainId: domainId) { (response, error) in
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
 **domainId** | **String** |  | 

### Return type

[**CreateSendingDomain201Response**](CreateSendingDomain201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSendingDomainIdentityScore**
```swift
    open class func getSendingDomainIdentityScore(domainId: String, completion: @escaping (_ data: GetSendingDomainIdentityScore200Response?, _ error: Error?) -> Void)
```

Get domain identity score

Get a composite DNS health score for the sending domain, checking DKIM, SPF, DMARC, MX, and return path configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Get domain identity score
SendingDomainsAPI.getSendingDomainIdentityScore(domainId: domainId) { (response, error) in
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
 **domainId** | **String** |  | 

### Return type

[**GetSendingDomainIdentityScore200Response**](GetSendingDomainIdentityScore200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSendingStats**
```swift
    open class func getSendingStats(period: Period_getSendingStats? = nil, domainId: String? = nil, completion: @escaping (_ data: GetSendingStats200Response?, _ error: Error?) -> Void)
```

Get sending statistics

Get aggregate sending statistics across all domains for the account, including delivery rates, open rates, and click rates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let period = "period_example" // String | Time period (optional) (default to ._7d)
let domainId = "domainId_example" // String | Filter by domain (optional)

// Get sending statistics
SendingDomainsAPI.getSendingStats(period: period, domainId: domainId) { (response, error) in
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
 **period** | **String** | Time period | [optional] [default to ._7d]
 **domainId** | **String** | Filter by domain | [optional] 

### Return type

[**GetSendingStats200Response**](GetSendingStats200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSendingDomains**
```swift
    open class func listSendingDomains(completion: @escaping (_ data: ListSendingDomains200Response?, _ error: Error?) -> Void)
```

List sending domains

List all sending domains for the authenticated account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List sending domains
SendingDomainsAPI.listSendingDomains() { (response, error) in
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

[**ListSendingDomains200Response**](ListSendingDomains200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifySendingDomain**
```swift
    open class func verifySendingDomain(domainId: String, completion: @escaping (_ data: CreateSendingDomain201Response?, _ error: Error?) -> Void)
```

Verify domain DNS records

Check and verify all DNS records (DKIM, SPF, DMARC, MX, return path) for the sending domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Verify domain DNS records
SendingDomainsAPI.verifySendingDomain(domainId: domainId) { (response, error) in
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
 **domainId** | **String** |  | 

### Return type

[**CreateSendingDomain201Response**](CreateSendingDomain201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

