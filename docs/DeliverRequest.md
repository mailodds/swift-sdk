# DeliverRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | [DeliverRequestToInner] | List of recipient email addresses | 
**from** | **String** | Sender email address (must match sending domain) | 
**subject** | **String** | Email subject line | 
**html** | **String** | HTML email body | [optional] 
**text** | **String** | Plain text email body | [optional] 
**domainId** | **String** | Sending domain UUID. Optional -- auto-resolved from the from address, or falls back to primary domain. | [optional] 
**replyTo** | **String** | Reply-to address | [optional] 
**headers** | **AnyCodable** | Extra email headers | [optional] 
**tags** | **[String]** | Tags for categorization | [optional] 
**campaignType** | **String** | Campaign type for JSON-LD auto-generation | [optional] 
**structuredData** | [**DeliverRequestStructuredData**](DeliverRequestStructuredData.md) |  | [optional] 
**schemaData** | **[String: String]** | Key-value pairs for campaign_type JSON-LD resolution (e.g., order_number, tracking_url) | [optional] 
**autoDetectSchema** | **Bool** | Auto-detect JSON-LD structured data type from subject line | [optional] [default to false]
**aiSummary** | **String** | Hidden text summary for AI email assistants (max 500 characters) | [optional] 
**options** | [**DeliverRequestOptions**](DeliverRequestOptions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


