# InboundRulesAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInboundRule**](InboundRulesAPI.md#createinboundrule) | **POST** /v1/sending-domains/{domain_id}/inbound-rules | Create an inbound rule
[**deleteInboundRule**](InboundRulesAPI.md#deleteinboundrule) | **DELETE** /v1/sending-domains/{domain_id}/inbound-rules/{rule_id} | Delete an inbound rule
[**dryRunInboundRules**](InboundRulesAPI.md#dryruninboundrules) | **POST** /v1/sending-domains/{domain_id}/inbound-rules/dry-run | Dry-run inbound rules
[**getInboundRule**](InboundRulesAPI.md#getinboundrule) | **GET** /v1/sending-domains/{domain_id}/inbound-rules/{rule_id} | Get an inbound rule
[**listInboundRules**](InboundRulesAPI.md#listinboundrules) | **GET** /v1/sending-domains/{domain_id}/inbound-rules | List inbound rules
[**updateInboundRule**](InboundRulesAPI.md#updateinboundrule) | **PUT** /v1/sending-domains/{domain_id}/inbound-rules/{rule_id} | Update an inbound rule


# **createInboundRule**
```swift
    open class func createInboundRule(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create an inbound rule

Create an inbound routing rule for a sending domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Create an inbound rule
InboundRulesAPI.createInboundRule(domainId: domainId) { (response, error) in
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
 **domainId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInboundRule**
```swift
    open class func deleteInboundRule(domainId: String, ruleId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an inbound rule

Delete an inbound routing rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 
let ruleId = "ruleId_example" // String | 

// Delete an inbound rule
InboundRulesAPI.deleteInboundRule(domainId: domainId, ruleId: ruleId) { (response, error) in
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
 **domainId** | **String** |  | 
 **ruleId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dryRunInboundRules**
```swift
    open class func dryRunInboundRules(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Dry-run inbound rules

Evaluate inbound rules against a test message without side effects.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// Dry-run inbound rules
InboundRulesAPI.dryRunInboundRules(domainId: domainId) { (response, error) in
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
 **domainId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboundRule**
```swift
    open class func getInboundRule(domainId: String, ruleId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get an inbound rule

Retrieve a specific inbound routing rule by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 
let ruleId = "ruleId_example" // String | 

// Get an inbound rule
InboundRulesAPI.getInboundRule(domainId: domainId, ruleId: ruleId) { (response, error) in
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
 **domainId** | **String** |  | 
 **ruleId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInboundRules**
```swift
    open class func listInboundRules(domainId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List inbound rules

List all inbound routing rules for a sending domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 

// List inbound rules
InboundRulesAPI.listInboundRules(domainId: domainId) { (response, error) in
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
 **domainId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInboundRule**
```swift
    open class func updateInboundRule(domainId: String, ruleId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update an inbound rule

Update an existing inbound routing rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let domainId = "domainId_example" // String | 
let ruleId = "ruleId_example" // String | 

// Update an inbound rule
InboundRulesAPI.updateInboundRule(domainId: domainId, ruleId: ruleId) { (response, error) in
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
 **domainId** | **String** |  | 
 **ruleId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

