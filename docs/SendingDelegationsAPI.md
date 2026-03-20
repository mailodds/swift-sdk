# SendingDelegationsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDelegation**](SendingDelegationsAPI.md#createdelegation) | **POST** /v1/sending-domains/{domain_id}/delegations | Create a sending delegation
[**listDelegations**](SendingDelegationsAPI.md#listdelegations) | **GET** /v1/sending-domains/{domain_id}/delegations | List sending delegations
[**revokeDelegation**](SendingDelegationsAPI.md#revokedelegation) | **DELETE** /v1/sending-domains/{domain_id}/delegations/{delegation_id} | Revoke a sending delegation


# **createDelegation**
```swift
    open class func createDelegation(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a sending delegation

Create a sending delegation granting another account permission to send from this domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Create a sending delegation
SendingDelegationsAPI.createDelegation(domainId: domainId) { (response, error) in
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

# **listDelegations**
```swift
    open class func listDelegations(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List sending delegations

List all sending delegations for a domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// List sending delegations
SendingDelegationsAPI.listDelegations(domainId: domainId) { (response, error) in
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

# **revokeDelegation**
```swift
    open class func revokeDelegation(domainId: String, delegationId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke a sending delegation

Revoke a sending delegation, removing the delegate account permission to send.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 
let delegationId = "delegationId_example" // String | 

// Revoke a sending delegation
SendingDelegationsAPI.revokeDelegation(domainId: domainId, delegationId: delegationId) { (response, error) in
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
 **delegationId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

