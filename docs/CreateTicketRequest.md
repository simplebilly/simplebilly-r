# openapi::CreateTicketRequest

Request body for creating a support ticket. Wraps the generated `SupportTicketCreateDto` fields plus `message_body` which is not a Model field (used to create the initial `ticket_message`).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel_id** | **character** |  | [optional] 
**channel_type** | **character** |  | [optional] 
**customer_email** | **character** |  | [optional] 
**customer_id** | **character** |  | [optional] 
**customer_name** | **character** |  | [optional] 
**external_id** | **character** |  | [optional] 
**message_body** | **character** |  | 
**order_ref** | **character** |  | [optional] 
**subject** | **character** |  | 


