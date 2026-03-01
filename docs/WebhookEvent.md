# WebhookEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event** | **String** | Event type | 
**timestamp** | **Date** | When the event occurred | 
**job** | [**Job**](Job.md) |  | [optional] 
**messageId** | **String** | Message ID (present for message.* and delivery events) | [optional] 
**accountId** | **Int** | Account ID (present for delivery events) | [optional] 
**domainId** | **String** | Sending domain UUID (present for delivery events) | [optional] 
**to** | **String** | Recipient email (present for delivery events) | [optional] 
**status** | **String** | Delivery status (present for delivery events) | [optional] 
**smtpCode** | **Int** | SMTP response code (present for bounced/deferred/failed) | [optional] 
**smtpResponse** | **String** | SMTP diagnostic string (present for bounced/deferred/failed) | [optional] 
**mxHost** | **String** | MX host that handled delivery | [optional] 
**bounceType** | **String** | Bounce classification (present for message.bounced) | [optional] 
**enhancedStatusCode** | **String** | Enhanced SMTP status code (e.g., 5.1.1) | [optional] 
**attempts** | **Int** | Number of delivery attempts | [optional] 
**isp** | **String** | Receiving ISP name | [optional] 
**isMpp** | **Bool** | Whether the open was from Apple Mail Privacy Protection | [optional] 
**ipAddress** | **String** | Client IP (present for message.opened/clicked) | [optional] 
**userAgent** | **String** | Client user agent (present for message.opened/clicked) | [optional] 
**isBot** | **Bool** | Whether the event was triggered by a bot (present for message.opened/clicked) | [optional] 
**linkUrl** | **String** | Clicked URL (present for message.clicked) | [optional] 
**linkIndex** | **Int** | Position of clicked link in message (present for message.clicked) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


