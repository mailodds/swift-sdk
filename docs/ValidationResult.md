# ValidationResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | 
**status** | **String** |  | 
**subStatus** | **String** | Detailed reason. Omitted when none. | [optional] 
**action** | **String** |  | 
**domain** | **String** | Email domain | 
**mxHost** | **String** | Primary MX hostname. Omitted when not resolved. | [optional] 
**checks** | **[String: JSONValue]** | Detailed check results (JSONB). Omitted when not available. | [optional] 
**suppression** | [**ValidationResultSuppression**](ValidationResultSuppression.md) |  | [optional] 
**processedAt** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


