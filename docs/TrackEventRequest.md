# TrackEventRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventType** | **String** | Type of commerce event | 
**email** | **String** | Email address associated with the event | 
**properties** | **AnyCodable** | Event-specific data (e.g., order_id, value, product_url) | [optional] 
**occurredAt** | **Date** | When the event occurred (defaults to now) | [optional] 
**idempotencyKey** | **String** | Unique key to prevent duplicate events (5 min TTL) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


