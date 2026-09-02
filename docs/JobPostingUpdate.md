# openapi::JobPostingUpdate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **character** |  | [optional] 
**department** | **character** |  | [optional] 
**description** | **character** | What the job is; markdown/HTML. | [optional] [Min. length: 1] 
**employmentType** | [**EmploymentType**](EmploymentType.md) | full_time | part_time | contract | internship | temporary | [optional] [Enum: ] 
**location** | **character** |  | [optional] 
**remote** | **character** |  | [optional] 
**requiredSkills** | [**AnyType**](.md) | List of required skill names (JSON array of strings). | [optional] 
**requirements** | **character** | Structured profile of the required candidate (skills, experience). | [optional] 
**salaryMax** | **integer** |  | [optional] 
**salaryMin** | **integer** |  | [optional] 
**status** | [**JobPostingStatus**](JobPostingStatus.md) | draft | published | closed | [optional] [Enum: ] 
**title** | **character** |  | [optional] [Min. length: 1] 


