# openapi::JobApplication


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cvFile** | **character** | Relative path of the stored CV file under the upload dir. | [optional] 
**cvText** | **character** | Extracted CV text, used for match-scoring. | [optional] 
**email** | **character** |  | [optional] 
**matchReason** | **character** |  | [optional] 
**matchScore** | **integer** | 0-100 LLM match score against the posting&#39;s required profile. | [optional] 
**name** | **character** |  | [optional] 
**phone** | **character** |  | [optional] 
**postingId** | **character** | References the job_posting entity. | [optional] 
**source** | **character** | website | email | board | 
**status** | [**ApplicationStatus**](ApplicationStatus.md) | new | reviewing | interview | hired | rejected | [Enum: ] 


