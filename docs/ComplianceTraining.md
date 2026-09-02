# openapi::ComplianceTraining


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assignable** | **character** | Whether HR can assign this training as required for employees. | [optional] 
**code** | **character** | Stable code used by plugins and frontend players (e.g. \&quot;data_privacy\&quot;). | [optional] [Max. length: 64] [Min. length: 1] 
**createdAt** | **character** |  | [optional] 
**deletedAt** | **character** |  | [optional] 
**description** | **character** |  | [optional] [Max. length: 2000] 
**id** | **character** |  | [optional] 
**passScore** | **integer** | Minimum score (0–100) required to pass. | [optional] 
**pluginPlatform** | **character** | Marketplace plugin platform id when source &#x3D; Plugin. | [optional] [Max. length: 64] 
**source** | [**TrainingSource**](TrainingSource.md) |  | [optional] [Enum: ] 
**tenantId** | **character** |  | [optional] 
**title** | **character** |  | [optional] [Max. length: 200] [Min. length: 1] 
**updatedAt** | **character** |  | [optional] 
**validityMonths** | **integer** | Certificate validity in months; null &#x3D; no expiry. | [optional] 


