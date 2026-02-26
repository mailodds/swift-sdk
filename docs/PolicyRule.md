# PolicyRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**type** | **String** | Rule type determines how condition is evaluated | 
**condition** | **JSONValue** | Condition depends on rule type. status_override: {status}, domain_filter: {domain_mode, domains}, check_requirement: {check, required}, sub_status_override: {sub_status} | 
**action** | [**PolicyRuleAction**](PolicyRuleAction.md) |  | 
**sequence** | **Int** |  | [optional] 
**isEnabled** | **Bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


