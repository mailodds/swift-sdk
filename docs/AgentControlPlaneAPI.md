# AgentControlPlaneAPI

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMcpCapabilities**](AgentControlPlaneAPI.md#getmcpcapabilities) | **GET** /v1/mcp/capabilities | Get MCP capabilities


# **getMcpCapabilities**
```swift
    open class func getMcpCapabilities(completion: @escaping (_ data: McpCapabilities?, _ error: Error?) -> Void)
```

Get MCP capabilities

Returns a static capability manifest listing all MCP tools organized by pillar. Used by AI agents for tool discovery and scope-based self-correction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Get MCP capabilities
AgentControlPlaneAPI.getMcpCapabilities() { (response, error) in
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

[**McpCapabilities**](McpCapabilities.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

