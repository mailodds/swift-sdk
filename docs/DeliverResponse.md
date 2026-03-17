# DeliverResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**requestId** | **String** | Unique request identifier | [optional] 
**messageId** | **String** | Unique message identifier | [optional] 
**status** | **String** | Delivery status | [optional] 
**delivery** | [**DeliverResponseDelivery**](DeliverResponseDelivery.md) |  | [optional] 
**validation** | **AnyCodable** | Pre-send validation results (when validate_first is true) | [optional] 
**contentScan** | **AnyCodable** | Content scan results | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


