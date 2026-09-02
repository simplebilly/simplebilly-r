# openapi::EmissionEntry


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityValue** | **character** | Activity amount in &#x60;unit&#x60; (kWh, l, km, t, tkm, EUR). | 
**categoryId** | **character** | GHG-Protocol category key, e.g. \&quot;purchased_goods\&quot;, \&quot;business_travel\&quot;. | 
**description** | **character** |  | 
**efSource** | **character** | Emission-factor source, e.g. \&quot;UBA-2024\&quot;, \&quot;DEFRA-2024\&quot;. | 
**efVersion** | **character** |  | 
**method** | [**EmissionMethod**](EmissionMethod.md) | \&quot;activity\&quot; | \&quot;spend\&quot; | \&quot;supplier\&quot;. | [Enum: ] 
**scope** | [**GhgScope**](GhgScope.md) | GHG scope: \&quot;1\&quot; | \&quot;2\&quot; | \&quot;3\&quot;. | [Enum: ] 
**tco2e** | **character** | Computed server-side: activity * factor / 1000, rounded to 4 dp. | 
**unit** | **character** | Unit of the activity value. | 
**updatedAt** | **character** |  | [optional] 
**year** | **integer** | Reporting year. | 


