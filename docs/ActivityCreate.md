# openapi::ActivityCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityType** | [**ActivityType**](ActivityType.md) | One of: call | email | meeting | task | note | [Enum: ] 
**assignedTo** | **character** | User responsible (&#x60;employee.employee_id&#x60;). | [optional] 
**contactId** | **character** | Contact this activity belongs to (&#x60;contact.contact_id&#x60;). References the contact entity. | [optional] 
**description** | **character** |  | [optional] 
**dueDate** | **character** | Follow-up / Wiedervorlage date. Open activities with a due date in the past are overdue. | [optional] 
**reminderDate** | **character** | When to remind about the follow-up. | [optional] 
**status** | [**ActivityStatus**](ActivityStatus.md) | One of: open | done | cancelled | [Enum: ] 
**subject** | **character** | Short subject line. | 


