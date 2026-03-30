# ReputationPoliciesAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createReputationPolicy**](ReputationPoliciesAPI.md#createreputationpolicy) | **POST** /v1/reputation-policies | Create a reputation policy
[**createReputationPolicyFromPreset**](ReputationPoliciesAPI.md#createreputationpolicyfrompreset) | **POST** /v1/reputation-policies/from-preset | Create a reputation policy from preset
[**deleteReputationPolicy**](ReputationPoliciesAPI.md#deletereputationpolicy) | **DELETE** /v1/reputation-policies/{policy_id} | Delete a reputation policy
[**getReputationPolicy**](ReputationPoliciesAPI.md#getreputationpolicy) | **GET** /v1/reputation-policies/{policy_id} | Get a reputation policy
[**getReputationPolicyStatus**](ReputationPoliciesAPI.md#getreputationpolicystatus) | **GET** /v1/reputation-policies/{policy_id}/status | Get reputation policy status
[**listReputationPolicies**](ReputationPoliciesAPI.md#listreputationpolicies) | **GET** /v1/reputation-policies | List reputation policies
[**testReputationPolicy**](ReputationPoliciesAPI.md#testreputationpolicy) | **POST** /v1/reputation-policies/{policy_id}/test | Test a reputation policy
[**updateReputationPolicy**](ReputationPoliciesAPI.md#updatereputationpolicy) | **PUT** /v1/reputation-policies/{policy_id} | Update a reputation policy


# **createReputationPolicy**
```swift
    open class func createReputationPolicy(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a reputation policy

Create a new reputation policy with custom rules and thresholds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Create a reputation policy
ReputationPoliciesAPI.createReputationPolicy() { (response, error) in
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

# **createReputationPolicyFromPreset**
```swift
    open class func createReputationPolicyFromPreset(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a reputation policy from preset

Create a reputation policy from a predefined preset template.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Create a reputation policy from preset
ReputationPoliciesAPI.createReputationPolicyFromPreset() { (response, error) in
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

# **deleteReputationPolicy**
```swift
    open class func deleteReputationPolicy(policyId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a reputation policy

Soft-delete a reputation policy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let policyId = "policyId_example" // String | 

// Delete a reputation policy
ReputationPoliciesAPI.deleteReputationPolicy(policyId: policyId) { (response, error) in
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
 **policyId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReputationPolicy**
```swift
    open class func getReputationPolicy(policyId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get a reputation policy

Retrieve a single reputation policy by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let policyId = "policyId_example" // String | 

// Get a reputation policy
ReputationPoliciesAPI.getReputationPolicy(policyId: policyId) { (response, error) in
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
 **policyId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReputationPolicyStatus**
```swift
    open class func getReputationPolicyStatus(policyId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get reputation policy status

Evaluate a policy and return per-domain status results.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let policyId = "policyId_example" // String | 

// Get reputation policy status
ReputationPoliciesAPI.getReputationPolicyStatus(policyId: policyId) { (response, error) in
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
 **policyId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listReputationPolicies**
```swift
    open class func listReputationPolicies(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List reputation policies

List all reputation policies for the account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List reputation policies
ReputationPoliciesAPI.listReputationPolicies() { (response, error) in
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

# **testReputationPolicy**
```swift
    open class func testReputationPolicy(policyId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Test a reputation policy

Dry-run evaluation of a reputation policy without applying actions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let policyId = "policyId_example" // String | 

// Test a reputation policy
ReputationPoliciesAPI.testReputationPolicy(policyId: policyId) { (response, error) in
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
 **policyId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateReputationPolicy**
```swift
    open class func updateReputationPolicy(policyId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a reputation policy

Update an existing reputation policy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let policyId = "policyId_example" // String | 

// Update a reputation policy
ReputationPoliciesAPI.updateReputationPolicy(policyId: policyId) { (response, error) in
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
 **policyId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

