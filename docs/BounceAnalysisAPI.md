# BounceAnalysisAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBounceAnalysis**](BounceAnalysisAPI.md#createbounceanalysis) | **POST** /v1/bounce-analyses | Analyze bounce logs
[**crossReferenceBounces**](BounceAnalysisAPI.md#crossreferencebounces) | **GET** /v1/bounce-analyses/{analysis_id}/cross-reference | Cross-reference bounces with validation logs
[**deleteBounceAnalysis**](BounceAnalysisAPI.md#deletebounceanalysis) | **DELETE** /v1/bounce-analyses/{analysis_id} | Delete bounce analysis
[**getBounceAnalysis**](BounceAnalysisAPI.md#getbounceanalysis) | **GET** /v1/bounce-analyses/{analysis_id} | Get bounce analysis
[**getBounceRecords**](BounceAnalysisAPI.md#getbouncerecords) | **GET** /v1/bounce-analyses/{analysis_id}/records | Get bounce records


# **createBounceAnalysis**
```swift
    open class func createBounceAnalysis(createBounceAnalysisRequest: CreateBounceAnalysisRequest, completion: @escaping (_ data: BounceAnalysisResponse?, _ error: Error?) -> Void)
```

Analyze bounce logs

Submit bounce log data for analysis. Identifies patterns, categorizes bounce types, and provides remediation recommendations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createBounceAnalysisRequest = createBounceAnalysis_request(text: "text_example", name: "name_example") // CreateBounceAnalysisRequest | 

// Analyze bounce logs
BounceAnalysisAPI.createBounceAnalysis(createBounceAnalysisRequest: createBounceAnalysisRequest) { (response, error) in
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
 **createBounceAnalysisRequest** | [**CreateBounceAnalysisRequest**](CreateBounceAnalysisRequest.md) |  | 

### Return type

[**BounceAnalysisResponse**](BounceAnalysisResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **crossReferenceBounces**
```swift
    open class func crossReferenceBounces(analysisId: String, completion: @escaping (_ data: CrossReferenceBounces200Response?, _ error: Error?) -> Void)
```

Cross-reference bounces with validation logs

Match bounced emails against your validation history to identify emails that were validated as deliverable but later bounced.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let analysisId = "analysisId_example" // String | Bounce analysis UUID

// Cross-reference bounces with validation logs
BounceAnalysisAPI.crossReferenceBounces(analysisId: analysisId) { (response, error) in
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
 **analysisId** | **String** | Bounce analysis UUID | 

### Return type

[**CrossReferenceBounces200Response**](CrossReferenceBounces200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBounceAnalysis**
```swift
    open class func deleteBounceAnalysis(analysisId: String, completion: @escaping (_ data: DeletePolicyRule200Response?, _ error: Error?) -> Void)
```

Delete bounce analysis

Delete a bounce analysis and all associated records.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let analysisId = "analysisId_example" // String | Bounce analysis ID

// Delete bounce analysis
BounceAnalysisAPI.deleteBounceAnalysis(analysisId: analysisId) { (response, error) in
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
 **analysisId** | **String** | Bounce analysis ID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBounceAnalysis**
```swift
    open class func getBounceAnalysis(analysisId: String, completion: @escaping (_ data: BounceAnalysisResponse?, _ error: Error?) -> Void)
```

Get bounce analysis

Get the results of a bounce analysis including category breakdown, top offenders, and recommendations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let analysisId = "analysisId_example" // String | Bounce analysis UUID

// Get bounce analysis
BounceAnalysisAPI.getBounceAnalysis(analysisId: analysisId) { (response, error) in
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
 **analysisId** | **String** | Bounce analysis UUID | 

### Return type

[**BounceAnalysisResponse**](BounceAnalysisResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBounceRecords**
```swift
    open class func getBounceRecords(analysisId: String, page: Int? = nil, perPage: Int? = nil, type: ModelType_getBounceRecords? = nil, completion: @escaping (_ data: GetBounceRecords200Response?, _ error: Error?) -> Void)
```

Get bounce records

Get individual bounce records from an analysis with pagination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let analysisId = "analysisId_example" // String | Bounce analysis UUID
let page = 987 // Int | Page number (optional) (default to 1)
let perPage = 987 // Int | Items per page (optional) (default to 50)
let type = "type_example" // String | Filter by bounce type (optional)

// Get bounce records
BounceAnalysisAPI.getBounceRecords(analysisId: analysisId, page: page, perPage: perPage, type: type) { (response, error) in
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
 **analysisId** | **String** | Bounce analysis UUID | 
 **page** | **Int** | Page number | [optional] [default to 1]
 **perPage** | **Int** | Items per page | [optional] [default to 50]
 **type** | **String** | Filter by bounce type | [optional] 

### Return type

[**GetBounceRecords200Response**](GetBounceRecords200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

