# CreateAlertRuleRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric** | **String** | Metric to monitor (e.g., bounce_rate, complaint_rate) | 
**threshold** | **Double** | Threshold value (0-1, e.g. 0.02 for 2%) | 
**channel** | **String** | Notification channel (e.g., webhook) | 
**windowMinutes** | **Int** | Evaluation window in minutes | [optional] [default to ._60]
**enabled** | **Bool** |  | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


