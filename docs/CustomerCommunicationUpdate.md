# openapi::CustomerCommunicationUpdate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **character** | The message body, call summary or note text. | [optional] 
**channel** | [**CommunicationChannel**](CommunicationChannel.md) |  | [optional] [Enum: ] 
**contactId** | **character** | The contact (customer/supplier) this communication belongs to. References the contact entity. | [optional] 
**counterparty** | **character** | Email/phone of the counterparty, if applicable. | [optional] 
**direction** | [**CommunicationDirection**](CommunicationDirection.md) |  | [optional] [Enum: ] 
**occurredAt** | **character** | When the communication happened (defaults to now on create). | [optional] 
**subject** | **character** |  | [optional] 
**tags** | [**AnyType**](.md) | Free-form tags, e.g. &#x60;[\&quot;follow-up-required\&quot;]&#x60;. | [optional] 


