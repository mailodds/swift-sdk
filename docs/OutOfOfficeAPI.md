# OutOfOfficeAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchCheckOoo**](OutOfOfficeAPI.md#batchcheckooo) | **POST** /v1/out-of-office/batch-check | Batch check OOO status
[**deleteOooContact**](OutOfOfficeAPI.md#deleteooocontact) | **DELETE** /v1/out-of-office/{email} | Delete OOO contact
[**getOooStatus**](OutOfOfficeAPI.md#getooostatus) | **GET** /v1/out-of-office/{email}/status | Get OOO status for email
[**listOooContacts**](OutOfOfficeAPI.md#listooocontacts) | **GET** /v1/out-of-office | List out-of-office contacts
[**updateOooContact**](OutOfOfficeAPI.md#updateooocontact) | **PATCH** /v1/out-of-office/{email} | Update OOO contact


# **batchCheckOoo**
```swift
    open class func batchCheckOoo(batchCheckOooRequest: BatchCheckOooRequest, completion: @escaping (_ data: BatchCheckOoo200Response?, _ error: Error?) -> Void)
```

Batch check OOO status

Check OOO status for up to 1000 email addresses at once. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let batchCheckOooRequest = batchCheckOoo_request(emails: ["emails_example"]) // BatchCheckOooRequest | 

// Batch check OOO status
OutOfOfficeAPI.batchCheckOoo(batchCheckOooRequest: batchCheckOooRequest) { (response, error) in
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
 **batchCheckOooRequest** | [**BatchCheckOooRequest**](BatchCheckOooRequest.md) |  | 

### Return type

[**BatchCheckOoo200Response**](BatchCheckOoo200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOooContact**
```swift
    open class func deleteOooContact(email: String, completion: @escaping (_ data: DeleteOooContact200Response?, _ error: Error?) -> Void)
```

Delete OOO contact

Clear out-of-office status for an email address. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let email = "email_example" // String | 

// Delete OOO contact
OutOfOfficeAPI.deleteOooContact(email: email) { (response, error) in
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
 **email** | **String** |  | 

### Return type

[**DeleteOooContact200Response**](DeleteOooContact200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOooStatus**
```swift
    open class func getOooStatus(email: String, completion: @escaping (_ data: GetOooStatus200Response?, _ error: Error?) -> Void)
```

Get OOO status for email

Check if a specific email address is currently out-of-office. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let email = "email_example" // String | 

// Get OOO status for email
OutOfOfficeAPI.getOooStatus(email: email) { (response, error) in
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
 **email** | **String** |  | 

### Return type

[**GetOooStatus200Response**](GetOooStatus200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOooContacts**
```swift
    open class func listOooContacts(activeOnly: Bool? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ListOooContacts200Response?, _ error: Error?) -> Void)
```

List out-of-office contacts

List contacts detected as out-of-office. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let activeOnly = true // Bool | Only return currently active OOO contacts (optional) (default to true)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 100)

// List out-of-office contacts
OutOfOfficeAPI.listOooContacts(activeOnly: activeOnly, page: page, perPage: perPage) { (response, error) in
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
 **activeOnly** | **Bool** | Only return currently active OOO contacts | [optional] [default to true]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 100]

### Return type

[**ListOooContacts200Response**](ListOooContacts200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOooContact**
```swift
    open class func updateOooContact(email: String, updateOooContactRequest: UpdateOooContactRequest, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update OOO contact

Manually set or clear out-of-office status for an email. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let email = "email_example" // String | 
let updateOooContactRequest = updateOooContact_request(isActive: false, oooType: "oooType_example", durationDays: 123) // UpdateOooContactRequest | 

// Update OOO contact
OutOfOfficeAPI.updateOooContact(email: email, updateOooContactRequest: updateOooContactRequest) { (response, error) in
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
 **email** | **String** |  | 
 **updateOooContactRequest** | [**UpdateOooContactRequest**](UpdateOooContactRequest.md) |  | 

### Return type

**AnyCodable**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

