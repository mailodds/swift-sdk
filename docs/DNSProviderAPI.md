# DNSProviderAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connectDnsProvider**](DNSProviderAPI.md#connectdnsprovider) | **POST** /v1/account/dns-provider | Connect DNS provider
[**disconnectDnsProvider**](DNSProviderAPI.md#disconnectdnsprovider) | **DELETE** /v1/account/dns-provider | Disconnect DNS provider
[**getDnsProvider**](DNSProviderAPI.md#getdnsprovider) | **GET** /v1/account/dns-provider | Get DNS provider status


# **connectDnsProvider**
```swift
    open class func connectDnsProvider(connectDnsProviderRequest: ConnectDnsProviderRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Connect DNS provider

Store a Cloudflare API token on the account for automated DNS configuration. Token is validated, zones are discovered, and write permission is tested before storage.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let connectDnsProviderRequest = connectDnsProvider_request(provider: "provider_example", apiToken: "apiToken_example") // ConnectDnsProviderRequest | 

// Connect DNS provider
DNSProviderAPI.connectDnsProvider(connectDnsProviderRequest: connectDnsProviderRequest) { (response, error) in
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
 **connectDnsProviderRequest** | [**ConnectDnsProviderRequest**](ConnectDnsProviderRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disconnectDnsProvider**
```swift
    open class func disconnectDnsProvider(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Disconnect DNS provider

Remove the stored DNS provider token and clear zone cache.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Disconnect DNS provider
DNSProviderAPI.disconnectDnsProvider() { (response, error) in
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

# **getDnsProvider**
```swift
    open class func getDnsProvider(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get DNS provider status

Get the DNS provider connection status. Token is never exposed in the response.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Get DNS provider status
DNSProviderAPI.getDnsProvider() { (response, error) in
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

