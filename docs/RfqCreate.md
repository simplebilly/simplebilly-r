# openapi::RfqCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **character** |  | [optional] 
**lineItems** | [**AnyType**](.md) | JSON array of &#x60;{product_id, name, sku, quantity, requested_unit_price?, quoted_unit_price?}&#x60;. | 
**notes** | **character** |  | [optional] 
**requestedDate** | **character** |  | 
**responseDate** | **character** |  | [optional] 
**rfqNumber** | **character** |  | 
**status** | [**RfqStatus**](RfqStatus.md) | One of: draft | sent | offer_received | rejected | converted | [Enum: ] 
**supplierContactId** | **character** | References the supplier entity. | [optional] 
**supplierName** | **character** |  | [optional] 


