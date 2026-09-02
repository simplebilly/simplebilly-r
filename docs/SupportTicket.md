# openapi::SupportTicket


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assignedTo** | **character** |  | [optional] 
**channelId** | **character** |  | [optional] 
**channelType** | [**SupportChannelType**](SupportChannelType.md) |  | [optional] [Enum: ] 
**closedAt** | **character** |  | [optional] 
**createdAt** | **character** |  | 
**customerEmail** | **character** |  | [optional] 
**customerId** | **character** | References the customer entity. | [optional] 
**customerName** | **character** |  | [optional] 
**externalId** | **character** |  | [optional] 
**firstMessageAt** | **character** |  | 
**lastMessageAt** | **character** |  | 
**leadId** | **character** | References the lead entity. | [optional] 
**messageCount** | **integer** |  | 
**orderRef** | **character** |  | [optional] 
**priority** | [**TicketPriority**](TicketPriority.md) |  | [Enum: ] 
**resolution** | **character** |  | [optional] 
**status** | [**SupportTicketStatus**](SupportTicketStatus.md) |  | [Enum: ] 
**subject** | **character** |  | 
**tags** | [**AnyType**](.md) |  | 
**tenantId** | **character** |  | 
**updatedAt** | **character** |  | [optional] 


