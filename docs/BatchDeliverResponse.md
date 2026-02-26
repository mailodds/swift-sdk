# BatchDeliverResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**requestId** | **String** | Unique request identifier | [optional] 
**total** | **Int** | Total recipients submitted | [optional] 
**accepted** | **Int** | Number of recipients accepted for delivery | [optional] 
**rejected** | [BatchDeliverResponseRejectedInner] | Recipients that were rejected (suppressed or failed validation) | [optional] 
**status** | **String** | Batch status | [optional] 
**delivery** | [**BatchDeliverResponseDelivery**](BatchDeliverResponseDelivery.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


