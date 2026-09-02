# openapi::CustomerCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**AnyType**](.md) |  | [optional] 
**contactPerson** | **character** |  | [optional] [Max. length: 255] 
**email** | **character** |  | [optional] 
**externalOrderNumber** | **character** |  | [optional] [Max. length: 100] 
**name** | **character** |  | [Max. length: 255] [Min. length: 1] 
**paymentGracePeriodDays** | **integer** |  | [optional] [Max: 365] [Min: 0] 
**phone** | **character** |  | [optional] [Pattern: ^\\+?[0-9\\s\\-\\(\\)]{7,20}$] 
**vatId** | **character** |  | [optional] [Pattern: ^[A-Z]{2}[0-9A-Z]{8,15}$] 


