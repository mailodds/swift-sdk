# TemplateVersionsAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**canaryTemplateVersion**](TemplateVersionsAPI.md#canarytemplateversion) | **POST** /v1/campaigns/{campaign_id}/template-versions/{version_id}/canary | Start canary deployment
[**createTemplateVersion**](TemplateVersionsAPI.md#createtemplateversion) | **POST** /v1/campaigns/{campaign_id}/template-versions | Create a template version
[**getTemplateVersion**](TemplateVersionsAPI.md#gettemplateversion) | **GET** /v1/campaigns/{campaign_id}/template-versions/{version_id} | Get a template version
[**listTemplateVersions**](TemplateVersionsAPI.md#listtemplateversions) | **GET** /v1/campaigns/{campaign_id}/template-versions | List template versions
[**promoteTemplateVersion**](TemplateVersionsAPI.md#promotetemplateversion) | **POST** /v1/campaigns/{campaign_id}/template-versions/{version_id}/promote | Promote a template version
[**rollbackTemplateVersion**](TemplateVersionsAPI.md#rollbacktemplateversion) | **POST** /v1/campaigns/{campaign_id}/template-versions/rollback | Rollback template version
[**updateTemplateVersion**](TemplateVersionsAPI.md#updatetemplateversion) | **PUT** /v1/campaigns/{campaign_id}/template-versions/{version_id} | Update a template version


# **canaryTemplateVersion**
```swift
    open class func canaryTemplateVersion(campaignId: String, versionId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start canary deployment

Start a canary deployment for a template version with a specified traffic percentage.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | 
let versionId = "versionId_example" // String | 

// Start canary deployment
TemplateVersionsAPI.canaryTemplateVersion(campaignId: campaignId, versionId: versionId) { (response, error) in
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
 **campaignId** | **String** |  | 
 **versionId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTemplateVersion**
```swift
    open class func createTemplateVersion(campaignId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a template version

Create a new template version for a campaign.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | 

// Create a template version
TemplateVersionsAPI.createTemplateVersion(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplateVersion**
```swift
    open class func getTemplateVersion(campaignId: String, versionId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get a template version

Retrieve a specific template version by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | 
let versionId = "versionId_example" // String | 

// Get a template version
TemplateVersionsAPI.getTemplateVersion(campaignId: campaignId, versionId: versionId) { (response, error) in
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
 **campaignId** | **String** |  | 
 **versionId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTemplateVersions**
```swift
    open class func listTemplateVersions(campaignId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List template versions

List all template versions for a campaign.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | 

// List template versions
TemplateVersionsAPI.listTemplateVersions(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promoteTemplateVersion**
```swift
    open class func promoteTemplateVersion(campaignId: String, versionId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Promote a template version

Promote a template version to active for the campaign.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | 
let versionId = "versionId_example" // String | 

// Promote a template version
TemplateVersionsAPI.promoteTemplateVersion(campaignId: campaignId, versionId: versionId) { (response, error) in
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
 **campaignId** | **String** |  | 
 **versionId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rollbackTemplateVersion**
```swift
    open class func rollbackTemplateVersion(campaignId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Rollback template version

Rollback the canary deployment and revert to the previous active version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | 

// Rollback template version
TemplateVersionsAPI.rollbackTemplateVersion(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTemplateVersion**
```swift
    open class func updateTemplateVersion(campaignId: String, versionId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a template version

Update an existing template version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | 
let versionId = "versionId_example" // String | 

// Update a template version
TemplateVersionsAPI.updateTemplateVersion(campaignId: campaignId, versionId: versionId) { (response, error) in
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
 **campaignId** | **String** |  | 
 **versionId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

