# openapi::ServiceAssignmentCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employeeId** | **character** | References the employees entity. | [optional] 
**jobId** | **character** | References the service_jobs entity. | [optional] 
**notes** | **character** |  | [optional] 
**scheduledDate** | **character** | Work day the assignment is scheduled for. | [optional] 
**scheduledEnd** | **character** | Planned end time of the assignment. | [optional] 
**scheduledStart** | **character** | Planned start time of the assignment. | [optional] 
**status** | [**ServiceAssignmentStatus**](ServiceAssignmentStatus.md) | Assignment lifecycle status: \&quot;planned\&quot;, \&quot;confirmed\&quot;, \&quot;en_route\&quot;, \&quot;in_progress\&quot;, \&quot;completed\&quot; or \&quot;cancelled\&quot;. | [optional] [Enum: ] 


