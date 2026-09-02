# openapi::ServiceJobCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **character** | Street + zip + city of the job location. | [optional] [Max. length: 255] [Min. length: 1] 
**customerEmail** | **character** | Customer email for email notifications. | [optional] 
**customerId** | **character** | References the customer entity. | [optional] 
**customerName** | **character** | Denormalized customer name for quick display. | [optional] 
**customerPhone** | **character** | Customer phone for SMS notifications later. | [optional] 
**description** | **character** | What work needs to be done. | [optional] [Max. length: 1000] [Min. length: 1] 
**estimatedDurationMinutes** | **integer** | Estimated time for the job in minutes. | [optional] [Max: 100000] [Min: 1] 
**lat** | **numeric** | Latitude for map display (OpenStreetMap). | [optional] 
**lng** | **numeric** | Longitude for map display (OpenStreetMap). | [optional] 
**notes** | **character** |  | [optional] 
**status** | [**ServiceJobStatus**](ServiceJobStatus.md) | Dispatch status: \&quot;pending\&quot;, \&quot;assigned\&quot;, \&quot;en_route\&quot;, \&quot;in_progress\&quot;, \&quot;completed\&quot;, \&quot;cancelled\&quot;. | [optional] [Enum: ] 


