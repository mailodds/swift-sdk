# EventDestinationsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEventDestination**](EventDestinationsAPI.md#createeventdestination) | **POST** /v1/event-destinations | Create an event destination
[**deleteEventDestination**](EventDestinationsAPI.md#deleteeventdestination) | **DELETE** /v1/event-destinations/{destination_id} | Delete an event destination
[**getEventDestination**](EventDestinationsAPI.md#geteventdestination) | **GET** /v1/event-destinations/{destination_id} | Get an event destination
[**listEventDestinationTemplates**](EventDestinationsAPI.md#listeventdestinationtemplates) | **GET** /v1/event-destinations/templates | List event destination templates
[**listEventDestinations**](EventDestinationsAPI.md#listeventdestinations) | **GET** /v1/event-destinations | List event destinations
[**listEventSchemas**](EventDestinationsAPI.md#listeventschemas) | **GET** /v1/event-destinations/schemas | List event schemas
[**updateEventDestination**](EventDestinationsAPI.md#updateeventdestination) | **PUT** /v1/event-destinations/{destination_id} | Update an event destination


# **createEventDestination**
```swift
    open class func createEventDestination(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create an event destination

Create a new event destination for receiving webhook callbacks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Create an event destination
EventDestinationsAPI.createEventDestination() { (response, error) in
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

# **deleteEventDestination**
```swift
    open class func deleteEventDestination(destinationId: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an event destination

Delete an event destination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let destinationId = 987 // Int | 

// Delete an event destination
EventDestinationsAPI.deleteEventDestination(destinationId: destinationId) { (response, error) in
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
 **destinationId** | **Int** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventDestination**
```swift
    open class func getEventDestination(destinationId: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get an event destination

Retrieve a single event destination by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let destinationId = 987 // Int | 

// Get an event destination
EventDestinationsAPI.getEventDestination(destinationId: destinationId) { (response, error) in
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
 **destinationId** | **Int** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEventDestinationTemplates**
```swift
    open class func listEventDestinationTemplates(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List event destination templates

List pre-built payload templates for event destinations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List event destination templates
EventDestinationsAPI.listEventDestinationTemplates() { (response, error) in
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

# **listEventDestinations**
```swift
    open class func listEventDestinations(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List event destinations

List all event destinations for the account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List event destinations
EventDestinationsAPI.listEventDestinations() { (response, error) in
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

# **listEventSchemas**
```swift
    open class func listEventSchemas(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List event schemas

List JSON schemas for each event type.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List event schemas
EventDestinationsAPI.listEventSchemas() { (response, error) in
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

# **updateEventDestination**
```swift
    open class func updateEventDestination(destinationId: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update an event destination

Update an existing event destination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let destinationId = 987 // Int | 

// Update an event destination
EventDestinationsAPI.updateEventDestination(destinationId: destinationId) { (response, error) in
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
 **destinationId** | **Int** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

