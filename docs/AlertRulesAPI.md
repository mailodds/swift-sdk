# AlertRulesAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlertRule**](AlertRulesAPI.md#createalertrule) | **POST** /v1/alert-rules | Create alert rule
[**deleteAlertRule**](AlertRulesAPI.md#deletealertrule) | **DELETE** /v1/alert-rules/{rule_id} | Delete alert rule
[**getAlertRule**](AlertRulesAPI.md#getalertrule) | **GET** /v1/alert-rules/{rule_id} | Get alert rule
[**listAlertRules**](AlertRulesAPI.md#listalertrules) | **GET** /v1/alert-rules | List alert rules
[**updateAlertRule**](AlertRulesAPI.md#updatealertrule) | **PUT** /v1/alert-rules/{rule_id} | Update alert rule


# **createAlertRule**
```swift
    open class func createAlertRule(createAlertRuleRequest: CreateAlertRuleRequest, completion: @escaping (_ data: CreateAlertRule201Response?, _ error: Error?) -> Void)
```

Create alert rule

Create a new metric threshold alert rule. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let createAlertRuleRequest = createAlertRule_request(metric: "metric_example", threshold: 123, channel: "channel_example", windowMinutes: 123, enabled: false) // CreateAlertRuleRequest | 

// Create alert rule
AlertRulesAPI.createAlertRule(createAlertRuleRequest: createAlertRuleRequest) { (response, error) in
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
 **createAlertRuleRequest** | [**CreateAlertRuleRequest**](CreateAlertRuleRequest.md) |  | 

### Return type

[**CreateAlertRule201Response**](CreateAlertRule201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAlertRule**
```swift
    open class func deleteAlertRule(ruleId: String, completion: @escaping (_ data: DeletePolicyRule200Response?, _ error: Error?) -> Void)
```

Delete alert rule

Delete an alert rule. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let ruleId = "ruleId_example" // String | 

// Delete alert rule
AlertRulesAPI.deleteAlertRule(ruleId: ruleId) { (response, error) in
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
 **ruleId** | **String** |  | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlertRule**
```swift
    open class func getAlertRule(ruleId: String, completion: @escaping (_ data: CreateAlertRule201Response?, _ error: Error?) -> Void)
```

Get alert rule

Get a single alert rule by ID. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let ruleId = "ruleId_example" // String | 

// Get alert rule
AlertRulesAPI.getAlertRule(ruleId: ruleId) { (response, error) in
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
 **ruleId** | **String** |  | 

### Return type

[**CreateAlertRule201Response**](CreateAlertRule201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAlertRules**
```swift
    open class func listAlertRules(completion: @escaping (_ data: ListAlertRules200Response?, _ error: Error?) -> Void)
```

List alert rules

List all configured alert rules. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// List alert rules
AlertRulesAPI.listAlertRules() { (response, error) in
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

[**ListAlertRules200Response**](ListAlertRules200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAlertRule**
```swift
    open class func updateAlertRule(ruleId: String, updateAlertRuleRequest: UpdateAlertRuleRequest, completion: @escaping (_ data: CreateAlertRule201Response?, _ error: Error?) -> Void)
```

Update alert rule

Update an existing alert rule. Requires Growth+ plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let ruleId = "ruleId_example" // String | 
let updateAlertRuleRequest = updateAlertRule_request(metric: "metric_example", threshold: 123, channel: "channel_example", windowMinutes: 123, enabled: false) // UpdateAlertRuleRequest | 

// Update alert rule
AlertRulesAPI.updateAlertRule(ruleId: ruleId, updateAlertRuleRequest: updateAlertRuleRequest) { (response, error) in
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
 **ruleId** | **String** |  | 
 **updateAlertRuleRequest** | [**UpdateAlertRuleRequest**](UpdateAlertRuleRequest.md) |  | 

### Return type

[**CreateAlertRule201Response**](CreateAlertRule201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

