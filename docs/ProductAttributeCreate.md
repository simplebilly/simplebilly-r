# openapi::ProductAttributeCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isFilterable** | **character** | Whether this attribute participates in the shop&#39;s faceted filters. | [optional] 
**name** | **character** | Attribute name, e.g. &#x60;Material&#x60;, &#x60;Farbe&#x60;, &#x60;Gewicht&#x60;. | [Min. length: 1] 
**position** | **integer** | Ordering position within the product&#39;s attribute list. | [optional] 
**productId** | **character** | The product this attribute belongs to. References the product entity. | 
**unit** | **character** | Optional unit of measure for numeric attributes, e.g. &#x60;g&#x60;, &#x60;cm&#x60;. | [optional] 
**value** | **character** | Attribute value, e.g. &#x60;Baumwolle&#x60;, &#x60;Rot&#x60;, &#x60;180g&#x60;. | [Min. length: 1] 


