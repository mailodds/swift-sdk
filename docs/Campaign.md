# Campaign

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Campaign UUID | 
**accountId** | **Int** |  | [optional] 
**name** | **String** | Campaign name | 
**status** | **String** |  | 
**domainId** | **String** | Sending domain UUID | 
**subject** | **String** |  | [optional] 
**fromAddress** | **String** | Sender email address | 
**replyTo** | **String** |  | [optional] 
**htmlBody** | **String** |  | [optional] 
**textBody** | **String** |  | [optional] 
**htmlBodyDark** | **String** |  | [optional] 
**textBodyDark** | **String** |  | [optional] 
**campaignType** | **String** |  | [optional] 
**autoDetectSchema** | **Bool** |  | [optional] 
**promoAnnotations** | **AnyCodable** |  | [optional] 
**throwawayPolicy** | **String** |  | [optional] 
**scheduledAt** | **Date** |  | [optional] 
**startedAt** | **Date** |  | [optional] 
**completedAt** | **Date** |  | [optional] 
**recipientCount** | **Int** |  | [optional] 
**isAbTest** | **Bool** |  | [optional] 
**winningVariantId** | **String** |  | [optional] 
**abTestConfig** | **AnyCodable** |  | [optional] 
**errorMessage** | **String** |  | [optional] 
**stats** | [**CampaignStats**](CampaignStats.md) |  | [optional] 
**openRate** | **Double** |  | [optional] 
**clickRate** | **Double** |  | [optional] 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


