# DKIMManagementAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDkimDnsRecord**](DKIMManagementAPI.md#getdkimdnsrecord) | **GET** /v1/sending-domains/{domain_id}/dkim/dns-record | Get DKIM DNS record
[**rotateDkim**](DKIMManagementAPI.md#rotatedkim) | **POST** /v1/sending-domains/{domain_id}/dkim/rotate | Rotate DKIM keys


# **getDkimDnsRecord**
```swift
    open class func getDkimDnsRecord(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get DKIM DNS record

Retrieve the current DKIM DNS record and selector for a sending domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Get DKIM DNS record
DKIMManagementAPI.getDkimDnsRecord(domainId: domainId) { (response, error) in
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

# **rotateDkim**
```swift
    open class func rotateDkim(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Rotate DKIM keys

Generate a new DKIM key pair and rotate the selector for a sending domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Rotate DKIM keys
DKIMManagementAPI.rotateDkim(domainId: domainId) { (response, error) in
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

