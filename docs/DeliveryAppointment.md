# openapi::DeliveryAppointment


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **character** |  | 
**notes** | **character** |  | [optional] 
**phone** | **character** |  | [optional] 
**requestedDate** | **character** |  | 
**status** | [**DeliveryAppointmentStatus**](DeliveryAppointmentStatus.md) | One of: requested | confirmed | arrived | cancelled | completed | [Enum: ] 
**supplierName** | **character** |  | 
**timeSlot** | **character** | e.g. \&quot;08:00-10:00\&quot; | [optional] 
**warehouseId** | **character** | References the warehouse entity. | 


