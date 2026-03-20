# StoreConnectionsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStore**](StoreConnectionsAPI.md#createstore) | **POST** /v1/stores | Create a store connection
[**disconnectStore**](StoreConnectionsAPI.md#disconnectstore) | **DELETE** /v1/stores/{store_id} | Disconnect a store
[**getStore**](StoreConnectionsAPI.md#getstore) | **GET** /v1/stores/{store_id} | Get a store connection
[**getSyncJobErrors**](StoreConnectionsAPI.md#getsyncjoberrors) | **GET** /v1/stores/{store_id}/sync-jobs/{job_id}/errors | Get sync job errors
[**listStores**](StoreConnectionsAPI.md#liststores) | **GET** /v1/stores | List store connections
[**listSyncJobs**](StoreConnectionsAPI.md#listsyncjobs) | **GET** /v1/stores/{store_id}/sync-jobs | List sync jobs
[**triggerSync**](StoreConnectionsAPI.md#triggersync) | **POST** /v1/stores/{store_id}/sync | Trigger product sync
[**updateStore**](StoreConnectionsAPI.md#updatestore) | **PUT** /v1/stores/{store_id} | Update a store connection


# **createStore**
```swift
    open class func createStore(createStoreRequest: CreateStoreRequest, completion: @escaping (_ data: CreateStore201Response?, _ error: Error?) -> Void)
```

Create a store connection

Connect an e-commerce store (WooCommerce, PrestaShop, Shopify, or product feed). After creation, trigger a sync to import products.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createStoreRequest = CreateStoreRequest(platform: "platform_example", storeName: "storeName_example", storeUrl: "storeUrl_example", authMethod: "authMethod_example", settings: 123) // CreateStoreRequest | 

// Create a store connection
StoreConnectionsAPI.createStore(createStoreRequest: createStoreRequest) { (response, error) in
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
 **createStoreRequest** | [**CreateStoreRequest**](CreateStoreRequest.md) |  | 

### Return type

[**CreateStore201Response**](CreateStore201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disconnectStore**
```swift
    open class func disconnectStore(storeId: String, completion: @escaping (_ data: DisconnectStore200Response?, _ error: Error?) -> Void)
```

Disconnect a store

Disconnect a store and deactivate its products. Products are retained but marked inactive.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let storeId = "storeId_example" // String | 

// Disconnect a store
StoreConnectionsAPI.disconnectStore(storeId: storeId) { (response, error) in
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
 **storeId** | **String** |  | 

### Return type

[**DisconnectStore200Response**](DisconnectStore200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStore**
```swift
    open class func getStore(storeId: String, completion: @escaping (_ data: CreateStore201Response?, _ error: Error?) -> Void)
```

Get a store connection

Get details of a specific store connection including sync status and product count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let storeId = "storeId_example" // String | 

// Get a store connection
StoreConnectionsAPI.getStore(storeId: storeId) { (response, error) in
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
 **storeId** | **String** |  | 

### Return type

[**CreateStore201Response**](CreateStore201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSyncJobErrors**
```swift
    open class func getSyncJobErrors(storeId: String, jobId: String, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: GetSyncJobErrors200Response?, _ error: Error?) -> Void)
```

Get sync job errors

Get error details for a sync job.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let storeId = "storeId_example" // String | 
let jobId = "jobId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 50)

// Get sync job errors
StoreConnectionsAPI.getSyncJobErrors(storeId: storeId, jobId: jobId, page: page, perPage: perPage) { (response, error) in
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
 **storeId** | **String** |  | 
 **jobId** | **String** |  | 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 50]

### Return type

[**GetSyncJobErrors200Response**](GetSyncJobErrors200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listStores**
```swift
    open class func listStores(status: Status_listStores? = nil, completion: @escaping (_ data: ListStores200Response?, _ error: Error?) -> Void)
```

List store connections

List all store connections for the authenticated account. Optionally filter by status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let status = "status_example" // String | Filter by connection status (optional)

// List store connections
StoreConnectionsAPI.listStores(status: status) { (response, error) in
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
 **status** | **String** | Filter by connection status | [optional] 

### Return type

[**ListStores200Response**](ListStores200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSyncJobs**
```swift
    open class func listSyncJobs(storeId: String, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ListSyncJobs200Response?, _ error: Error?) -> Void)
```

List sync jobs

List sync job history for a store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let storeId = "storeId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List sync jobs
StoreConnectionsAPI.listSyncJobs(storeId: storeId, page: page, perPage: perPage) { (response, error) in
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
 **storeId** | **String** |  | 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**ListSyncJobs200Response**](ListSyncJobs200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerSync**
```swift
    open class func triggerSync(storeId: String, idempotencyKey: String? = nil, completion: @escaping (_ data: SyncResponse?, _ error: Error?) -> Void)
```

Trigger product sync

Trigger a manual product sync for a store. Supports idempotency via the Idempotency-Key header (5 minute TTL).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let storeId = "storeId_example" // String | 
let idempotencyKey = "idempotencyKey_example" // String | Idempotency key to prevent duplicate syncs (5 min TTL) (optional)

// Trigger product sync
StoreConnectionsAPI.triggerSync(storeId: storeId, idempotencyKey: idempotencyKey) { (response, error) in
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
 **storeId** | **String** |  | 
 **idempotencyKey** | **String** | Idempotency key to prevent duplicate syncs (5 min TTL) | [optional] 

### Return type

[**SyncResponse**](SyncResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStore**
```swift
    open class func updateStore(storeId: String, updateStoreRequest: UpdateStoreRequest, completion: @escaping (_ data: CreateStore201Response?, _ error: Error?) -> Void)
```

Update a store connection

Update store settings such as name, sync interval, or credentials.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let storeId = "storeId_example" // String | 
let updateStoreRequest = updateStore_request(storeName: "storeName_example", syncIntervalSeconds: 123, settings: 123, credentials: 123) // UpdateStoreRequest | 

// Update a store connection
StoreConnectionsAPI.updateStore(storeId: storeId, updateStoreRequest: updateStoreRequest) { (response, error) in
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
 **storeId** | **String** |  | 
 **updateStoreRequest** | [**UpdateStoreRequest**](UpdateStoreRequest.md) |  | 

### Return type

[**CreateStore201Response**](CreateStore201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

