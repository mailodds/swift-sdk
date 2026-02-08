# ValidationResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | 
**email** | **String** |  | 
**status** | **String** | Validation status | 
**action** | **String** | Recommended action | 
**subStatus** | **String** | Detailed status reason. Omitted when none. | [optional] 
**domain** | **String** |  | 
**mxFound** | **Bool** | Whether MX records were found for the domain | 
**mxHost** | **String** | Primary MX hostname. Omitted when MX not resolved. | [optional] 
**smtpCheck** | **Bool** | Whether SMTP verification passed. Omitted when SMTP not checked. | [optional] 
**catchAll** | **Bool** | Whether domain is catch-all. Omitted when SMTP not checked. | [optional] 
**disposable** | **Bool** | Whether domain is a known disposable email provider | 
**roleAccount** | **Bool** | Whether address is a role account (e.g., info@, admin@) | 
**freeProvider** | **Bool** | Whether domain is a known free email provider (e.g., gmail.com) | 
**depth** | **String** | Validation depth used for this check | 
**processedAt** | **Date** | ISO 8601 timestamp of validation | 
**suggestedEmail** | **String** | Typo correction suggestion. Omitted when no typo detected. | [optional] 
**retryAfterMs** | **Int** | Suggested retry delay in milliseconds. Present only for retry_later action. | [optional] 
**suppressionMatch** | [**ValidationResponseSuppressionMatch**](ValidationResponseSuppressionMatch.md) |  | [optional] 
**policyApplied** | [**ValidationResponsePolicyApplied**](ValidationResponsePolicyApplied.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


