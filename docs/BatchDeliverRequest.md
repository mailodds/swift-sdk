# BatchDeliverRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **[String]** | List of recipient email addresses (max 100) | 
**from** | **String** |  | 
**subject** | **String** |  | 
**html** | **String** |  | [optional] 
**text** | **String** |  | [optional] 
**domainId** | **String** | Sending domain UUID. Optional -- auto-resolved from the from address, or falls back to primary domain. | [optional] 
**replyTo** | **String** |  | [optional] 
**headers** | **AnyCodable** |  | [optional] 
**tags** | **[String]** |  | [optional] 
**campaignType** | **String** |  | [optional] 
**structuredData** | [**BatchDeliverRequestStructuredData**](BatchDeliverRequestStructuredData.md) |  | [optional] 
**options** | **AnyCodable** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


