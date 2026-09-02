# openapi::GenerateVariantsRequest

Request body for generating the full variant set from option values.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**options** | [**map(array[character])**](array.md) | Option name → list of values, e.g. &#x60;{\&quot;Color\&quot;: [\&quot;Red\&quot;, \&quot;Blue\&quot;], \&quot;Size\&quot;: [\&quot;S\&quot;, \&quot;M\&quot;]}&#x60;. The cartesian product of these lists is generated. | [optional] 
**priceDelta** | **character** | Optional per-variant price delta applied to every generated variant. | [optional] 
**productId** | **character** |  | 
**skuPrefix** | **character** | Optional prefix for the generated SKUs (suffix is the option values joined by &#x60;-&#x60;). Falls back to the parent product&#39;s SKU. | [optional] 


