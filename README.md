# MailOdds Swift SDK

Swift client for the MailOdds email deliverability platform. Built for iOS, macOS, and Linux with native async/await, suppression list management, and real-time validation.

[![SPM Compatible](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![API Docs](https://img.shields.io/badge/API-Reference-green)](https://mailodds.com/api-reference)

## Installation

Add to your `Package.swift`:

```swift
.package(url: "https://github.com/mailodds/swift-sdk.git", from: "1.0.0")
```

## Quick Start

```swift
import MailOdds

let config = Configuration(basePath: "https://api.mailodds.com/v1")
config.accessToken = ProcessInfo.processInfo.environment["MAILODDS_API_KEY"]

let api = EmailValidationAPI(configuration: config)
let request = ValidateRequest(email: "user@example.com")
let result = try await api.validateEmail(validateRequest: request)

print("Status: \(result.result.status), Action: \(result.result.action)")
```

## MailOdds Platform

This SDK provides access to the full [MailOdds](https://mailodds.com) email deliverability platform:

- [Transactional Email](https://mailodds.com/transactional-email) - DKIM-signed transactional sending with engagement tracking
- [Email Blacklist Monitoring](https://mailodds.com/email-blacklist-monitoring) - Monitor IPs and domains across 80+ DNSBLs
- [Email Analytics](https://mailodds.com/email-analytics) - Privacy-first engagement analytics and delivery metrics
- [DMARC Monitoring](https://mailodds.com/dmarc-monitoring) - Aggregate report parsing with source analysis and policy recommendations
- [Email Suppression List](https://mailodds.com/email-suppression-list) - Manage bounce and complaint suppression with audit trails
- [Free Email Validator](https://mailodds.com/free-email-validator) - Validate individual emails at no cost
- [Privacy](https://mailodds.com/privacy) - Privacy policy and data handling practices
- [Guide: Email Deliverability](https://mailodds.com/guides/email-deliverability) - Best practices for maximizing inbox placement

## Features

- **Swift 6** - Built for Swift 6 with strict concurrency checking and Sendable conformance
- **Async/await** - Native Swift concurrency for all API calls with structured task support
- **Swift Package Manager** - First-class SPM integration with no external dependency requirements
- **Cross-platform** - Runs on iOS 13+, macOS 10.15+, watchOS 6+, tvOS 13+, and Linux
- **Full API coverage** - Validation, sending, campaigns, DMARC, blacklist monitoring, suppression lists, and more

## Why MailOdds

MailOdds is a complete email deliverability platform built for developers. Every email validated or sent through MailOdds passes through 25+ real-time checks including syntax verification, DNS and MX validation, SMTP mailbox probing, disposable domain detection, and role account identification.

The platform maintains sub-200ms median response times for single validations, 99.9% API uptime, and processes bulk lists of up to 500,000 emails per job. MailOdds supports 11 language SDKs, an MCP server for AI agent integration, a CLI for local development, and a WordPress plugin for no-code deployments.

All email sending uses DKIM dual signing with automated key rotation, and the deliverability monitoring stack covers DMARC aggregate reports, blacklist surveillance across 80+ DNSBLs, and real-time sender health scoring.

## API Reference

Full documentation: [https://mailodds.com/api-reference](https://mailodds.com/api-reference)

All URIs are relative to `https://api.mailodds.com/v1`

<details>
<summary>All Endpoints</summary>

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AgentControlPlaneAPI* | [**getMcpCapabilities**](docs/AgentControlPlaneAPI.md#getmcpcapabilities) | **GET** /v1/mcp/capabilities | Get MCP capabilities
*BlacklistMonitoringAPI* | [**addBlacklistMonitor**](docs/BlacklistMonitoringAPI.md#addblacklistmonitor) | **POST** /v1/blacklist-monitors | Add blacklist monitor
*BlacklistMonitoringAPI* | [**deleteBlacklistMonitor**](docs/BlacklistMonitoringAPI.md#deleteblacklistmonitor) | **DELETE** /v1/blacklist-monitors/{monitor_id} | Delete a blacklist monitor
*BlacklistMonitoringAPI* | [**getBlacklistHistory**](docs/BlacklistMonitoringAPI.md#getblacklisthistory) | **GET** /v1/blacklist-monitors/{monitor_id}/history | Get blacklist check history
*BlacklistMonitoringAPI* | [**listBlacklistMonitors**](docs/BlacklistMonitoringAPI.md#listblacklistmonitors) | **GET** /v1/blacklist-monitors | List blacklist monitors
*BlacklistMonitoringAPI* | [**runBlacklistCheck**](docs/BlacklistMonitoringAPI.md#runblacklistcheck) | **POST** /v1/blacklist-monitors/{monitor_id}/check | Run blacklist check
*BounceAnalysisAPI* | [**createBounceAnalysis**](docs/BounceAnalysisAPI.md#createbounceanalysis) | **POST** /v1/bounce-analyses | Analyze bounce logs
*BounceAnalysisAPI* | [**crossReferenceBounces**](docs/BounceAnalysisAPI.md#crossreferencebounces) | **GET** /v1/bounce-analyses/{analysis_id}/cross-reference | Cross-reference bounces with validation logs
*BounceAnalysisAPI* | [**getBounceAnalysis**](docs/BounceAnalysisAPI.md#getbounceanalysis) | **GET** /v1/bounce-analyses/{analysis_id} | Get bounce analysis
*BounceAnalysisAPI* | [**getBounceRecords**](docs/BounceAnalysisAPI.md#getbouncerecords) | **GET** /v1/bounce-analyses/{analysis_id}/records | Get bounce records
*BulkValidationAPI* | [**cancelJob**](docs/BulkValidationAPI.md#canceljob) | **POST** /v1/jobs/{job_id}/cancel | Cancel a job
*BulkValidationAPI* | [**createJob**](docs/BulkValidationAPI.md#createjob) | **POST** /v1/jobs | Create bulk validation job (JSON)
*BulkValidationAPI* | [**createJobFromS3**](docs/BulkValidationAPI.md#createjobfroms3) | **POST** /v1/jobs/upload/s3 | Create job from S3 upload
*BulkValidationAPI* | [**createJobUpload**](docs/BulkValidationAPI.md#createjobupload) | **POST** /v1/jobs/upload | Create bulk validation job (file upload)
*BulkValidationAPI* | [**deleteJob**](docs/BulkValidationAPI.md#deletejob) | **DELETE** /v1/jobs/{job_id} | Delete a job
*BulkValidationAPI* | [**getJob**](docs/BulkValidationAPI.md#getjob) | **GET** /v1/jobs/{job_id} | Get job status
*BulkValidationAPI* | [**getJobResults**](docs/BulkValidationAPI.md#getjobresults) | **GET** /v1/jobs/{job_id}/results | Get job results
*BulkValidationAPI* | [**getPresignedUpload**](docs/BulkValidationAPI.md#getpresignedupload) | **POST** /v1/jobs/upload/presigned | Get S3 presigned upload URL
*BulkValidationAPI* | [**listJobs**](docs/BulkValidationAPI.md#listjobs) | **GET** /v1/jobs | List validation jobs
*CampaignAnalyticsAPI* | [**getCampaignABResults**](docs/CampaignAnalyticsAPI.md#getcampaignabresults) | **GET** /v1/campaigns/{campaign_id}/ab-results | Get A/B test results
*CampaignAnalyticsAPI* | [**getCampaignAttribution**](docs/CampaignAnalyticsAPI.md#getcampaignattribution) | **GET** /v1/campaigns/{campaign_id}/conversions/attribution | Get campaign attribution
*CampaignAnalyticsAPI* | [**getCampaignDeliveryConfidence**](docs/CampaignAnalyticsAPI.md#getcampaigndeliveryconfidence) | **GET** /v1/campaigns/{campaign_id}/delivery-confidence | Get pre-send delivery confidence
*CampaignAnalyticsAPI* | [**getCampaignFunnel**](docs/CampaignAnalyticsAPI.md#getcampaignfunnel) | **GET** /v1/campaigns/{campaign_id}/funnel | Get campaign funnel
*CampaignAnalyticsAPI* | [**getCampaignProviderIntelligence**](docs/CampaignAnalyticsAPI.md#getcampaignproviderintelligence) | **GET** /v1/campaigns/{campaign_id}/provider-intelligence | Get provider intelligence
*CampaignsAPI* | [**cancelCampaign**](docs/CampaignsAPI.md#cancelcampaign) | **POST** /v1/campaigns/{campaign_id}/cancel | Cancel a campaign
*CampaignsAPI* | [**createCampaign**](docs/CampaignsAPI.md#createcampaign) | **POST** /v1/campaigns | Create a campaign
*CampaignsAPI* | [**createCampaignVariant**](docs/CampaignsAPI.md#createcampaignvariant) | **POST** /v1/campaigns/{campaign_id}/variants | Create A/B variant
*CampaignsAPI* | [**getCampaign**](docs/CampaignsAPI.md#getcampaign) | **GET** /v1/campaigns/{campaign_id} | Get campaign with stats
*CampaignsAPI* | [**listCampaigns**](docs/CampaignsAPI.md#listcampaigns) | **GET** /v1/campaigns | List campaigns
*CampaignsAPI* | [**scheduleCampaign**](docs/CampaignsAPI.md#schedulecampaign) | **POST** /v1/campaigns/{campaign_id}/schedule | Schedule a campaign
*CampaignsAPI* | [**sendCampaign**](docs/CampaignsAPI.md#sendcampaign) | **POST** /v1/campaigns/{campaign_id}/send | Send a campaign
*ContactListsAPI* | [**appendToContactList**](docs/ContactListsAPI.md#appendtocontactlist) | **POST** /v1/contact-lists/{list_id}/append | Append to contact list
*ContactListsAPI* | [**createContactList**](docs/ContactListsAPI.md#createcontactlist) | **POST** /v1/contact-lists | Create contact list
*ContactListsAPI* | [**deleteContactList**](docs/ContactListsAPI.md#deletecontactlist) | **DELETE** /v1/contact-lists/{list_id} | Delete a contact list
*ContactListsAPI* | [**getInactiveContactsReport**](docs/ContactListsAPI.md#getinactivecontactsreport) | **GET** /v1/contacts/inactive-report | Get inactive contacts report
*ContactListsAPI* | [**listContactLists**](docs/ContactListsAPI.md#listcontactlists) | **GET** /v1/contact-lists | List contact lists
*ContactListsAPI* | [**queryContactList**](docs/ContactListsAPI.md#querycontactlist) | **POST** /v1/contact-lists/{list_id}/query | Query contact list
*ContentClassificationAPI* | [**classifyContent**](docs/ContentClassificationAPI.md#classifycontent) | **POST** /v1/content-check | Classify email content
*DMARCMonitoringAPI* | [**addDmarcDomain**](docs/DMARCMonitoringAPI.md#adddmarcdomain) | **POST** /v1/dmarc-domains | Add DMARC domain
*DMARCMonitoringAPI* | [**deleteDmarcDomain**](docs/DMARCMonitoringAPI.md#deletedmarcdomain) | **DELETE** /v1/dmarc-domains/{domain_id} | Delete a DMARC domain
*DMARCMonitoringAPI* | [**getDmarcDomain**](docs/DMARCMonitoringAPI.md#getdmarcdomain) | **GET** /v1/dmarc-domains/{domain_id} | Get DMARC domain
*DMARCMonitoringAPI* | [**getDmarcRecommendation**](docs/DMARCMonitoringAPI.md#getdmarcrecommendation) | **GET** /v1/dmarc-domains/{domain_id}/recommendation | Get DMARC policy recommendation
*DMARCMonitoringAPI* | [**getDmarcSources**](docs/DMARCMonitoringAPI.md#getdmarcsources) | **GET** /v1/dmarc-domains/{domain_id}/sources | Get DMARC sending sources
*DMARCMonitoringAPI* | [**getDmarcTrend**](docs/DMARCMonitoringAPI.md#getdmarctrend) | **GET** /v1/dmarc-domains/{domain_id}/trend | Get DMARC trend
*DMARCMonitoringAPI* | [**listDmarcDomains**](docs/DMARCMonitoringAPI.md#listdmarcdomains) | **GET** /v1/dmarc-domains | List DMARC domains
*DMARCMonitoringAPI* | [**verifyDmarcDomain**](docs/DMARCMonitoringAPI.md#verifydmarcdomain) | **POST** /v1/dmarc-domains/{domain_id}/verify | Verify DMARC DNS records
*EmailSendingAPI* | [**deliverBatch**](docs/EmailSendingAPI.md#deliverbatch) | **POST** /v1/deliver/batch | Send to multiple recipients (max 100)
*EmailSendingAPI* | [**deliverEmail**](docs/EmailSendingAPI.md#deliveremail) | **POST** /v1/deliver | Send a single email
*EmailValidationAPI* | [**validateBatch**](docs/EmailValidationAPI.md#validatebatch) | **POST** /v1/validate/batch | Validate multiple emails (sync)
*EmailValidationAPI* | [**validateEmail**](docs/EmailValidationAPI.md#validateemail) | **POST** /v1/validate | Validate single email
*EventsAPI* | [**trackEvent**](docs/EventsAPI.md#trackevent) | **POST** /v1/events/track | Track a commerce event
*MessageEventsAPI* | [**getMessageEvents**](docs/MessageEventsAPI.md#getmessageevents) | **GET** /v1/message-events | Get message events
*OAuth20API* | [**createToken**](docs/OAuth20API.md#createtoken) | **POST** /oauth/token | Create token
*OAuth20API* | [**getJwks**](docs/OAuth20API.md#getjwks) | **GET** /.well-known/jwks.json | Get JSON Web Key Set
*OAuth20API* | [**introspectToken**](docs/OAuth20API.md#introspecttoken) | **POST** /oauth/introspect | Introspect token
*OAuth20API* | [**oauthServerMetadata**](docs/OAuth20API.md#oauthservermetadata) | **GET** /.well-known/oauth-authorization-server | OAuth server metadata
*OAuth20API* | [**revokeToken**](docs/OAuth20API.md#revoketoken) | **POST** /oauth/revoke | Revoke token
*ProductsAPI* | [**batchProducts**](docs/ProductsAPI.md#batchproducts) | **POST** /v1/stores/{store_id}/products/batch | Batch push products
*ProductsAPI* | [**getProduct**](docs/ProductsAPI.md#getproduct) | **GET** /v1/store-products/{product_id} | Get a product
*ProductsAPI* | [**queryProducts**](docs/ProductsAPI.md#queryproducts) | **GET** /v1/store-products | Query products
*SenderHealthAPI* | [**getSenderHealth**](docs/SenderHealthAPI.md#getsenderhealth) | **GET** /v1/sender-health | Get sender health score
*SenderHealthAPI* | [**getSenderHealthTrend**](docs/SenderHealthAPI.md#getsenderhealthtrend) | **GET** /v1/sender-health/trend | Get sender health trend
*SendingDomainsAPI* | [**createSendingDomain**](docs/SendingDomainsAPI.md#createsendingdomain) | **POST** /v1/sending-domains | Add a sending domain
*SendingDomainsAPI* | [**deleteSendingDomain**](docs/SendingDomainsAPI.md#deletesendingdomain) | **DELETE** /v1/sending-domains/{domain_id} | Delete a sending domain
*SendingDomainsAPI* | [**getSendingDomain**](docs/SendingDomainsAPI.md#getsendingdomain) | **GET** /v1/sending-domains/{domain_id} | Get a sending domain
*SendingDomainsAPI* | [**getSendingDomainIdentityScore**](docs/SendingDomainsAPI.md#getsendingdomainidentityscore) | **GET** /v1/sending-domains/{domain_id}/identity-score | Get domain identity score
*SendingDomainsAPI* | [**getSendingStats**](docs/SendingDomainsAPI.md#getsendingstats) | **GET** /v1/sending-stats | Get sending statistics
*SendingDomainsAPI* | [**listSendingDomains**](docs/SendingDomainsAPI.md#listsendingdomains) | **GET** /v1/sending-domains | List sending domains
*SendingDomainsAPI* | [**verifySendingDomain**](docs/SendingDomainsAPI.md#verifysendingdomain) | **POST** /v1/sending-domains/{domain_id}/verify | Verify domain DNS records
*ServerTestsAPI* | [**getServerTest**](docs/ServerTestsAPI.md#getservertest) | **GET** /v1/server-tests/{test_id} | Get server test
*ServerTestsAPI* | [**listServerTests**](docs/ServerTestsAPI.md#listservertests) | **GET** /v1/server-tests | List server tests
*ServerTestsAPI* | [**runServerTest**](docs/ServerTestsAPI.md#runservertest) | **POST** /v1/server-tests | Run server test
*SpamChecksAPI* | [**getSpamCheck**](docs/SpamChecksAPI.md#getspamcheck) | **GET** /v1/spam-checks/{check_id} | Get spam check
*SpamChecksAPI* | [**listSpamChecks**](docs/SpamChecksAPI.md#listspamchecks) | **GET** /v1/spam-checks | List spam checks
*SpamChecksAPI* | [**runSpamCheck**](docs/SpamChecksAPI.md#runspamcheck) | **POST** /v1/spam-checks | Run spam check
*StoreConnectionsAPI* | [**createStore**](docs/StoreConnectionsAPI.md#createstore) | **POST** /v1/stores | Create a store connection
*StoreConnectionsAPI* | [**disconnectStore**](docs/StoreConnectionsAPI.md#disconnectstore) | **DELETE** /v1/stores/{store_id} | Disconnect a store
*StoreConnectionsAPI* | [**getStore**](docs/StoreConnectionsAPI.md#getstore) | **GET** /v1/stores/{store_id} | Get a store connection
*StoreConnectionsAPI* | [**listStores**](docs/StoreConnectionsAPI.md#liststores) | **GET** /v1/stores | List store connections
*StoreConnectionsAPI* | [**triggerSync**](docs/StoreConnectionsAPI.md#triggersync) | **POST** /v1/stores/{store_id}/sync | Trigger product sync
*SubscriberListsAPI* | [**confirmSubscription**](docs/SubscriberListsAPI.md#confirmsubscription) | **GET** /v1/confirm/{token} | Confirm subscription
*SubscriberListsAPI* | [**createList**](docs/SubscriberListsAPI.md#createlist) | **POST** /v1/lists | Create a subscriber list
*SubscriberListsAPI* | [**deleteList**](docs/SubscriberListsAPI.md#deletelist) | **DELETE** /v1/lists/{list_id} | Delete a subscriber list
*SubscriberListsAPI* | [**getList**](docs/SubscriberListsAPI.md#getlist) | **GET** /v1/lists/{list_id} | Get a subscriber list
*SubscriberListsAPI* | [**getLists**](docs/SubscriberListsAPI.md#getlists) | **GET** /v1/lists | List subscriber lists
*SubscriberListsAPI* | [**getSubscribers**](docs/SubscriberListsAPI.md#getsubscribers) | **GET** /v1/lists/{list_id}/subscribers | List subscribers
*SubscriberListsAPI* | [**subscribe**](docs/SubscriberListsAPI.md#subscribe) | **POST** /v1/subscribe/{list_id} | Subscribe to a list
*SubscriberListsAPI* | [**unsubscribeSubscriber**](docs/SubscriberListsAPI.md#unsubscribesubscriber) | **DELETE** /v1/lists/{list_id}/subscribers/{subscriber_id} | Unsubscribe a subscriber
*SuppressionListsAPI* | [**addSuppression**](docs/SuppressionListsAPI.md#addsuppression) | **POST** /v1/suppression | Add suppression entries
*SuppressionListsAPI* | [**checkSuppression**](docs/SuppressionListsAPI.md#checksuppression) | **POST** /v1/suppression/check | Check suppression status
*SuppressionListsAPI* | [**getSuppressionAuditLog**](docs/SuppressionListsAPI.md#getsuppressionauditlog) | **GET** /v1/suppression/audit | Get suppression audit log
*SuppressionListsAPI* | [**getSuppressionStats**](docs/SuppressionListsAPI.md#getsuppressionstats) | **GET** /v1/suppression/stats | Get suppression statistics
*SuppressionListsAPI* | [**listSuppression**](docs/SuppressionListsAPI.md#listsuppression) | **GET** /v1/suppression | List suppression entries
*SuppressionListsAPI* | [**removeSuppression**](docs/SuppressionListsAPI.md#removesuppression) | **DELETE** /v1/suppression | Remove suppression entries
*SystemAPI* | [**getTelemetrySummary**](docs/SystemAPI.md#gettelemetrysummary) | **GET** /v1/telemetry/summary | Get validation telemetry
*SystemAPI* | [**healthCheck**](docs/SystemAPI.md#healthcheck) | **GET** /health | Health check
*ValidationPoliciesAPI* | [**addPolicyRule**](docs/ValidationPoliciesAPI.md#addpolicyrule) | **POST** /v1/policies/{policy_id}/rules | Add rule to policy
*ValidationPoliciesAPI* | [**createPolicy**](docs/ValidationPoliciesAPI.md#createpolicy) | **POST** /v1/policies | Create policy
*ValidationPoliciesAPI* | [**createPolicyFromPreset**](docs/ValidationPoliciesAPI.md#createpolicyfrompreset) | **POST** /v1/policies/from-preset | Create policy from preset
*ValidationPoliciesAPI* | [**deletePolicy**](docs/ValidationPoliciesAPI.md#deletepolicy) | **DELETE** /v1/policies/{policy_id} | Delete policy
*ValidationPoliciesAPI* | [**deletePolicyRule**](docs/ValidationPoliciesAPI.md#deletepolicyrule) | **DELETE** /v1/policies/{policy_id}/rules/{rule_id} | Delete rule
*ValidationPoliciesAPI* | [**getPolicy**](docs/ValidationPoliciesAPI.md#getpolicy) | **GET** /v1/policies/{policy_id} | Get policy
*ValidationPoliciesAPI* | [**getPolicyPresets**](docs/ValidationPoliciesAPI.md#getpolicypresets) | **GET** /v1/policies/presets | Get policy presets
*ValidationPoliciesAPI* | [**listPolicies**](docs/ValidationPoliciesAPI.md#listpolicies) | **GET** /v1/policies | List policies
*ValidationPoliciesAPI* | [**testPolicy**](docs/ValidationPoliciesAPI.md#testpolicy) | **POST** /v1/policies/test | Test policy evaluation
*ValidationPoliciesAPI* | [**updatePolicy**](docs/ValidationPoliciesAPI.md#updatepolicy) | **PUT** /v1/policies/{policy_id} | Update policy

</details>

<details>
<summary>All Models</summary>

 - [AddBlacklistMonitor201Response](docs/AddBlacklistMonitor201Response.md)
 - [AddBlacklistMonitorRequest](docs/AddBlacklistMonitorRequest.md)
 - [AddDmarcDomain201Response](docs/AddDmarcDomain201Response.md)
 - [AddDmarcDomainRequest](docs/AddDmarcDomainRequest.md)
 - [AddPolicyRule201Response](docs/AddPolicyRule201Response.md)
 - [AddSuppressionRequest](docs/AddSuppressionRequest.md)
 - [AddSuppressionRequestEntriesInner](docs/AddSuppressionRequestEntriesInner.md)
 - [AddSuppressionResponse](docs/AddSuppressionResponse.md)
 - [AppendToContactList200Response](docs/AppendToContactList200Response.md)
 - [AppendToContactListRequest](docs/AppendToContactListRequest.md)
 - [BatchDeliverRequest](docs/BatchDeliverRequest.md)
 - [BatchDeliverRequestStructuredData](docs/BatchDeliverRequestStructuredData.md)
 - [BatchDeliverResponse](docs/BatchDeliverResponse.md)
 - [BatchDeliverResponseDelivery](docs/BatchDeliverResponseDelivery.md)
 - [BatchDeliverResponseRejectedInner](docs/BatchDeliverResponseRejectedInner.md)
 - [BatchProductsRequest](docs/BatchProductsRequest.md)
 - [BatchProductsRequestProductsInner](docs/BatchProductsRequestProductsInner.md)
 - [BatchProductsResponse](docs/BatchProductsResponse.md)
 - [BatchProductsResponseErrorsInner](docs/BatchProductsResponseErrorsInner.md)
 - [BlacklistMonitor](docs/BlacklistMonitor.md)
 - [BlacklistMonitorLatestCheck](docs/BlacklistMonitorLatestCheck.md)
 - [BounceAnalysisResponse](docs/BounceAnalysisResponse.md)
 - [BounceAnalysisResponseAnalysis](docs/BounceAnalysisResponseAnalysis.md)
 - [BounceAnalysisResponseAnalysisCategories](docs/BounceAnalysisResponseAnalysisCategories.md)
 - [BounceAnalysisResponseAnalysisTopDomainsInner](docs/BounceAnalysisResponseAnalysisTopDomainsInner.md)
 - [Campaign](docs/Campaign.md)
 - [CampaignResponse](docs/CampaignResponse.md)
 - [CampaignStats](docs/CampaignStats.md)
 - [CampaignVariant](docs/CampaignVariant.md)
 - [CheckSuppressionRequest](docs/CheckSuppressionRequest.md)
 - [ClassifyContent200Response](docs/ClassifyContent200Response.md)
 - [ClassifyContent200ResponseContentCheck](docs/ClassifyContent200ResponseContentCheck.md)
 - [ClassifyContentRequest](docs/ClassifyContentRequest.md)
 - [ConfirmSubscription200Response](docs/ConfirmSubscription200Response.md)
 - [ContactList](docs/ContactList.md)
 - [CreateBounceAnalysisRequest](docs/CreateBounceAnalysisRequest.md)
 - [CreateCampaignRequest](docs/CreateCampaignRequest.md)
 - [CreateCampaignVariant201Response](docs/CreateCampaignVariant201Response.md)
 - [CreateContactList201Response](docs/CreateContactList201Response.md)
 - [CreateContactListRequest](docs/CreateContactListRequest.md)
 - [CreateJobFromS3Request](docs/CreateJobFromS3Request.md)
 - [CreateJobRequest](docs/CreateJobRequest.md)
 - [CreateList201Response](docs/CreateList201Response.md)
 - [CreateListRequest](docs/CreateListRequest.md)
 - [CreatePolicyFromPresetRequest](docs/CreatePolicyFromPresetRequest.md)
 - [CreatePolicyRequest](docs/CreatePolicyRequest.md)
 - [CreateSendingDomain201Response](docs/CreateSendingDomain201Response.md)
 - [CreateSendingDomainRequest](docs/CreateSendingDomainRequest.md)
 - [CreateStore201Response](docs/CreateStore201Response.md)
 - [CreateStoreRequest](docs/CreateStoreRequest.md)
 - [CreateToken200Response](docs/CreateToken200Response.md)
 - [CreateVariantRequest](docs/CreateVariantRequest.md)
 - [CrossReferenceBounces200Response](docs/CrossReferenceBounces200Response.md)
 - [CrossReferenceBounces200ResponseCrossReference](docs/CrossReferenceBounces200ResponseCrossReference.md)
 - [CrossReferenceBounces200ResponseCrossReferenceEntriesInner](docs/CrossReferenceBounces200ResponseCrossReferenceEntriesInner.md)
 - [DeleteJob200Response](docs/DeleteJob200Response.md)
 - [DeletePolicy200Response](docs/DeletePolicy200Response.md)
 - [DeletePolicyRule200Response](docs/DeletePolicyRule200Response.md)
 - [DeliverRequest](docs/DeliverRequest.md)
 - [DeliverRequestOptions](docs/DeliverRequestOptions.md)
 - [DeliverRequestStructuredData](docs/DeliverRequestStructuredData.md)
 - [DeliverRequestToInner](docs/DeliverRequestToInner.md)
 - [DeliverResponse](docs/DeliverResponse.md)
 - [DeliverResponseDelivery](docs/DeliverResponseDelivery.md)
 - [DisconnectStore200Response](docs/DisconnectStore200Response.md)
 - [DmarcDomain](docs/DmarcDomain.md)
 - [GetBlacklistHistory200Response](docs/GetBlacklistHistory200Response.md)
 - [GetBlacklistHistory200ResponseChecksInner](docs/GetBlacklistHistory200ResponseChecksInner.md)
 - [GetBounceRecords200Response](docs/GetBounceRecords200Response.md)
 - [GetBounceRecords200ResponseRecordsInner](docs/GetBounceRecords200ResponseRecordsInner.md)
 - [GetCampaignABResults200Response](docs/GetCampaignABResults200Response.md)
 - [GetCampaignABResults200ResponseVariantsInner](docs/GetCampaignABResults200ResponseVariantsInner.md)
 - [GetCampaignABResults200ResponseWinner](docs/GetCampaignABResults200ResponseWinner.md)
 - [GetCampaignAttribution200Response](docs/GetCampaignAttribution200Response.md)
 - [GetCampaignAttribution200ResponseAttribution](docs/GetCampaignAttribution200ResponseAttribution.md)
 - [GetCampaignAttribution200ResponseAttributionFirstTouch](docs/GetCampaignAttribution200ResponseAttributionFirstTouch.md)
 - [GetCampaignDeliveryConfidence200Response](docs/GetCampaignDeliveryConfidence200Response.md)
 - [GetCampaignDeliveryConfidence200ResponseFactors](docs/GetCampaignDeliveryConfidence200ResponseFactors.md)
 - [GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth](docs/GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth.md)
 - [GetCampaignDeliveryConfidence200ResponseFactorsListQuality](docs/GetCampaignDeliveryConfidence200ResponseFactorsListQuality.md)
 - [GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation](docs/GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation.md)
 - [GetCampaignFunnel200Response](docs/GetCampaignFunnel200Response.md)
 - [GetCampaignFunnel200ResponseFunnel](docs/GetCampaignFunnel200ResponseFunnel.md)
 - [GetCampaignFunnel200ResponseRates](docs/GetCampaignFunnel200ResponseRates.md)
 - [GetCampaignProviderIntelligence200Response](docs/GetCampaignProviderIntelligence200Response.md)
 - [GetCampaignProviderIntelligence200ResponseProvidersInner](docs/GetCampaignProviderIntelligence200ResponseProvidersInner.md)
 - [GetDmarcDomain200Response](docs/GetDmarcDomain200Response.md)
 - [GetDmarcDomain200ResponseDomain](docs/GetDmarcDomain200ResponseDomain.md)
 - [GetDmarcDomain200ResponseDomainAllOfSummary](docs/GetDmarcDomain200ResponseDomainAllOfSummary.md)
 - [GetDmarcRecommendation200Response](docs/GetDmarcRecommendation200Response.md)
 - [GetDmarcRecommendation200ResponseRecommendation](docs/GetDmarcRecommendation200ResponseRecommendation.md)
 - [GetDmarcSources200Response](docs/GetDmarcSources200Response.md)
 - [GetDmarcSources200ResponseSourcesInner](docs/GetDmarcSources200ResponseSourcesInner.md)
 - [GetDmarcTrend200Response](docs/GetDmarcTrend200Response.md)
 - [GetDmarcTrend200ResponseTrendInner](docs/GetDmarcTrend200ResponseTrendInner.md)
 - [GetInactiveContactsReport200Response](docs/GetInactiveContactsReport200Response.md)
 - [GetInactiveContactsReport200ResponseByListInner](docs/GetInactiveContactsReport200ResponseByListInner.md)
 - [GetLists200Response](docs/GetLists200Response.md)
 - [GetMessageEvents200Response](docs/GetMessageEvents200Response.md)
 - [GetMessageEvents200ResponseClicksInner](docs/GetMessageEvents200ResponseClicksInner.md)
 - [GetMessageEvents200ResponseEventsInner](docs/GetMessageEvents200ResponseEventsInner.md)
 - [GetMessageEvents200ResponseSummary](docs/GetMessageEvents200ResponseSummary.md)
 - [GetPresignedUploadRequest](docs/GetPresignedUploadRequest.md)
 - [GetProduct200Response](docs/GetProduct200Response.md)
 - [GetSenderHealth200Response](docs/GetSenderHealth200Response.md)
 - [GetSenderHealth200ResponseComponents](docs/GetSenderHealth200ResponseComponents.md)
 - [GetSenderHealth200ResponseComponentsDeliveryRate](docs/GetSenderHealth200ResponseComponentsDeliveryRate.md)
 - [GetSenderHealth200ResponseVolume](docs/GetSenderHealth200ResponseVolume.md)
 - [GetSenderHealthTrend200Response](docs/GetSenderHealthTrend200Response.md)
 - [GetSenderHealthTrend200ResponseDataPointsInner](docs/GetSenderHealthTrend200ResponseDataPointsInner.md)
 - [GetSendingDomainIdentityScore200Response](docs/GetSendingDomainIdentityScore200Response.md)
 - [GetSendingStats200Response](docs/GetSendingStats200Response.md)
 - [GetSendingStats200ResponseStats](docs/GetSendingStats200ResponseStats.md)
 - [GetSubscribers200Response](docs/GetSubscribers200Response.md)
 - [HealthCheck200Response](docs/HealthCheck200Response.md)
 - [IdentityScoreCheck](docs/IdentityScoreCheck.md)
 - [IntrospectToken200Response](docs/IntrospectToken200Response.md)
 - [Job](docs/Job.md)
 - [JobArtifacts](docs/JobArtifacts.md)
 - [JobListResponse](docs/JobListResponse.md)
 - [JobResponse](docs/JobResponse.md)
 - [JobSummary](docs/JobSummary.md)
 - [JwksResponse](docs/JwksResponse.md)
 - [JwksResponseKeysInner](docs/JwksResponseKeysInner.md)
 - [ListBlacklistMonitors200Response](docs/ListBlacklistMonitors200Response.md)
 - [ListCampaigns200Response](docs/ListCampaigns200Response.md)
 - [ListContactLists200Response](docs/ListContactLists200Response.md)
 - [ListDmarcDomains200Response](docs/ListDmarcDomains200Response.md)
 - [ListSendingDomains200Response](docs/ListSendingDomains200Response.md)
 - [ListServerTests200Response](docs/ListServerTests200Response.md)
 - [ListSpamChecks200Response](docs/ListSpamChecks200Response.md)
 - [ListStores200Response](docs/ListStores200Response.md)
 - [McpCapabilities](docs/McpCapabilities.md)
 - [McpCapabilitiesPillarsInner](docs/McpCapabilitiesPillarsInner.md)
 - [McpCapabilitiesPillarsInnerToolsInner](docs/McpCapabilitiesPillarsInnerToolsInner.md)
 - [ModelErrorResponse](docs/ModelErrorResponse.md)
 - [OAuthServerMetadata](docs/OAuthServerMetadata.md)
 - [Pagination](docs/Pagination.md)
 - [Policy](docs/Policy.md)
 - [PolicyListResponse](docs/PolicyListResponse.md)
 - [PolicyListResponseLimits](docs/PolicyListResponseLimits.md)
 - [PolicyPresetsResponse](docs/PolicyPresetsResponse.md)
 - [PolicyPresetsResponsePresetsInner](docs/PolicyPresetsResponsePresetsInner.md)
 - [PolicyResponse](docs/PolicyResponse.md)
 - [PolicyRule](docs/PolicyRule.md)
 - [PolicyRuleAction](docs/PolicyRuleAction.md)
 - [PolicyTestResponse](docs/PolicyTestResponse.md)
 - [PresignedUploadResponse](docs/PresignedUploadResponse.md)
 - [PresignedUploadResponseUpload](docs/PresignedUploadResponseUpload.md)
 - [ProductFacets](docs/ProductFacets.md)
 - [ProductFacetsCategoriesInner](docs/ProductFacetsCategoriesInner.md)
 - [ProductFacetsPriceRangesInner](docs/ProductFacetsPriceRangesInner.md)
 - [ProductFacetsStoresInner](docs/ProductFacetsStoresInner.md)
 - [QueryContactList200Response](docs/QueryContactList200Response.md)
 - [QueryContactList200ResponseEmailsInner](docs/QueryContactList200ResponseEmailsInner.md)
 - [QueryContactListRequest](docs/QueryContactListRequest.md)
 - [QueryContactListRequestFiltersInner](docs/QueryContactListRequestFiltersInner.md)
 - [QueryProducts200Response](docs/QueryProducts200Response.md)
 - [RemoveSuppression200Response](docs/RemoveSuppression200Response.md)
 - [RemoveSuppressionRequest](docs/RemoveSuppressionRequest.md)
 - [ResultsResponse](docs/ResultsResponse.md)
 - [RunBlacklistCheck200Response](docs/RunBlacklistCheck200Response.md)
 - [RunBlacklistCheck200ResponseCheck](docs/RunBlacklistCheck200ResponseCheck.md)
 - [RunServerTest201Response](docs/RunServerTest201Response.md)
 - [RunServerTestRequest](docs/RunServerTestRequest.md)
 - [RunSpamCheck201Response](docs/RunSpamCheck201Response.md)
 - [RunSpamCheckRequest](docs/RunSpamCheckRequest.md)
 - [ScheduleCampaignRequest](docs/ScheduleCampaignRequest.md)
 - [SendingDomain](docs/SendingDomain.md)
 - [SendingDomainDnsRecords](docs/SendingDomainDnsRecords.md)
 - [SendingDomainDnsRecordsNs](docs/SendingDomainDnsRecordsNs.md)
 - [SendingDomainIdentityScore](docs/SendingDomainIdentityScore.md)
 - [SendingDomainIdentityScoreBreakdown](docs/SendingDomainIdentityScoreBreakdown.md)
 - [ServerTest](docs/ServerTest.md)
 - [ServerTestDnsChecks](docs/ServerTestDnsChecks.md)
 - [ServerTestMxRecordsInner](docs/ServerTestMxRecordsInner.md)
 - [ServerTestSmtpCheck](docs/ServerTestSmtpCheck.md)
 - [SpamCheck](docs/SpamCheck.md)
 - [SpamCheckChecks](docs/SpamCheckChecks.md)
 - [StoreConnection](docs/StoreConnection.md)
 - [StoreProduct](docs/StoreProduct.md)
 - [SubscribeRequest](docs/SubscribeRequest.md)
 - [Subscriber](docs/Subscriber.md)
 - [SubscriberList](docs/SubscriberList.md)
 - [SuppressionAuditResponse](docs/SuppressionAuditResponse.md)
 - [SuppressionAuditResponseEntriesInner](docs/SuppressionAuditResponseEntriesInner.md)
 - [SuppressionCheckResponse](docs/SuppressionCheckResponse.md)
 - [SuppressionEntry](docs/SuppressionEntry.md)
 - [SuppressionListResponse](docs/SuppressionListResponse.md)
 - [SuppressionStatsResponse](docs/SuppressionStatsResponse.md)
 - [SuppressionStatsResponseByType](docs/SuppressionStatsResponseByType.md)
 - [SyncResponse](docs/SyncResponse.md)
 - [TelemetrySummary](docs/TelemetrySummary.md)
 - [TelemetrySummaryRates](docs/TelemetrySummaryRates.md)
 - [TelemetrySummaryTopDomainsInner](docs/TelemetrySummaryTopDomainsInner.md)
 - [TelemetrySummaryTopReasonsInner](docs/TelemetrySummaryTopReasonsInner.md)
 - [TelemetrySummaryTotals](docs/TelemetrySummaryTotals.md)
 - [TestPolicyRequest](docs/TestPolicyRequest.md)
 - [TestPolicyRequestTestResult](docs/TestPolicyRequestTestResult.md)
 - [TrackEventRequest](docs/TrackEventRequest.md)
 - [TrackEventResponse](docs/TrackEventResponse.md)
 - [UnsubscribeSubscriber200Response](docs/UnsubscribeSubscriber200Response.md)
 - [UpdatePolicyRequest](docs/UpdatePolicyRequest.md)
 - [ValidateBatch200Response](docs/ValidateBatch200Response.md)
 - [ValidateBatch200ResponseSummary](docs/ValidateBatch200ResponseSummary.md)
 - [ValidateBatchRequest](docs/ValidateBatchRequest.md)
 - [ValidateRequest](docs/ValidateRequest.md)
 - [ValidationResponse](docs/ValidationResponse.md)
 - [ValidationResponsePolicyApplied](docs/ValidationResponsePolicyApplied.md)
 - [ValidationResponseSuppressionMatch](docs/ValidationResponseSuppressionMatch.md)
 - [ValidationResult](docs/ValidationResult.md)
 - [ValidationResultSuppression](docs/ValidationResultSuppression.md)
 - [WebhookEvent](docs/WebhookEvent.md)

</details>

## Other SDKs

| Language | Package | Source |
|----------|---------|--------|
| [Python](https://mailodds.com/sdks) | [PyPI](https://pypi.org/project/mailodds/) | [GitHub](https://github.com/mailodds/python-sdk) |
| [TypeScript](https://mailodds.com/sdks) | [npm](https://www.npmjs.com/package/@mailodds/sdk) | [GitHub](https://github.com/mailodds/typescript-sdk) |
| [PHP](https://mailodds.com/sdks) | [Packagist](https://packagist.org/packages/mailodds/mailodds-php) | [GitHub](https://github.com/mailodds/php-sdk) |
| [Java](https://mailodds.com/sdks) | [GitHub](https://github.com/mailodds/java-sdk) | [GitHub](https://github.com/mailodds/java-sdk) |
| [Go](https://mailodds.com/sdks) | [pkg.go.dev](https://pkg.go.dev/github.com/mailodds/go-sdk) | [GitHub](https://github.com/mailodds/go-sdk) |
| [C# / .NET](https://mailodds.com/sdks) | [GitHub](https://github.com/mailodds/csharp-sdk) | [GitHub](https://github.com/mailodds/csharp-sdk) |
| [Ruby](https://mailodds.com/sdks) | [RubyGems](https://rubygems.org/gems/mailodds) | [GitHub](https://github.com/mailodds/ruby-sdk) |
| [Kotlin](https://mailodds.com/sdks) | [GitHub](https://github.com/mailodds/kotlin-sdk) | [GitHub](https://github.com/mailodds/kotlin-sdk) |
| [Rust](https://mailodds.com/sdks) | [crates.io](https://crates.io/crates/mailodds) | [GitHub](https://github.com/mailodds/rust-sdk) |
| [Swift](https://mailodds.com/sdks) | [GitHub](https://github.com/mailodds/swift-sdk) | [GitHub](https://github.com/mailodds/swift-sdk) |
| [Dart / Flutter](https://mailodds.com/sdks) | [pub.dev](https://pub.dev/packages/mailodds) | [GitHub](https://github.com/mailodds/dart-sdk) |

## Resources

- [MailOdds Dashboard](https://mailodds.com/dashboard)
- [API Reference](https://mailodds.com/api-reference)
- [SDK Overview](https://mailodds.com/sdks)
- [Contact Support](https://mailodds.com/contact)

## License

MIT
