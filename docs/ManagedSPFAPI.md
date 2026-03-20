# ManagedSPFAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createManagedSpf**](ManagedSPFAPI.md#createmanagedspf) | **POST** /v1/sending-domains/{domain_id}/managed-spf | Create managed SPF record
[**getManagedSpf**](ManagedSPFAPI.md#getmanagedspf) | **GET** /v1/sending-domains/{domain_id}/managed-spf | Get managed SPF record
[**refreshManagedSpf**](ManagedSPFAPI.md#refreshmanagedspf) | **POST** /v1/sending-domains/{domain_id}/managed-spf/refresh | Refresh managed SPF record
[**updateManagedSpf**](ManagedSPFAPI.md#updatemanagedspf) | **PUT** /v1/sending-domains/{domain_id}/managed-spf | Update managed SPF settings


# **createManagedSpf**
```swift
    open class func createManagedSpf(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create managed SPF record

Create a managed SPF record for a sending domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Create managed SPF record
ManagedSPFAPI.createManagedSpf(domainId: domainId) { (response, error) in
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

# **getManagedSpf**
```swift
    open class func getManagedSpf(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get managed SPF record

Retrieve the managed SPF record for a sending domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Get managed SPF record
ManagedSPFAPI.getManagedSpf(domainId: domainId) { (response, error) in
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

# **refreshManagedSpf**
```swift
    open class func refreshManagedSpf(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Refresh managed SPF record

Re-resolve DNS and refresh the managed SPF record for a sending domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Refresh managed SPF record
ManagedSPFAPI.refreshManagedSpf(domainId: domainId) { (response, error) in
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

# **updateManagedSpf**
```swift
    open class func updateManagedSpf(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update managed SPF settings

Update managed SPF settings such as enabling or disabling for a sending domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Update managed SPF settings
ManagedSPFAPI.updateManagedSpf(domainId: domainId) { (response, error) in
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

