# openapi::InventoryCount


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**countDate** | **character** |  | 
**countNumber** | **character** |  | 
**lineItems** | [**AnyType**](.md) | JSON array of &#x60;{product_id, name, sku, expected_quantity, counted_quantity, bin_location?, batch_number?, variance}&#x60;. | 
**notes** | **character** |  | [optional] 
**status** | [**InventoryCountStatus**](InventoryCountStatus.md) | One of: draft | counting | reviewed | posted | [Enum: ] 
**warehouseId** | **character** | References the warehouse entity. | 


