# EngagementAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDisengagedContacts**](EngagementAPI.md#getdisengagedcontacts) | **GET** /v1/engagement/disengaged | List disengaged contacts
[**getEngagementScore**](EngagementAPI.md#getengagementscore) | **GET** /v1/engagement/score/{email} | Get engagement score
[**getEngagementSummary**](EngagementAPI.md#getengagementsummary) | **GET** /v1/engagement/summary | Get engagement summary
[**suppressDisengaged**](EngagementAPI.md#suppressdisengaged) | **POST** /v1/engagement/suppress-disengaged | Suppress disengaged contacts


# **getDisengagedContacts**
```swift
    open class func getDisengagedContacts(inactiveDays: Int? = nil, minSends: Int? = nil, domainId: String? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: GetDisengagedContacts200Response?, _ error: Error?) -> Void)
```

List disengaged contacts

List contacts that have not engaged within the specified period. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let inactiveDays = 987 // Int | Days of inactivity (optional) (default to 90)
let minSends = 987 // Int | Minimum emails sent to qualify (optional) (default to 5)
let domainId = "domainId_example" // String | Filter by sending domain ID (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 100)

// List disengaged contacts
EngagementAPI.getDisengagedContacts(inactiveDays: inactiveDays, minSends: minSends, domainId: domainId, page: page, perPage: perPage) { (response, error) in
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
 **inactiveDays** | **Int** | Days of inactivity | [optional] [default to 90]
 **minSends** | **Int** | Minimum emails sent to qualify | [optional] [default to 5]
 **domainId** | **String** | Filter by sending domain ID | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 100]

### Return type

[**GetDisengagedContacts200Response**](GetDisengagedContacts200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEngagementScore**
```swift
    open class func getEngagementScore(email: String, completion: @escaping (_ data: GetEngagementScore200Response?, _ error: Error?) -> Void)
```

Get engagement score

Get the engagement score for a specific email address. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let email = "email_example" // String | 

// Get engagement score
EngagementAPI.getEngagementScore(email: email) { (response, error) in
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

[**GetEngagementScore200Response**](GetEngagementScore200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEngagementSummary**
```swift
    open class func getEngagementSummary(domainId: String? = nil, completion: @escaping (_ data: GetBounceStatsSummary200Response?, _ error: Error?) -> Void)
```

Get engagement summary

Get aggregate engagement metrics across all contacts. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | Filter by sending domain ID (optional)

// Get engagement summary
EngagementAPI.getEngagementSummary(domainId: domainId) { (response, error) in
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
 **domainId** | **String** | Filter by sending domain ID | [optional] 

### Return type

[**GetBounceStatsSummary200Response**](GetBounceStatsSummary200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suppressDisengaged**
```swift
    open class func suppressDisengaged(suppressDisengagedRequest: SuppressDisengagedRequest, completion: @escaping (_ data: SuppressDisengaged200Response?, _ error: Error?) -> Void)
```

Suppress disengaged contacts

Add disengaged contacts to the suppression list. Supports dry_run mode. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let suppressDisengagedRequest = suppressDisengaged_request(inactiveDays: 123, minSends: 123, dryRun: false) // SuppressDisengagedRequest | 

// Suppress disengaged contacts
EngagementAPI.suppressDisengaged(suppressDisengagedRequest: suppressDisengagedRequest) { (response, error) in
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
 **suppressDisengagedRequest** | [**SuppressDisengagedRequest**](SuppressDisengagedRequest.md) |  | 

### Return type

[**SuppressDisengaged200Response**](SuppressDisengaged200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

