# openapi::StockTransfer


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lineItems** | [**AnyType**](.md) | JSON array of &#x60;{product_id, name, quantity, batch_number?}&#x60;. | 
**notes** | **character** |  | [optional] 
**sourceWarehouseId** | **character** | References the warehouse entity. | 
**status** | [**StockTransferStatus**](StockTransferStatus.md) | One of: draft | completed | cancelled | [Enum: ] 
**targetWarehouseId** | **character** | References the warehouse entity. | 
**transferDate** | **character** |  | 
**transferNumber** | **character** |  | 


