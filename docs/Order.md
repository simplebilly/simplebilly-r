# openapi::Order


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auditLog** | [**AnyType**](.md) |  | [optional] 
**currency** | **character** |  | 
**customerId** | **character** | References the customer entity. | 
**externalReference** | **character** |  | [optional] 
**invoiceAddress** | [**AnyType**](.md) |  | [optional] 
**items** | [**AnyType**](.md) |  | [optional] 
**language** | [**LanguageCode**](LanguageCode.md) |  | [optional] [Enum: ] 
**orderStatus** | [**OrderStatus**](OrderStatus.md) |  | [Enum: ] 
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | [Enum: ] 
**shippingAddress** | [**AnyType**](.md) |  | [optional] 
**shippingCost** | **character** |  | 
**shippingMethod** | **character** |  | 
**shippingWeight** | **character** |  | 
**tags** | **array[character]** |  | 
**totalCost** | **character** |  | 


