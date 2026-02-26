# DeliverRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | [DeliverRequestToInner] | List of recipient email addresses | 
**from** | **String** | Sender email address (must match sending domain) | 
**subject** | **String** | Email subject line | 
**html** | **String** | HTML email body | [optional] 
**text** | **String** | Plain text email body | [optional] 
**domainId** | **String** | Sending domain UUID | 
**replyTo** | **String** | Reply-to address | [optional] 
**headers** | **JSONValue** | Extra email headers | [optional] 
**tags** | **[String]** | Tags for categorization | [optional] 
**campaignType** | **String** | Campaign type for JSON-LD auto-generation | [optional] 
**structuredData** | [**DeliverRequestStructuredData**](DeliverRequestStructuredData.md) |  | [optional] 
**options** | [**DeliverRequestOptions**](DeliverRequestOptions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


