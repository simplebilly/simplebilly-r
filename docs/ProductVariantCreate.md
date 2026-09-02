# openapi::ProductVariantCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**barcode** | **character** |  | [optional] 
**imageLink** | **character** |  | [optional] 
**isActive** | **character** |  | [optional] 
**name** | **character** | Human-readable variant label, e.g. \&quot;Red / M\&quot;. | [optional] 
**optionValues** | [**AnyType**](.md) | Option name → value map, e.g. &#x60;{\&quot;Color\&quot;: \&quot;Red\&quot;, \&quot;Size\&quot;: \&quot;M\&quot;}&#x60;. | [optional] 
**price** | **character** | Explicit override price for this variant (takes precedence over parent price + delta). | [optional] 
**priceDelta** | **character** | Price adjustment relative to the parent product&#39;s &#x60;default_price&#x60;. | [optional] 
**productId** | **character** | The parent product this variant belongs to. References the product entity. | 
**sku** | **character** | Variant-specific SKU (must be unique per tenant). | 
**stockQuantity** | **integer** | Variant-level stock (optional — may be tracked on the parent only). | [optional] 


