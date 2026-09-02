# openapi::ProductionOrder


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bomId** | **character** | References the BOM entity. | [optional] 
**components** | [**AnyType**](.md) | JSON snapshot of the BOM components at creation time. | [optional] 
**endDate** | **character** |  | [optional] 
**notes** | **character** |  | [optional] 
**orderNumber** | **character** |  | 
**productId** | **character** | The finished product to manufacture. References the product entity. | 
**quantity** | **integer** | Quantity of finished product to produce. | 
**sourceWarehouseId** | **character** | Warehouse components are consumed from. References the warehouse entity. | [optional] 
**startDate** | **character** |  | [optional] 
**status** | [**ProductionOrderStatus**](ProductionOrderStatus.md) | One of: planned | in_production | completed | cancelled | [optional] [Enum: ] 
**targetWarehouseId** | **character** | Warehouse the finished product is added to. References the warehouse entity. | [optional] 


