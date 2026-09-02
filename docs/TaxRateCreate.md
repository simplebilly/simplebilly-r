# openapi::TaxRateCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**countryCode** | **character** | ISO 3166-1 alpha-2 country code. | 
**effectiveFrom** | **character** | Date this rate took effect; &#x60;None&#x60; &#x3D; not date-bound. | [optional] 
**isDefault** | **character** | Default rate for the country (one per country); fallback for lookups when no dated rate applies. | 
**name** | **character** | Human name, e.g. \&quot;VAT\&quot;. | 
**ratePercent** | **integer** | Rate in hundredths of a percent: 1900 &#x3D; 19.00%. | 


