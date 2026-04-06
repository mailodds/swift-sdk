# StorefrontDomainsAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStorefrontDomain**](StorefrontDomainsAPI.md#createstorefrontdomain) | **POST** /v1/storefront-domains | Add a custom storefront domain
[**deleteStorefrontDomain**](StorefrontDomainsAPI.md#deletestorefrontdomain) | **DELETE** /v1/storefront-domains/{domain_id} | Delete a storefront domain
[**getStorefrontDomain**](StorefrontDomainsAPI.md#getstorefrontdomain) | **GET** /v1/storefront-domains/{domain_id} | Get storefront domain details
[**listStorefrontDomains**](StorefrontDomainsAPI.md#liststorefrontdomains) | **GET** /v1/storefront-domains | List storefront domains
[**verifyStorefrontDomain**](StorefrontDomainsAPI.md#verifystorefrontdomain) | **POST** /v1/storefront-domains/{domain_id}/verify | Verify storefront domain DNS


# **createStorefrontDomain**
```swift
    open class func createStorefrontDomain(createStorefrontDomainRequest: CreateStorefrontDomainRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add a custom storefront domain

Register a custom domain (e.g., shop.merchant.com) for a storefront store. If a Cloudflare DNS provider is connected, NS records are auto-configured.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createStorefrontDomainRequest = createStorefrontDomain_request(fqdn: "fqdn_example", storeId: "storeId_example") // CreateStorefrontDomainRequest | 

// Add a custom storefront domain
StorefrontDomainsAPI.createStorefrontDomain(createStorefrontDomainRequest: createStorefrontDomainRequest) { (response, error) in
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
 **createStorefrontDomainRequest** | [**CreateStorefrontDomainRequest**](CreateStorefrontDomainRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStorefrontDomain**
```swift
    open class func deleteStorefrontDomain(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a storefront domain

Remove a custom storefront domain. Cleans up DNS records (if auto-configured), TLS certificates, and edge node config.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Delete a storefront domain
StorefrontDomainsAPI.deleteStorefrontDomain(domainId: domainId) { (response, error) in
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

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStorefrontDomain**
```swift
    open class func getStorefrontDomain(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get storefront domain details

Get a custom domain with status, NS record instructions, and certificate info.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Get storefront domain details
StorefrontDomainsAPI.getStorefrontDomain(domainId: domainId) { (response, error) in
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

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listStorefrontDomains**
```swift
    open class func listStorefrontDomains(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List storefront domains

List all custom storefront domains for the account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List storefront domains
StorefrontDomainsAPI.listStorefrontDomains() { (response, error) in
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

# **verifyStorefrontDomain**
```swift
    open class func verifyStorefrontDomain(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Verify storefront domain DNS

Trigger manual DNS verification for a custom domain. Rate limited to 5 per hour per domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Verify storefront domain DNS
StorefrontDomainsAPI.verifyStorefrontDomain(domainId: domainId) { (response, error) in
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

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

