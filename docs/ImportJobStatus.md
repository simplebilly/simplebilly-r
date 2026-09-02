# openapi::ImportJobStatus


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **character** | Set only when the job failed. | [optional] 
**job_id** | **character** |  | 
**processed** | **integer** |  | [Min: 0] 
**progress** | **integer** | 0–100 | [Min: 0] 
**provider** | **character** | Which competitor the import came from (lexoffice | billbee); the frontend uses it to label the job. Absent for legacy jobs. | [optional] 
**stage** | **character** | queued | fetching | downloading | importing | done | 
**status** | **character** | pending | running | done | failed | 
**total** | **integer** |  | [Min: 0] 


