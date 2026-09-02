# openapi::InventoryCountUpdate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**countDate** | **character** |  | [optional] 
**countNumber** | **character** |  | [optional] 
**lineItems** | [**AnyType**](.md) | JSON array of &#x60;{product_id, name, sku, expected_quantity, counted_quantity, bin_location?, batch_number?, variance}&#x60;. | [optional] 
**notes** | **character** |  | [optional] 
**status** | [**InventoryCountStatus**](InventoryCountStatus.md) | One of: draft | counting | reviewed | posted | [optional] [Enum: ] 
**warehouseId** | **character** | References the warehouse entity. | [optional] 


