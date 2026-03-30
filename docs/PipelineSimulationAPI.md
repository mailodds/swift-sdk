# PipelineSimulationAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**simulatePipeline**](PipelineSimulationAPI.md#simulatepipeline) | **POST** /v1/simulate | Simulate sending pipeline


# **simulatePipeline**
```swift
    open class func simulatePipeline(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Simulate sending pipeline

Dry-run the sending or receiving pipeline to preview what would happen without side effects.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Simulate sending pipeline
PipelineSimulationAPI.simulatePipeline() { (response, error) in
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

