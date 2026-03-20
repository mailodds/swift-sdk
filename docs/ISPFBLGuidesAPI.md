# ISPFBLGuidesAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIspFblGuide**](ISPFBLGuidesAPI.md#getispfblguide) | **GET** /v1/isp-fbl/guides/{isp_id} | Get ISP FBL guide
[**listIspFblGuides**](ISPFBLGuidesAPI.md#listispfblguides) | **GET** /v1/isp-fbl/guides | List ISP FBL guides


# **getIspFblGuide**
```swift
    open class func getIspFblGuide(ispId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get ISP FBL guide

Retrieve a specific ISP feedback loop setup guide.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let ispId = "ispId_example" // String | 

// Get ISP FBL guide
ISPFBLGuidesAPI.getIspFblGuide(ispId: ispId) { (response, error) in
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
 **ispId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIspFblGuides**
```swift
    open class func listIspFblGuides(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List ISP FBL guides

List all ISP feedback loop setup guides.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List ISP FBL guides
ISPFBLGuidesAPI.listIspFblGuides() { (response, error) in
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

