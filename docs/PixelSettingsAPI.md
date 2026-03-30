# PixelSettingsAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPixelSettings**](PixelSettingsAPI.md#getpixelsettings) | **GET** /v1/pixel-settings | Get pixel settings
[**updatePixelSettings**](PixelSettingsAPI.md#updatepixelsettings) | **PATCH** /v1/pixel-settings | Update pixel settings


# **getPixelSettings**
```swift
    open class func getPixelSettings(completion: @escaping (_ data: GetPixelSettings200Response?, _ error: Error?) -> Void)
```

Get pixel settings

Get the web pixel tracking configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Get pixel settings
PixelSettingsAPI.getPixelSettings() { (response, error) in
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

[**GetPixelSettings200Response**](GetPixelSettings200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePixelSettings**
```swift
    open class func updatePixelSettings(updatePixelSettingsRequest: UpdatePixelSettingsRequest, completion: @escaping (_ data: GetPixelSettings200Response?, _ error: Error?) -> Void)
```

Update pixel settings

Update the web pixel subscribe list configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let updatePixelSettingsRequest = updatePixelSettings_request(pixelSubscribeListId: 123) // UpdatePixelSettingsRequest | 

// Update pixel settings
PixelSettingsAPI.updatePixelSettings(updatePixelSettingsRequest: updatePixelSettingsRequest) { (response, error) in
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
 **updatePixelSettingsRequest** | [**UpdatePixelSettingsRequest**](UpdatePixelSettingsRequest.md) |  | 

### Return type

[**GetPixelSettings200Response**](GetPixelSettings200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

