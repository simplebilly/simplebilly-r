# openapi::Employee


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **character** |  | [optional] [Max. length: 255] 
**backupEmployeeId** | **character** | References another employee who covers when this employee is absent. | [optional] 
**bic** | **character** |  | [optional] 
**city** | **character** |  | [optional] [Max. length: 100] 
**country** | [**CountryCode**](CountryCode.md) |  | [optional] [Enum: ] 
**createdAt** | **character** |  | [optional] 
**dateOfBirth** | **character** |  | [optional] 
**deletedAt** | **character** |  | [optional] 
**departmentId** | **character** | References the department entity. | [optional] 
**email** | **character** |  | [optional] 
**firstName** | **character** |  | [optional] [Max. length: 100] [Min. length: 1] 
**gender** | [**Gender**](Gender.md) | Gender for pay-transparency reporting: \&quot;male\&quot;, \&quot;female\&quot; or \&quot;diverse\&quot;. | [optional] [Enum: ] 
**hireDate** | **character** |  | [optional] 
**hourlyCost** | **character** | Hourly cost rate in EUR for labor-cost reporting; when unset the rate is derived from &#x60;monthly_salary / (weekly_hours * 4.33)&#x60;. | [optional] 
**iban** | **character** |  | [optional] 
**id** | **character** |  | [optional] 
**jobTitle** | **character** |  | [optional] [Max. length: 100] 
**lastLogin** | **character** |  | [optional] 
**lastName** | **character** |  | [optional] [Max. length: 100] [Min. length: 1] 
**lastUpdated** | **character** |  | [optional] 
**monthlySalary** | **character** | Gross monthly salary in EUR for pay-transparency reporting. | [optional] 
**phone** | **character** |  | [optional] [Pattern: ^\\+?[0-9\\s\\-\\(\\)]{7,20}$] 
**state** | **character** |  | [optional] [Max. length: 100] 
**status** | [**EmployeeStatus**](EmployeeStatus.md) |  | [optional] [Enum: ] 
**tenantId** | **character** |  | [optional] 
**updatedAt** | **character** |  | [optional] 
**userId** | **character** | References the user entity. | [optional] 
**weeklyHours** | **character** | Contractual weekly working hours for pay-transparency normalization. | [optional] 
**zip** | **character** |  | [optional] [Max. length: 20] 


