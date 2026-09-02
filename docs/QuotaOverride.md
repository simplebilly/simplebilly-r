# openapi::QuotaOverride

Schema of the `tenants.quotas` JSON override column. Any field that is present overrides the plan-derived value.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**features** | [**QuotaOverrideFeatures**](QuotaOverrideFeatures.md) |  | [optional] 
**max_connectors** | **integer** |  | [optional] 
**max_invoices_per_month** | **integer** |  | [optional] 
**max_users** | **integer** |  | [optional] 
**metered** | **map(integer)** |  | [optional] 
**plan** | **character** | Custom plan id; unknown ids resolve to enterprise limits. | [optional] 


