# ConfigurationSetsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConfigurationSet**](ConfigurationSetsAPI.md#createconfigurationset) | **POST** /v1/configuration-sets | Create a configuration set
[**deleteConfigurationSet**](ConfigurationSetsAPI.md#deleteconfigurationset) | **DELETE** /v1/configuration-sets/{name} | Delete a configuration set
[**getConfigurationSet**](ConfigurationSetsAPI.md#getconfigurationset) | **GET** /v1/configuration-sets/{name} | Get a configuration set
[**getConfigurationSetMetrics**](ConfigurationSetsAPI.md#getconfigurationsetmetrics) | **GET** /v1/configuration-sets/{name}/metrics | Get configuration set metrics
[**listConfigurationSets**](ConfigurationSetsAPI.md#listconfigurationsets) | **GET** /v1/configuration-sets | List configuration sets
[**updateConfigurationSet**](ConfigurationSetsAPI.md#updateconfigurationset) | **PUT** /v1/configuration-sets/{name} | Update a configuration set


# **createConfigurationSet**
```swift
    open class func createConfigurationSet(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a configuration set

Create a new configuration set for grouping sending behavior.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Create a configuration set
ConfigurationSetsAPI.createConfigurationSet() { (response, error) in
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

# **deleteConfigurationSet**
```swift
    open class func deleteConfigurationSet(name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a configuration set

Delete a configuration set by name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let name = "name_example" // String | 

// Delete a configuration set
ConfigurationSetsAPI.deleteConfigurationSet(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigurationSet**
```swift
    open class func getConfigurationSet(name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get a configuration set

Retrieve a configuration set by name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let name = "name_example" // String | 

// Get a configuration set
ConfigurationSetsAPI.getConfigurationSet(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigurationSetMetrics**
```swift
    open class func getConfigurationSetMetrics(name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get configuration set metrics

Retrieve sending metrics for a configuration set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let name = "name_example" // String | 

// Get configuration set metrics
ConfigurationSetsAPI.getConfigurationSetMetrics(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConfigurationSets**
```swift
    open class func listConfigurationSets(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List configuration sets

List all configuration sets for the account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List configuration sets
ConfigurationSetsAPI.listConfigurationSets() { (response, error) in
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

# **updateConfigurationSet**
```swift
    open class func updateConfigurationSet(name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a configuration set

Update an existing configuration set by name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let name = "name_example" // String | 

// Update a configuration set
ConfigurationSetsAPI.updateConfigurationSet(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

