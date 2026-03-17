# StoreProduct

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Product UUID | [optional] 
**storeId** | **String** | Store connection UUID | [optional] 
**externalId** | **String** | Product ID in the source store | [optional] 
**sku** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**priceCurrent** | **Double** | Current price | [optional] 
**priceOriginal** | **Double** | Original price (before discount) | [optional] 
**currency** | **String** |  | [optional] [default to "USD"]
**saleStart** | **Date** |  | [optional] 
**saleEnd** | **Date** |  | [optional] 
**stockStatus** | **String** |  | [optional] 
**stockQuantity** | **Int** |  | [optional] 
**imageUrl** | **String** |  | [optional] 
**additionalImages** | **[String]** |  | [optional] 
**categories** | **[String]** |  | [optional] 
**tags** | **[String]** |  | [optional] 
**productUrl** | **String** |  | [optional] 
**variants** | **[AnyCodable]** |  | [optional] 
**isActive** | **Bool** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


