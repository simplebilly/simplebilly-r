# openapi::EmissionsReport


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**by_category** | [**array[CategoryTotal]**](CategoryTotal.md) |  | 
**by_scope** | [**array[ScopeTotal]**](ScopeTotal.md) |  | 
**by_year** | [**array[YearTotal]**](YearTotal.md) |  | 
**data_quality** | [**DataQuality**](DataQuality.md) |  | 
**intensity_per_employee** | **numeric** |  | [optional] 
**intensity_per_revenue_mio** | **numeric** | tCO2e per million EUR net revenue. | [optional] 
**net_revenue** | **numeric** | Sum of paid/sent/partially-paid invoices (EUR net) in the year. | [optional] 
**spend_based_estimate_tco2e** | **numeric** | Spend-based estimate from bookkeeping payments (EXIOBASE factor). | [optional] 
**targets** | [**array[TargetProgress]**](TargetProgress.md) |  | 
**total_tco2e** | **character** |  | 


