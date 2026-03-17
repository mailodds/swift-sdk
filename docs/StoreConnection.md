# StoreConnection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Store connection UUID | [optional] 
**accountId** | **Int** |  | [optional] 
**platform** | **String** | E-commerce platform | [optional] 
**storeName** | **String** |  | [optional] 
**storeUrl** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**authMethod** | **String** |  | [optional] 
**productCount** | **Int** | Number of active products | [optional] 
**lastSyncedAt** | **Date** |  | [optional] 
**lastError** | **String** | Last sync error message | [optional] 
**syncIntervalSeconds** | **Int** | Auto-sync interval in seconds | [optional] [default to 3600]
**settings** | **AnyCodable** | Platform-specific settings | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


