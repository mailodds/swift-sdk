# ContactListsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addContact**](ContactListsAPI.md#addcontact) | **POST** /v1/contact-lists/{list_id}/contacts | Add contact to list
[**appendToContactList**](ContactListsAPI.md#appendtocontactlist) | **POST** /v1/contact-lists/{list_id}/append | Append to contact list
[**createContactList**](ContactListsAPI.md#createcontactlist) | **POST** /v1/contact-lists | Create contact list
[**deleteContact**](ContactListsAPI.md#deletecontact) | **DELETE** /v1/contact-lists/{list_id}/contacts/{contact_id} | Delete contact
[**deleteContactList**](ContactListsAPI.md#deletecontactlist) | **DELETE** /v1/contact-lists/{list_id} | Delete a contact list
[**exportContactList**](ContactListsAPI.md#exportcontactlist) | **GET** /v1/contact-lists/{list_id}/export | Export contact list
[**getInactiveContactsReport**](ContactListsAPI.md#getinactivecontactsreport) | **GET** /v1/contacts/inactive-report | Get inactive contacts report
[**importContactList**](ContactListsAPI.md#importcontactlist) | **POST** /v1/contact-lists/{list_id}/import | Import contacts from CSV
[**listContactLists**](ContactListsAPI.md#listcontactlists) | **GET** /v1/contact-lists | List contact lists
[**queryContactList**](ContactListsAPI.md#querycontactlist) | **POST** /v1/contact-lists/{list_id}/query | Query contact list
[**updateContact**](ContactListsAPI.md#updatecontact) | **PATCH** /v1/contact-lists/{list_id}/contacts/{contact_id} | Update contact


# **addContact**
```swift
    open class func addContact(listId: String, addContactRequest: AddContactRequest, completion: @escaping (_ data: AddContact201Response?, _ error: Error?) -> Void)
```

Add contact to list

Add a single contact to a contact list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | Contact list ID
let addContactRequest = addContact_request(email: "email_example", firstName: "firstName_example", lastName: "lastName_example", customFields: 123) // AddContactRequest | 

// Add contact to list
ContactListsAPI.addContact(listId: listId, addContactRequest: addContactRequest) { (response, error) in
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
 **listId** | **String** | Contact list ID | 
 **addContactRequest** | [**AddContactRequest**](AddContactRequest.md) |  | 

### Return type

[**AddContact201Response**](AddContact201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **deleteContact**
```swift
    open class func deleteContact(listId: String, contactId: String, completion: @escaping (_ data: DeletePolicyRule200Response?, _ error: Error?) -> Void)
```

Delete contact

Remove a single contact from a contact list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | Contact list ID
let contactId = "contactId_example" // String | Contact ID

// Delete contact
ContactListsAPI.deleteContact(listId: listId, contactId: contactId) { (response, error) in
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
 **listId** | **String** | Contact list ID | 
 **contactId** | **String** | Contact ID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContactList**
```swift
    open class func deleteContactList(listId: String, completion: @escaping (_ data: DeletePolicyRule200Response?, _ error: Error?) -> Void)
```

Delete a contact list

Permanently delete a contact list and all its entries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | Contact list UUID

// Delete a contact list
ContactListsAPI.deleteContactList(listId: listId) { (response, error) in
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

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportContactList**
```swift
    open class func exportContactList(listId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Export contact list

Export a contact list as CSV.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | Contact list ID

// Export contact list
ContactListsAPI.exportContactList(listId: listId) { (response, error) in
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
 **listId** | **String** | Contact list ID | 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

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

# **importContactList**
```swift
    open class func importContactList(listId: String, file: URL, columnMapping: String? = nil, consentSource: String? = nil, tags: String? = nil, completion: @escaping (_ data: ImportContactList200Response?, _ error: Error?) -> Void)
```

Import contacts from CSV

Import contacts into a list from a CSV file (max 10MB).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | Contact list ID
let file = URL(string: "https://example.com")! // URL | CSV file (max 10MB)
let columnMapping = "columnMapping_example" // String | JSON mapping of CSV columns to contact fields (optional)
let consentSource = "consentSource_example" // String | Source of consent for imported contacts (optional)
let tags = "tags_example" // String | JSON array of tags to apply (optional)

// Import contacts from CSV
ContactListsAPI.importContactList(listId: listId, file: file, columnMapping: columnMapping, consentSource: consentSource, tags: tags) { (response, error) in
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
 **listId** | **String** | Contact list ID | 
 **file** | **URL** | CSV file (max 10MB) | 
 **columnMapping** | **String** | JSON mapping of CSV columns to contact fields | [optional] 
 **consentSource** | **String** | Source of consent for imported contacts | [optional] 
 **tags** | **String** | JSON array of tags to apply | [optional] 

### Return type

[**ImportContactList200Response**](ImportContactList200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
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

# **updateContact**
```swift
    open class func updateContact(listId: String, contactId: String, updateContactRequest: UpdateContactRequest, completion: @escaping (_ data: AddContact201Response?, _ error: Error?) -> Void)
```

Update contact

Update a single contact in a contact list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let listId = "listId_example" // String | Contact list ID
let contactId = "contactId_example" // String | Contact ID
let updateContactRequest = updateContact_request(firstName: "firstName_example", lastName: "lastName_example", customFields: 123) // UpdateContactRequest | 

// Update contact
ContactListsAPI.updateContact(listId: listId, contactId: contactId, updateContactRequest: updateContactRequest) { (response, error) in
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
 **listId** | **String** | Contact list ID | 
 **contactId** | **String** | Contact ID | 
 **updateContactRequest** | [**UpdateContactRequest**](UpdateContactRequest.md) |  | 

### Return type

[**AddContact201Response**](AddContact201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

