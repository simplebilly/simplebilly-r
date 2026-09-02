# openapi::StockMovement


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delta** | **integer** | Signed movement: positive &#x3D; into stock, negative &#x3D; out of stock. | 
**movementType** | [**MovementType**](MovementType.md) | One of the &#x60;MOVEMENT_*&#x60; constants. | [Enum: ] 
**productId** | **character** | References the product entity. | 
**quantity** | **integer** | Absolute quantity moved (always &gt;&#x3D; 0). | 
**reason** | **character** |  | [optional] 
**referenceId** | **character** | Primary-key of the referencing entity. | [optional] 
**referenceType** | [**ReferenceType**](ReferenceType.md) | Entity that caused the movement, e.g. &#x60;goods_receipt&#x60;, &#x60;stock_transfer&#x60;. | [optional] [Enum: ] 
**warehouseId** | **character** | References the warehouse entity. | 


