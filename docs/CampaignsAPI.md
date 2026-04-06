# CampaignsAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelCampaign**](CampaignsAPI.md#cancelcampaign) | **POST** /v1/campaigns/{campaign_id}/cancel | Cancel a campaign
[**createCampaign**](CampaignsAPI.md#createcampaign) | **POST** /v1/campaigns | Create a campaign
[**createCampaignVariant**](CampaignsAPI.md#createcampaignvariant) | **POST** /v1/campaigns/{campaign_id}/variants | Create A/B variant
[**deleteCampaign**](CampaignsAPI.md#deletecampaign) | **DELETE** /v1/campaigns/{campaign_id} | Delete a campaign
[**getCampaign**](CampaignsAPI.md#getcampaign) | **GET** /v1/campaigns/{campaign_id} | Get campaign with stats
[**listCampaigns**](CampaignsAPI.md#listcampaigns) | **GET** /v1/campaigns | List campaigns
[**scheduleCampaign**](CampaignsAPI.md#schedulecampaign) | **POST** /v1/campaigns/{campaign_id}/schedule | Schedule a campaign
[**sendCampaign**](CampaignsAPI.md#sendcampaign) | **POST** /v1/campaigns/{campaign_id}/send | Send a campaign


# **cancelCampaign**
```swift
    open class func cancelCampaign(campaignId: String, completion: @escaping (_ data: CampaignResponse?, _ error: Error?) -> Void)
```

Cancel a campaign

Cancel a scheduled or in-progress campaign. Messages already delivered are not recalled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID

// Cancel a campaign
CampaignsAPI.cancelCampaign(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 

### Return type

[**CampaignResponse**](CampaignResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCampaign**
```swift
    open class func createCampaign(createCampaignRequest: CreateCampaignRequest, completion: @escaping (_ data: CampaignResponse?, _ error: Error?) -> Void)
```

Create a campaign

Create a new email campaign. Campaigns target a subscriber list and support A/B variant testing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createCampaignRequest = CreateCampaignRequest(name: "name_example", listId: "listId_example", domainId: "domainId_example", fromEmail: "fromEmail_example", fromName: "fromName_example", replyTo: "replyTo_example", tags: ["tags_example"]) // CreateCampaignRequest | 

// Create a campaign
CampaignsAPI.createCampaign(createCampaignRequest: createCampaignRequest) { (response, error) in
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
 **createCampaignRequest** | [**CreateCampaignRequest**](CreateCampaignRequest.md) |  | 

### Return type

[**CampaignResponse**](CampaignResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCampaignVariant**
```swift
    open class func createCampaignVariant(campaignId: String, createVariantRequest: CreateVariantRequest, completion: @escaping (_ data: CreateCampaignVariant201Response?, _ error: Error?) -> Void)
```

Create A/B variant

Add an A/B test variant to a campaign. Each variant has its own subject, body, and traffic weight. The campaign must be in draft status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID
let createVariantRequest = CreateVariantRequest(name: "name_example", subject: "subject_example", html: "html_example", text: "text_example", weight: 123) // CreateVariantRequest | 

// Create A/B variant
CampaignsAPI.createCampaignVariant(campaignId: campaignId, createVariantRequest: createVariantRequest) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 
 **createVariantRequest** | [**CreateVariantRequest**](CreateVariantRequest.md) |  | 

### Return type

[**CreateCampaignVariant201Response**](CreateCampaignVariant201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCampaign**
```swift
    open class func deleteCampaign(campaignId: String, completion: @escaping (_ data: DeletePolicyRule200Response?, _ error: Error?) -> Void)
```

Delete a campaign

Permanently delete a campaign. Only campaigns in draft, sent, failed, or cancelled status can be deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID

// Delete a campaign
CampaignsAPI.deleteCampaign(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaign**
```swift
    open class func getCampaign(campaignId: String, completion: @escaping (_ data: CampaignResponse?, _ error: Error?) -> Void)
```

Get campaign with stats

Get a campaign by ID including delivery statistics and engagement metrics.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID

// Get campaign with stats
CampaignsAPI.getCampaign(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 

### Return type

[**CampaignResponse**](CampaignResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCampaigns**
```swift
    open class func listCampaigns(page: Int? = nil, perPage: Int? = nil, status: Status_listCampaigns? = nil, completion: @escaping (_ data: ListCampaigns200Response?, _ error: Error?) -> Void)
```

List campaigns

List all campaigns for the authenticated account with pagination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let page = 987 // Int | Page number (optional) (default to 1)
let perPage = 987 // Int | Items per page (optional) (default to 25)
let status = "status_example" // String | Filter by campaign status (optional)

// List campaigns
CampaignsAPI.listCampaigns(page: page, perPage: perPage, status: status) { (response, error) in
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
 **status** | **String** | Filter by campaign status | [optional] 

### Return type

[**ListCampaigns200Response**](ListCampaigns200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scheduleCampaign**
```swift
    open class func scheduleCampaign(campaignId: String, scheduleCampaignRequest: ScheduleCampaignRequest, completion: @escaping (_ data: CampaignResponse?, _ error: Error?) -> Void)
```

Schedule a campaign

Schedule a campaign for future delivery. Provide a send_at timestamp in ISO 8601 format.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID
let scheduleCampaignRequest = scheduleCampaign_request(sendAt: Date()) // ScheduleCampaignRequest | 

// Schedule a campaign
CampaignsAPI.scheduleCampaign(campaignId: campaignId, scheduleCampaignRequest: scheduleCampaignRequest) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 
 **scheduleCampaignRequest** | [**ScheduleCampaignRequest**](ScheduleCampaignRequest.md) |  | 

### Return type

[**CampaignResponse**](CampaignResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendCampaign**
```swift
    open class func sendCampaign(campaignId: String, completion: @escaping (_ data: CampaignResponse?, _ error: Error?) -> Void)
```

Send a campaign

Begin sending a campaign immediately. The campaign must be in draft status with at least one variant and a target list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let campaignId = "campaignId_example" // String | Campaign UUID

// Send a campaign
CampaignsAPI.sendCampaign(campaignId: campaignId) { (response, error) in
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
 **campaignId** | **String** | Campaign UUID | 

### Return type

[**CampaignResponse**](CampaignResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

