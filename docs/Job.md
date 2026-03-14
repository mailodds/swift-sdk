# Job

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** | Job name (from metadata or auto-generated) | 
**status** | **String** |  | 
**totalCount** | **Int** |  | 
**processedCount** | **Int** |  | 
**summary** | [**JobSummary**](JobSummary.md) |  | [optional] 
**createdAt** | **Date** |  | 
**startedAt** | **Date** | When processing began. Omitted if not yet started. | [optional] 
**completedAt** | **Date** | Omitted if not yet completed. | [optional] 
**resultsExpireAt** | **Date** | When job results will be purged | 
**metadata** | **JSONValue** | Custom metadata attached at creation | [optional] 
**errorMessage** | **String** | Error details. Present only for failed jobs. | [optional] 
**requestId** | **String** | Request ID from the job creation request | [optional] 
**artifacts** | [**JobArtifacts**](JobArtifacts.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


