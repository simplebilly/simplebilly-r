# openapi::ProformaInvoiceCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**convertedAt** | **character** |  | [optional] 
**convertedToInvoiceId** | **character** | Set when the proforma was converted into a real invoice. References the invoice entity. | [optional] 
**currency** | [**CurrencyCode**](CurrencyCode.md) |  | [Enum: ] 
**customerId** | **character** | References the customer entity. | [optional] 
**customerSnapshot** | [**AnyType**](.md) | Snapshot of the recipient at issue time (address, VAT id, …). | [optional] 
**issueDate** | **character** |  | 
**lineItems** | [**AnyType**](.md) |  | 
**notes** | **character** |  | [optional] 
**orderNumber** | **character** | Reference to the order/quote this proforma belongs to. | [optional] 
**paymentDueDate** | **character** | Optional deadline the real invoice should carry after conversion. | [optional] 
**quotationId** | **character** | References the quotation entity. | [optional] 
**status** | [**ProformaInvoiceStatus**](ProformaInvoiceStatus.md) | &#x60;draft&#x60; | &#x60;sent&#x60; | &#x60;converted&#x60;. | [Enum: ] 
**subtotal** | **character** |  | 
**totalAmount** | **character** |  | 
**totalTax** | **character** |  | 


