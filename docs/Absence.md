# openapi::Absence


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**absenceType** | [**AbsenceType**](AbsenceType.md) | One of \&quot;vacation\&quot;, \&quot;sick\&quot;, \&quot;sabbatical\&quot;, \&quot;parental\&quot;, \&quot;other\&quot;. | [optional] [Enum: ] 
**approvedAt** | **character** |  | [optional] 
**approvedBy** | **character** | References the user entity. | [optional] 
**createdAt** | **character** |  | [optional] 
**deletedAt** | **character** |  | [optional] 
**employeeId** | **character** | References the employee entity. | [optional] 
**endDate** | **character** |  | [optional] 
**id** | **character** |  | [optional] 
**notes** | **character** |  | [optional] [Max. length: 2000] 
**startDate** | **character** |  | [optional] 
**status** | [**AbsenceStatus**](AbsenceStatus.md) | One of \&quot;pending\&quot;, \&quot;approved\&quot;, \&quot;rejected\&quot;, \&quot;cancelled\&quot;. | [optional] [Enum: ] 
**tenantId** | **character** |  | [optional] 
**updatedAt** | **character** |  | [optional] 


