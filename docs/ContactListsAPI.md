# ContactListsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appendToContactList**](ContactListsAPI.md#appendtocontactlist) | **POST** /v1/contact-lists/{list_id}/append | Append to contact list
[**createContactList**](ContactListsAPI.md#createcontactlist) | **POST** /v1/contact-lists | Create contact list
[**getInactiveContactsReport**](ContactListsAPI.md#getinactivecontactsreport) | **GET** /v1/contacts/inactive-report | Get inactive contacts report
[**listContactLists**](ContactListsAPI.md#listcontactlists) | **GET** /v1/contact-lists | List contact lists
[**queryContactList**](ContactListsAPI.md#querycontactlist) | **POST** /v1/contact-lists/{list_id}/query | Query contact list


# **appendToContactList**
```swift
    open class func appendToContactList(listId: String, appendToContactListRequest: AppendToContactListRequest, completion: @escaping (_ data: AppendToContactList200Response?, _ error: Error?) -> Void)
```

Append to contact list

Append validated emails from additional jobs to an existing contact list. Duplicates are automatically skipped.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | Contact list UUID
let appendToContactListRequest = appendToContactList_request(sourceJobIds: ["sourceJobIds_example"], includeCatchAll: false) // AppendToContactListRequest | 

// Append to contact list
ContactListsAPI.appendToContactList(listId: listId, appendToContactListRequest: appendToContactListRequest) { (response, error) in
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
 **listId** | **String** | Contact list UUID | 
 **appendToContactListRequest** | [**AppendToContactListRequest**](AppendToContactListRequest.md) |  | 

### Return type

[**AppendToContactList200Response**](AppendToContactList200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContactList**
```swift
    open class func createContactList(createContactListRequest: CreateContactListRequest, completion: @escaping (_ data: CreateContactList201Response?, _ error: Error?) -> Void)
```

Create contact list

Create a new contact list from one or more completed validation jobs. Only accepted (valid) emails are included.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createContactListRequest = createContactList_request(name: "name_example", sourceJobId: "sourceJobId_example", sourceJobIds: ["sourceJobIds_example"], tags: ["tags_example"]) // CreateContactListRequest | 

// Create contact list
ContactListsAPI.createContactList(createContactListRequest: createContactListRequest) { (response, error) in
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
 **createContactListRequest** | [**CreateContactListRequest**](CreateContactListRequest.md) |  | 

### Return type

[**CreateContactList201Response**](CreateContactList201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInactiveContactsReport**
```swift
    open class func getInactiveContactsReport(days: Int? = nil, completion: @escaping (_ data: GetInactiveContactsReport200Response?, _ error: Error?) -> Void)
```

Get inactive contacts report

Get a report of contacts across all lists with no engagement activity (opens, clicks) in the specified period.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let days = 987 // Int | Inactivity threshold in days (optional) (default to 90)

// Get inactive contacts report
ContactListsAPI.getInactiveContactsReport(days: days) { (response, error) in
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
 **days** | **Int** | Inactivity threshold in days | [optional] [default to 90]

### Return type

[**GetInactiveContactsReport200Response**](GetInactiveContactsReport200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactLists**
```swift
    open class func listContactLists(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ListContactLists200Response?, _ error: Error?) -> Void)
```

List contact lists

List contact lists for the authenticated account. Contact lists are built from validated email jobs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List contact lists
ContactListsAPI.listContactLists(page: page, perPage: perPage) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**ListContactLists200Response**](ListContactLists200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryContactList**
```swift
    open class func queryContactList(listId: String, queryContactListRequest: QueryContactListRequest, completion: @escaping (_ data: QueryContactList200Response?, _ error: Error?) -> Void)
```

Query contact list

Query contact list entries with structured filters. Supports filtering by validation status, domain, and other attributes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | Contact list UUID
let queryContactListRequest = queryContactList_request(filters: [queryContactList_request_filters_inner(field: "field_example", _operator: "_operator_example", value: 123)], page: 123, perPage: 123) // QueryContactListRequest | 

// Query contact list
ContactListsAPI.queryContactList(listId: listId, queryContactListRequest: queryContactListRequest) { (response, error) in
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
 **listId** | **String** | Contact list UUID | 
 **queryContactListRequest** | [**QueryContactListRequest**](QueryContactListRequest.md) |  | 

### Return type

[**QueryContactList200Response**](QueryContactList200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

