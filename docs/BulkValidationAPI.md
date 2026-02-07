# BulkValidationAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelJob**](BulkValidationAPI.md#canceljob) | **POST** /v1/jobs/{job_id}/cancel | Cancel a job
[**createJob**](BulkValidationAPI.md#createjob) | **POST** /v1/jobs | Create bulk validation job (JSON)
[**createJobFromS3**](BulkValidationAPI.md#createjobfroms3) | **POST** /v1/jobs/upload/s3 | Create job from S3 upload
[**createJobUpload**](BulkValidationAPI.md#createjobupload) | **POST** /v1/jobs/upload | Create bulk validation job (file upload)
[**deleteJob**](BulkValidationAPI.md#deletejob) | **DELETE** /v1/jobs/{job_id} | Delete a job
[**getJob**](BulkValidationAPI.md#getjob) | **GET** /v1/jobs/{job_id} | Get job status
[**getJobResults**](BulkValidationAPI.md#getjobresults) | **GET** /v1/jobs/{job_id}/results | Get job results
[**getPresignedUpload**](BulkValidationAPI.md#getpresignedupload) | **POST** /v1/jobs/upload/presigned | Get S3 presigned upload URL
[**listJobs**](BulkValidationAPI.md#listjobs) | **GET** /v1/jobs | List validation jobs


# **cancelJob**
```swift
    open class func cancelJob(jobId: String, completion: @escaping (_ data: JobResponse?, _ error: Error?) -> Void)
```

Cancel a job

Cancel a pending or processing job. Partial results are preserved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let jobId = "jobId_example" // String | 

// Cancel a job
BulkValidationAPI.cancelJob(jobId: jobId) { (response, error) in
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
 **jobId** | **String** |  | 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createJob**
```swift
    open class func createJob(createJobRequest: CreateJobRequest, completion: @escaping (_ data: JobResponse?, _ error: Error?) -> Void)
```

Create bulk validation job (JSON)

Create a new bulk validation job by submitting a JSON array of emails.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createJobRequest = CreateJobRequest(emails: ["emails_example"], dedup: false, metadata: 123, webhookUrl: "webhookUrl_example", idempotencyKey: "idempotencyKey_example") // CreateJobRequest | 

// Create bulk validation job (JSON)
BulkValidationAPI.createJob(createJobRequest: createJobRequest) { (response, error) in
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
 **createJobRequest** | [**CreateJobRequest**](CreateJobRequest.md) |  | 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createJobFromS3**
```swift
    open class func createJobFromS3(createJobFromS3Request: CreateJobFromS3Request, completion: @escaping (_ data: JobResponse?, _ error: Error?) -> Void)
```

Create job from S3 upload

Create a validation job from a file previously uploaded to S3.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createJobFromS3Request = createJobFromS3_request(s3Key: "s3Key_example", dedup: false) // CreateJobFromS3Request | 

// Create job from S3 upload
BulkValidationAPI.createJobFromS3(createJobFromS3Request: createJobFromS3Request) { (response, error) in
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
 **createJobFromS3Request** | [**CreateJobFromS3Request**](CreateJobFromS3Request.md) |  | 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createJobUpload**
```swift
    open class func createJobUpload(file: URL, dedup: Bool? = nil, metadata: String? = nil, completion: @escaping (_ data: JobResponse?, _ error: Error?) -> Void)
```

Create bulk validation job (file upload)

Create a new bulk validation job by uploading a CSV, Excel, or TXT file.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let file = URL(string: "https://example.com")! // URL | CSV, Excel (.xlsx, .xls), ODS, or TXT file
let dedup = true // Bool | Remove duplicate emails (optional) (default to false)
let metadata = "metadata_example" // String | JSON metadata for the job (optional)

// Create bulk validation job (file upload)
BulkValidationAPI.createJobUpload(file: file, dedup: dedup, metadata: metadata) { (response, error) in
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
 **file** | **URL** | CSV, Excel (.xlsx, .xls), ODS, or TXT file | 
 **dedup** | **Bool** | Remove duplicate emails | [optional] [default to false]
 **metadata** | **String** | JSON metadata for the job | [optional] 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJob**
```swift
    open class func deleteJob(jobId: String, completion: @escaping (_ data: DeleteJob200Response?, _ error: Error?) -> Void)
```

Delete a job

Permanently delete a completed or cancelled job and its results.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let jobId = "jobId_example" // String | 

// Delete a job
BulkValidationAPI.deleteJob(jobId: jobId) { (response, error) in
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
 **jobId** | **String** |  | 

### Return type

[**DeleteJob200Response**](DeleteJob200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
```swift
    open class func getJob(jobId: String, completion: @escaping (_ data: JobResponse?, _ error: Error?) -> Void)
```

Get job status

Get the status and details of a specific validation job.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let jobId = "jobId_example" // String | 

// Get job status
BulkValidationAPI.getJob(jobId: jobId) { (response, error) in
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
 **jobId** | **String** |  | 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobResults**
```swift
    open class func getJobResults(jobId: String, format: Format_getJobResults? = nil, filter: Filter_getJobResults? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ResultsResponse?, _ error: Error?) -> Void)
```

Get job results

Download validation results in JSON, CSV, or NDJSON format.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let jobId = "jobId_example" // String | 
let format = "format_example" // String |  (optional) (default to .json)
let filter = "filter_example" // String |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 1000)

// Get job results
BulkValidationAPI.getJobResults(jobId: jobId, format: format, filter: filter, page: page, perPage: perPage) { (response, error) in
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
 **jobId** | **String** |  | 
 **format** | **String** |  | [optional] [default to .json]
 **filter** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 1000]

### Return type

[**ResultsResponse**](ResultsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, application/x-ndjson

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPresignedUpload**
```swift
    open class func getPresignedUpload(getPresignedUploadRequest: GetPresignedUploadRequest, completion: @escaping (_ data: PresignedUploadResponse?, _ error: Error?) -> Void)
```

Get S3 presigned upload URL

Get a presigned URL for uploading large files (>10MB) directly to S3.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let getPresignedUploadRequest = getPresignedUpload_request(filename: "filename_example", contentType: "contentType_example") // GetPresignedUploadRequest | 

// Get S3 presigned upload URL
BulkValidationAPI.getPresignedUpload(getPresignedUploadRequest: getPresignedUploadRequest) { (response, error) in
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
 **getPresignedUploadRequest** | [**GetPresignedUploadRequest**](GetPresignedUploadRequest.md) |  | 

### Return type

[**PresignedUploadResponse**](PresignedUploadResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listJobs**
```swift
    open class func listJobs(page: Int? = nil, perPage: Int? = nil, status: Status_listJobs? = nil, completion: @escaping (_ data: JobListResponse?, _ error: Error?) -> Void)
```

List validation jobs

List all validation jobs for the authenticated account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let status = "status_example" // String |  (optional)

// List validation jobs
BulkValidationAPI.listJobs(page: page, perPage: perPage, status: status) { (response, error) in
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
 **status** | **String** |  | [optional] 

### Return type

[**JobListResponse**](JobListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

