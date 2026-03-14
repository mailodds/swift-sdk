# BlacklistMonitor

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Monitor UUID | [optional] 
**target** | **String** | IP address or domain being monitored | [optional] 
**targetType** | **String** |  | [optional] 
**status** | **String** | Current status (clean, listed) | [optional] 
**listedCount** | **Int** | Number of blacklists currently listing this target | [optional] 
**lastCheckedAt** | **Date** |  | [optional] 
**latestCheck** | [**BlacklistMonitorLatestCheck**](BlacklistMonitorLatestCheck.md) |  | [optional] 
**createdAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


