# openapi::ReturnOrder


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerContactId** | **character** | References the contact entity. | [optional] 
**customerName** | **character** |  | [optional] 
**lineItems** | [**AnyType**](.md) | JSON array of &#x60;{product_id, name, quantity, condition, restock, batch_number?}&#x60;. | [optional] 
**notes** | **character** |  | [optional] 
**orderId** | **character** | References the order entity. | [optional] 
**orderNumber** | **character** |  | [optional] 
**returnNumber** | **character** |  | 
**returnReason** | **character** |  | [optional] 
**status** | [**ReturnOrderStatus**](ReturnOrderStatus.md) | One of: requested | received | inspected | restocked | closed | [Enum: ] 
**warehouseId** | **character** | Warehouse into which restockable items are returned. References the warehouse entity. | [optional] 


