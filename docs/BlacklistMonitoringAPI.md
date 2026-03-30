# BlacklistMonitoringAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBlacklistMonitor**](BlacklistMonitoringAPI.md#addblacklistmonitor) | **POST** /v1/blacklist-monitors | Add blacklist monitor
[**deleteBlacklistMonitor**](BlacklistMonitoringAPI.md#deleteblacklistmonitor) | **DELETE** /v1/blacklist-monitors/{monitor_id} | Delete a blacklist monitor
[**getBlacklistHistory**](BlacklistMonitoringAPI.md#getblacklisthistory) | **GET** /v1/blacklist-monitors/{monitor_id}/history | Get blacklist check history
[**listBlacklistMonitors**](BlacklistMonitoringAPI.md#listblacklistmonitors) | **GET** /v1/blacklist-monitors | List blacklist monitors
[**runBlacklistCheck**](BlacklistMonitoringAPI.md#runblacklistcheck) | **POST** /v1/blacklist-monitors/{monitor_id}/check | Run blacklist check


# **addBlacklistMonitor**
```swift
    open class func addBlacklistMonitor(addBlacklistMonitorRequest: AddBlacklistMonitorRequest, completion: @escaping (_ data: AddBlacklistMonitor201Response?, _ error: Error?) -> Void)
```

Add blacklist monitor

Add an IP address or domain to monitor against DNS blacklists. An initial check is run immediately.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let addBlacklistMonitorRequest = addBlacklistMonitor_request(target: "target_example", targetType: "targetType_example") // AddBlacklistMonitorRequest | 

// Add blacklist monitor
BlacklistMonitoringAPI.addBlacklistMonitor(addBlacklistMonitorRequest: addBlacklistMonitorRequest) { (response, error) in
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
 **addBlacklistMonitorRequest** | [**AddBlacklistMonitorRequest**](AddBlacklistMonitorRequest.md) |  | 

### Return type

[**AddBlacklistMonitor201Response**](AddBlacklistMonitor201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBlacklistMonitor**
```swift
    open class func deleteBlacklistMonitor(monitorId: String, completion: @escaping (_ data: DeletePolicyRule200Response?, _ error: Error?) -> Void)
```

Delete a blacklist monitor

Permanently remove a blacklist monitor and its check history.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let monitorId = "monitorId_example" // String | 

// Delete a blacklist monitor
BlacklistMonitoringAPI.deleteBlacklistMonitor(monitorId: monitorId) { (response, error) in
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
 **monitorId** | **String** |  | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlacklistHistory**
```swift
    open class func getBlacklistHistory(monitorId: String, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: GetBlacklistHistory200Response?, _ error: Error?) -> Void)
```

Get blacklist check history

Get the listing and delisting timeline for a monitored IP or domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let monitorId = "monitorId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// Get blacklist check history
BlacklistMonitoringAPI.getBlacklistHistory(monitorId: monitorId, page: page, perPage: perPage) { (response, error) in
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
 **monitorId** | **String** |  | 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**GetBlacklistHistory200Response**](GetBlacklistHistory200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBlacklistMonitors**
```swift
    open class func listBlacklistMonitors(completion: @escaping (_ data: ListBlacklistMonitors200Response?, _ error: Error?) -> Void)
```

List blacklist monitors

List all blacklist monitors for the authenticated account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List blacklist monitors
BlacklistMonitoringAPI.listBlacklistMonitors() { (response, error) in
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

[**ListBlacklistMonitors200Response**](ListBlacklistMonitors200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runBlacklistCheck**
```swift
    open class func runBlacklistCheck(monitorId: String, completion: @escaping (_ data: RunBlacklistCheck200Response?, _ error: Error?) -> Void)
```

Run blacklist check

Run an on-demand DNSBL check for a monitored IP or domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let monitorId = "monitorId_example" // String | 

// Run blacklist check
BlacklistMonitoringAPI.runBlacklistCheck(monitorId: monitorId) { (response, error) in
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
 **monitorId** | **String** |  | 

### Return type

[**RunBlacklistCheck200Response**](RunBlacklistCheck200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

