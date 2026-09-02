# openapi::ShippingRuleCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrier** | **character** | Provider that auto-filled this rule (e.g. \&quot;ups\&quot;), if any. | [optional] 
**country** | [**CountryCode**](CountryCode.md) | None &#x3D; applies to all countries. | [optional] [Enum: ] 
**deliveryTime** | **character** | Delivery time text, e.g. \&quot;1-3\&quot;. | [optional] 
**isActive** | **character** |  | [optional] 
**maxWeightKg** | **numeric** |  | [optional] 
**minWeightKg** | **numeric** |  | [optional] 
**name** | **character** | Delivery-method label, e.g. \&quot;Standardversand\&quot;. | [Min. length: 1] 
**notes** | **character** |  | [optional] 
**price** | **character** | Shipping cost in the shop&#39;s currency. | 
**priority** | **integer** | Lower wins when multiple rules match. | [optional] 


