# openapi::ReturnLogisticsSummary

Warehouse-level aggregation for the returns logistics dashboard.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**byStatus** | [**AnyType**](.md) | Number of return orders per status. | 
**byWarehouse** | [**array[ReturnWarehouseSummary]**](ReturnWarehouseSummary.md) | Per-warehouse aggregation. | 
**itemsRestocked** | **integer** | Sum of &#x60;restock: true&#x60; line-item quantities. | 
**itemsScrapped** | **integer** | Sum of &#x60;restock: false&#x60; line-item quantities (scrapped/disposed). | 
**totalItems** | **integer** | Sum of all line-item quantities across returns. | 
**totalReturns** | **integer** | Total number of return orders (excluding soft-deleted). | [Min: 0] 


