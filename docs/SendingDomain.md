# SendingDomain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Domain UUID | [optional] 
**domain** | **String** | Domain name | [optional] 
**domainType** | **String** | Domain type (ns_delegated) | [optional] 
**status** | **String** | Domain verification status | [optional] 
**dkimSelector** | **String** | DKIM selector (e.g. mo1) | [optional] 
**dnsRecords** | [**SendingDomainDnsRecords**](SendingDomainDnsRecords.md) |  | [optional] 
**bimiSvgUrl** | **String** | BIMI SVG logo URL | [optional] 
**bimiVmcUrl** | **String** | BIMI VMC certificate URL | [optional] 
**bimiEnabled** | **Bool** | Whether BIMI is enabled | [optional] 
**forwardRepliesTo** | **String** | Reply forwarding address | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


