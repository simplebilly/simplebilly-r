# openapi::JobPostingCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **character** |  | [optional] 
**department** | **character** |  | [optional] 
**description** | **character** | What the job is; markdown/HTML. | [Min. length: 1] 
**employmentType** | [**EmploymentType**](EmploymentType.md) | full_time | part_time | contract | internship | temporary | [optional] [Enum: ] 
**location** | **character** |  | [optional] 
**remote** | **character** |  | 
**requiredSkills** | [**AnyType**](.md) | List of required skill names (JSON array of strings). | 
**requirements** | **character** | Structured profile of the required candidate (skills, experience). | [optional] 
**salaryMax** | **integer** |  | [optional] 
**salaryMin** | **integer** |  | [optional] 
**status** | [**JobPostingStatus**](JobPostingStatus.md) | draft | published | closed | [Enum: ] 
**title** | **character** |  | [Min. length: 1] 


