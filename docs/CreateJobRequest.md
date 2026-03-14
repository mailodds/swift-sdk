# CreateJobRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emails** | **[String]** | List of emails to validate | 
**dedup** | **Bool** | Remove duplicate emails | [optional] [default to false]
**metadata** | **JSONValue** | Custom metadata for the job | [optional] 
**webhookUrl** | **String** | URL for completion webhook. Payloads are signed with HMAC-SHA256 if a webhook secret is configured (see Webhooks section). | [optional] 
**idempotencyKey** | **String** | Unique key for idempotent requests | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


