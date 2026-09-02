# openapi::PurchaseOrderUpdate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **character** |  | [optional] 
**deliveryAddress** | [**AnyType**](.md) |  | [optional] 
**expectedDeliveryDate** | **character** |  | [optional] 
**lineItems** | [**AnyType**](.md) | JSON array of &#x60;{product_id, name, quantity, unit_price_net, tax_rate, delivery_date}&#x60;. | [optional] 
**notes** | **character** |  | [optional] 
**orderDate** | **character** |  | [optional] 
**poNumber** | **character** |  | [optional] 
**status** | [**PurchaseOrderStatus**](PurchaseOrderStatus.md) | One of: draft | ordered | partially_received | received | cancelled | [optional] [Enum: ] 
**supplierContactId** | **character** | References the supplier entity. | [optional] 
**supplierName** | **character** |  | [optional] 
**totalGrossAmount** | **character** |  | [optional] 
**totalNetAmount** | **character** |  | [optional] 


