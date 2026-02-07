# ValidationPoliciesAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPolicyRule**](ValidationPoliciesAPI.md#addpolicyrule) | **POST** /v1/policies/{policy_id}/rules | Add rule to policy
[**createPolicy**](ValidationPoliciesAPI.md#createpolicy) | **POST** /v1/policies | Create policy
[**createPolicyFromPreset**](ValidationPoliciesAPI.md#createpolicyfrompreset) | **POST** /v1/policies/from-preset | Create policy from preset
[**deletePolicy**](ValidationPoliciesAPI.md#deletepolicy) | **DELETE** /v1/policies/{policy_id} | Delete policy
[**deletePolicyRule**](ValidationPoliciesAPI.md#deletepolicyrule) | **DELETE** /v1/policies/{policy_id}/rules/{rule_id} | Delete rule
[**getPolicy**](ValidationPoliciesAPI.md#getpolicy) | **GET** /v1/policies/{policy_id} | Get policy
[**getPolicyPresets**](ValidationPoliciesAPI.md#getpolicypresets) | **GET** /v1/policies/presets | Get policy presets
[**listPolicies**](ValidationPoliciesAPI.md#listpolicies) | **GET** /v1/policies | List policies
[**testPolicy**](ValidationPoliciesAPI.md#testpolicy) | **POST** /v1/policies/test | Test policy evaluation
[**updatePolicy**](ValidationPoliciesAPI.md#updatepolicy) | **PUT** /v1/policies/{policy_id} | Update policy


# **addPolicyRule**
```swift
    open class func addPolicyRule(policyId: Int, policyRule: PolicyRule, completion: @escaping (_ data: AddPolicyRule201Response?, _ error: Error?) -> Void)
```

Add rule to policy

Add a new rule to an existing policy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let policyId = 987 // Int | 
let policyRule = PolicyRule(id: 123, type: "type_example", condition: 123, action: PolicyRule_action(action: "action_example"), sequence: 123, isEnabled: false) // PolicyRule | 

// Add rule to policy
ValidationPoliciesAPI.addPolicyRule(policyId: policyId, policyRule: policyRule) { (response, error) in
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
 **policyId** | **Int** |  | 
 **policyRule** | [**PolicyRule**](PolicyRule.md) |  | 

### Return type

[**AddPolicyRule201Response**](AddPolicyRule201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPolicy**
```swift
    open class func createPolicy(createPolicyRequest: CreatePolicyRequest, completion: @escaping (_ data: PolicyResponse?, _ error: Error?) -> Void)
```

Create policy

Create a new validation policy with rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createPolicyRequest = CreatePolicyRequest(name: "name_example", description: "description_example", isDefault: false, rules: [PolicyRule(id: 123, type: "type_example", condition: 123, action: PolicyRule_action(action: "action_example"), sequence: 123, isEnabled: false)]) // CreatePolicyRequest | 

// Create policy
ValidationPoliciesAPI.createPolicy(createPolicyRequest: createPolicyRequest) { (response, error) in
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
 **createPolicyRequest** | [**CreatePolicyRequest**](CreatePolicyRequest.md) |  | 

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPolicyFromPreset**
```swift
    open class func createPolicyFromPreset(createPolicyFromPresetRequest: CreatePolicyFromPresetRequest, completion: @escaping (_ data: PolicyResponse?, _ error: Error?) -> Void)
```

Create policy from preset

Create a policy using a preset template.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createPolicyFromPresetRequest = createPolicyFromPreset_request(presetId: "presetId_example", name: "name_example", isDefault: false) // CreatePolicyFromPresetRequest | 

// Create policy from preset
ValidationPoliciesAPI.createPolicyFromPreset(createPolicyFromPresetRequest: createPolicyFromPresetRequest) { (response, error) in
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
 **createPolicyFromPresetRequest** | [**CreatePolicyFromPresetRequest**](CreatePolicyFromPresetRequest.md) |  | 

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePolicy**
```swift
    open class func deletePolicy(policyId: Int, completion: @escaping (_ data: DeletePolicy200Response?, _ error: Error?) -> Void)
```

Delete policy

Delete a policy and all its rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let policyId = 987 // Int | 

// Delete policy
ValidationPoliciesAPI.deletePolicy(policyId: policyId) { (response, error) in
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
 **policyId** | **Int** |  | 

### Return type

[**DeletePolicy200Response**](DeletePolicy200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePolicyRule**
```swift
    open class func deletePolicyRule(policyId: Int, ruleId: Int, completion: @escaping (_ data: DeletePolicyRule200Response?, _ error: Error?) -> Void)
```

Delete rule

Delete a rule from a policy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let policyId = 987 // Int | 
let ruleId = 987 // Int | 

// Delete rule
ValidationPoliciesAPI.deletePolicyRule(policyId: policyId, ruleId: ruleId) { (response, error) in
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
 **policyId** | **Int** |  | 
 **ruleId** | **Int** |  | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPolicy**
```swift
    open class func getPolicy(policyId: Int, completion: @escaping (_ data: PolicyResponse?, _ error: Error?) -> Void)
```

Get policy

Get a single policy with its rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let policyId = 987 // Int | 

// Get policy
ValidationPoliciesAPI.getPolicy(policyId: policyId) { (response, error) in
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
 **policyId** | **Int** |  | 

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPolicyPresets**
```swift
    open class func getPolicyPresets(completion: @escaping (_ data: PolicyPresetsResponse?, _ error: Error?) -> Void)
```

Get policy presets

Get available preset templates for quick policy creation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Get policy presets
ValidationPoliciesAPI.getPolicyPresets() { (response, error) in
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

[**PolicyPresetsResponse**](PolicyPresetsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPolicies**
```swift
    open class func listPolicies(includeRules: Bool? = nil, completion: @escaping (_ data: PolicyListResponse?, _ error: Error?) -> Void)
```

List policies

List all validation policies for your account. Includes plan limits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let includeRules = true // Bool | Include full rules in response (optional) (default to false)

// List policies
ValidationPoliciesAPI.listPolicies(includeRules: includeRules) { (response, error) in
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
 **includeRules** | **Bool** | Include full rules in response | [optional] [default to false]

### Return type

[**PolicyListResponse**](PolicyListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testPolicy**
```swift
    open class func testPolicy(testPolicyRequest: TestPolicyRequest, completion: @escaping (_ data: PolicyTestResponse?, _ error: Error?) -> Void)
```

Test policy evaluation

Test how a policy would evaluate a validation result without affecting production.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let testPolicyRequest = testPolicy_request(policyId: 123, testResult: testPolicy_request_test_result(email: "email_example", status: "status_example", action: "action_example", domain: "domain_example", subStatus: "subStatus_example")) // TestPolicyRequest | 

// Test policy evaluation
ValidationPoliciesAPI.testPolicy(testPolicyRequest: testPolicyRequest) { (response, error) in
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
 **testPolicyRequest** | [**TestPolicyRequest**](TestPolicyRequest.md) |  | 

### Return type

[**PolicyTestResponse**](PolicyTestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePolicy**
```swift
    open class func updatePolicy(policyId: Int, updatePolicyRequest: UpdatePolicyRequest, completion: @escaping (_ data: PolicyResponse?, _ error: Error?) -> Void)
```

Update policy

Update a policy's settings (name, enabled, default).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let policyId = 987 // Int | 
let updatePolicyRequest = updatePolicy_request(name: "name_example", description: "description_example", isEnabled: false, isDefault: false) // UpdatePolicyRequest | 

// Update policy
ValidationPoliciesAPI.updatePolicy(policyId: policyId, updatePolicyRequest: updatePolicyRequest) { (response, error) in
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
 **policyId** | **Int** |  | 
 **updatePolicyRequest** | [**UpdatePolicyRequest**](UpdatePolicyRequest.md) |  | 

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

