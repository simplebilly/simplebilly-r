# openapi::SupplierConditionUpdate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **character** | Currency for the minimum order value. | [optional] [Max. length: 3] [Min. length: 3] 
**deliveryTerms** | **character** | Incoterms, e.g. \&quot;EXW\&quot;, \&quot;DAP\&quot;. | [optional] 
**earlyPaymentDiscountPercent** | **character** | Early-payment discount percentage (Skonto), e.g. 2.0. | [optional] 
**isDefault** | **character** | Is this the default condition for the supplier? | [optional] 
**minimumOrderValue** | **character** | Minimum order value required for this supplier. | [optional] 
**notes** | **character** |  | [optional] 
**paymentDueDays** | **integer** | Number of days within which payment is due. | [optional] 
**paymentTerms** | **character** | Payment terms, e.g. \&quot;14 Tage, 2% Skonto\&quot;. | [optional] 
**supplierContactId** | **character** | The supplier this condition applies to (&#x60;contact_id&#x60;). References the supplier entity. | [optional] 
**supplierName** | **character** | The name of the supplier, denormalized for easy listing. | [optional] 
**volumeDiscountTiers** | [**AnyType**](.md) | Tiered discounts: JSON array of &#x60;{min_quantity, discount_percent}&#x60;. | [optional] 


