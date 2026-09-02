# openapi::PlanLimits

Per-plan numeric limits. `-1` in any field means unlimited.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**maxConnectors** | **integer** |  | 
**maxInvoicesPerMonth** | **integer** |  | 
**maxUsers** | **integer** |  | 
**metered** | **map(integer)** |  | [optional] 
**paidConnectors** | **array[character]** | Connectors that are *not* included in this plan (require a higher tier). Empty &#x3D; all connectors included on this plan. | 


