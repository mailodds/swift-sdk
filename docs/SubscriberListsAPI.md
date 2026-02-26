# SubscriberListsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmSubscription**](SubscriberListsAPI.md#confirmsubscription) | **GET** /v1/confirm/{token} | Confirm subscription
[**createList**](SubscriberListsAPI.md#createlist) | **POST** /v1/lists | Create a subscriber list
[**deleteList**](SubscriberListsAPI.md#deletelist) | **DELETE** /v1/lists/{list_id} | Delete a subscriber list
[**getList**](SubscriberListsAPI.md#getlist) | **GET** /v1/lists/{list_id} | Get a subscriber list
[**getLists**](SubscriberListsAPI.md#getlists) | **GET** /v1/lists | List subscriber lists
[**getSubscribers**](SubscriberListsAPI.md#getsubscribers) | **GET** /v1/lists/{list_id}/subscribers | List subscribers
[**subscribe**](SubscriberListsAPI.md#subscribe) | **POST** /v1/subscribe/{list_id} | Subscribe to a list
[**unsubscribeSubscriber**](SubscriberListsAPI.md#unsubscribesubscriber) | **DELETE** /v1/lists/{list_id}/subscribers/{subscriber_id} | Unsubscribe a subscriber


# **confirmSubscription**
```swift
    open class func confirmSubscription(token: String, completion: @escaping (_ data: ConfirmSubscription200Response?, _ error: Error?) -> Void)
```

Confirm subscription

Confirm a pending subscription via the token sent in the confirmation email. No authentication required. Redirects to the list's configured redirect URL if set, otherwise returns JSON. Tokens expire after 72 hours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let token = "token_example" // String | Confirmation token from email

// Confirm subscription
SubscriberListsAPI.confirmSubscription(token: token) { (response, error) in
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
 **token** | **String** | Confirmation token from email | 

### Return type

[**ConfirmSubscription200Response**](ConfirmSubscription200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createList**
```swift
    open class func createList(createListRequest: CreateListRequest, completion: @escaping (_ data: CreateList201Response?, _ error: Error?) -> Void)
```

Create a subscriber list

Create a new subscriber list. Use lists to organize subscribers and manage double opt-in confirmation flows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createListRequest = CreateListRequest(name: "name_example", description: "description_example", confirmationRedirectUrl: "confirmationRedirectUrl_example", confirmationSubject: "confirmationSubject_example", confirmationFromName: "confirmationFromName_example") // CreateListRequest | 

// Create a subscriber list
SubscriberListsAPI.createList(createListRequest: createListRequest) { (response, error) in
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
 **createListRequest** | [**CreateListRequest**](CreateListRequest.md) |  | 

### Return type

[**CreateList201Response**](CreateList201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteList**
```swift
    open class func deleteList(listId: String, completion: @escaping (_ data: DeletePolicyRule200Response?, _ error: Error?) -> Void)
```

Delete a subscriber list

Soft-delete a subscriber list. Existing subscribers are retained but the list is no longer usable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | List UUID

// Delete a subscriber list
SubscriberListsAPI.deleteList(listId: listId) { (response, error) in
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
 **listId** | **String** | List UUID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getList**
```swift
    open class func getList(listId: String, completion: @escaping (_ data: CreateList201Response?, _ error: Error?) -> Void)
```

Get a subscriber list

Get details of a specific subscriber list including subscriber and confirmed counts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | List UUID

// Get a subscriber list
SubscriberListsAPI.getList(listId: listId) { (response, error) in
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
 **listId** | **String** | List UUID | 

### Return type

[**CreateList201Response**](CreateList201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLists**
```swift
    open class func getLists(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: GetLists200Response?, _ error: Error?) -> Void)
```

List subscriber lists

List all subscriber lists for the authenticated account with pagination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let page = 987 // Int | Page number (optional) (default to 1)
let perPage = 987 // Int | Items per page (optional) (default to 25)

// List subscriber lists
SubscriberListsAPI.getLists(page: page, perPage: perPage) { (response, error) in
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
 **page** | **Int** | Page number | [optional] [default to 1]
 **perPage** | **Int** | Items per page | [optional] [default to 25]

### Return type

[**GetLists200Response**](GetLists200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscribers**
```swift
    open class func getSubscribers(listId: String, page: Int? = nil, perPage: Int? = nil, status: Status_getSubscribers? = nil, completion: @escaping (_ data: GetSubscribers200Response?, _ error: Error?) -> Void)
```

List subscribers

List paginated subscribers for a specific list. Optionally filter by status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | List UUID
let page = 987 // Int | Page number (optional) (default to 1)
let perPage = 987 // Int | Items per page (optional) (default to 50)
let status = "status_example" // String | Filter by subscriber status (optional)

// List subscribers
SubscriberListsAPI.getSubscribers(listId: listId, page: page, perPage: perPage, status: status) { (response, error) in
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
 **listId** | **String** | List UUID | 
 **page** | **Int** | Page number | [optional] [default to 1]
 **perPage** | **Int** | Items per page | [optional] [default to 50]
 **status** | **String** | Filter by subscriber status | [optional] 

### Return type

[**GetSubscribers200Response**](GetSubscribers200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscribe**
```swift
    open class func subscribe(listId: String, subscribeRequest: SubscribeRequest, completion: @escaping (_ data: UnsubscribeSubscriber200Response?, _ error: Error?) -> Void)
```

Subscribe to a list

Add a subscriber to a list and initiate the double opt-in confirmation flow. The subscriber receives a confirmation email and must click the link to confirm. Rate limited to 10 requests/min per IP and 1000/hour per account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | List UUID
let subscribeRequest = SubscribeRequest(email: "email_example", name: "name_example", metadata: 123, pageUrl: "pageUrl_example", formId: "formId_example") // SubscribeRequest | 

// Subscribe to a list
SubscriberListsAPI.subscribe(listId: listId, subscribeRequest: subscribeRequest) { (response, error) in
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
 **listId** | **String** | List UUID | 
 **subscribeRequest** | [**SubscribeRequest**](SubscribeRequest.md) |  | 

### Return type

[**UnsubscribeSubscriber200Response**](UnsubscribeSubscriber200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unsubscribeSubscriber**
```swift
    open class func unsubscribeSubscriber(listId: String, subscriberId: String, completion: @escaping (_ data: UnsubscribeSubscriber200Response?, _ error: Error?) -> Void)
```

Unsubscribe a subscriber

Set a subscriber's status to unsubscribed. The consent record is retained for compliance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | List UUID
let subscriberId = "subscriberId_example" // String | Subscriber UUID

// Unsubscribe a subscriber
SubscriberListsAPI.unsubscribeSubscriber(listId: listId, subscriberId: subscriberId) { (response, error) in
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
 **listId** | **String** | List UUID | 
 **subscriberId** | **String** | Subscriber UUID | 

### Return type

[**UnsubscribeSubscriber200Response**](UnsubscribeSubscriber200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

