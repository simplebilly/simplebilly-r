# openapi::ProductionOrderCosting

Actual-costing (Nachkalkulation) report for a production order.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**costPerUnit** | **character** | material_cost_total ÷ quantity. | 
**costSource** | **character** | \&quot;actual\&quot; when costed from stock-movement consumption, else \&quot;planned\&quot;. | 
**lines** | [**array[CostingLine]**](CostingLine.md) |  | 
**marginPerUnit** | **character** | sale_price − cost_per_unit. | [optional] 
**marginPercent** | **character** | margin_per_unit ÷ cost_per_unit as a percentage. | [optional] 
**materialCostTotal** | **character** | Total material cost for the whole order. | 
**orderNumber** | **character** |  | 
**productionOrderId** | **character** |  | 
**quantity** | **integer** |  | 
**salePrice** | **character** | Finished product&#39;s sale price per unit (used to compute margin). | [optional] 
**status** | **character** |  | 


