# openapi::BomCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**components** | [**AnyType**](.md) | JSON array of &#x60;{product_id, name, quantity, unit, scrap_rate}&#x60;. | [optional] 
**description** | **character** |  | [optional] 
**name** | **character** |  | 
**outputQuantity** | **integer** | Output quantity per production run (defaults to 1). | [optional] 
**productId** | **character** | The finished product this BOM produces. References the product entity. | 
**status** | [**BomStatus**](BomStatus.md) | One of: draft | active | archived | [optional] [Enum: ] 


