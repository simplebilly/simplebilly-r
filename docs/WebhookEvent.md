# openapi::WebhookEvent


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attempts** | **integer** |  | [optional] 
**channel** | **character** | source for inbound, target URL for outbound. | [optional] 
**direction** | [**WebhookDirection**](WebhookDirection.md) | inbound | outbound | [Enum: ] 
**eventType** | **character** |  | 
**lastError** | **character** |  | [optional] 
**payload** | [**AnyType**](.md) |  | [optional] 
**status** | [**WebhookEventStatus**](WebhookEventStatus.md) | accepted | delivered | failed | [optional] [Enum: ] 


