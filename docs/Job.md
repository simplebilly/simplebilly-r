# openapi::Job


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attempts** | **integer** |  | [optional] 
**jobType** | **character** | Discriminator the worker dispatches on (e.g. \&quot;webhook.deliver\&quot;). | 
**maxAttempts** | **integer** |  | 
**payload** | [**AnyType**](.md) |  | [optional] 
**runAt** | **character** | Earliest execution time; None &#x3D; run now. | [optional] 
**status** | [**JobStatus**](JobStatus.md) | pending | running | done | failed | [Enum: ] 


