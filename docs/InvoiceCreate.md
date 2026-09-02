# openapi::InvoiceCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | [**AnyType**](.md) |  | [optional] 
**billingPeriodEnd** | **character** |  | [optional] 
**billingPeriodStart** | **character** |  | [optional] 
**cancellationDate** | **character** |  | [optional] 
**cancellationInvoiceId** | **character** | References the invoice entity. | [optional] 
**cancellationReason** | **character** |  | [optional] 
**contractId** | **character** | References the contract entity. | [optional] 
**currency** | [**CurrencyCode**](CurrencyCode.md) |  | [Enum: ] 
**customerId** | **character** | References the customer entity. | [optional] 
**discountAmount** | **character** |  | [optional] 
**discountDays** | **integer** |  | [optional] 
**discountPercentage** | **character** |  | [optional] 
**documentType** | [**DocumentType**](DocumentType.md) |  | [optional] [Enum: ] 
**dunningLevel** | **integer** |  | [optional] 
**inputVatAmount** | **character** |  | [optional] 
**inputVatDeductible** | **character** |  | [optional] 
**inputVatPercentage** | **character** |  | [optional] 
**introductionText** | **character** |  | [optional] 
**invoiceType** | [**InvoiceType**](InvoiceType.md) |  | [Enum: ] 
**isCancelled** | **character** |  | [optional] 
**isDraft** | **character** |  | [optional] 
**isEuAcquisition** | **character** |  | [optional] 
**isEuDelivery** | **character** |  | [optional] 
**isIntraCommunityAcquisition** | **character** |  | [optional] 
**isReverseCharge** | **character** |  | [optional] 
**issueDate** | **character** |  | 
**ledgerAccount** | **character** |  | [optional] 
**lineItems** | [**AnyType**](.md) |  | 
**margin25a** | **character** |  | [optional] 
**margin25aGross** | **character** |  | [optional] 
**margin25aPurchasePrice** | **character** |  | [optional] 
**notes** | **character** |  | [optional] 
**orderNumber** | **character** |  | [optional] 
**originalPdfPath** | **character** |  | [optional] 
**paidAmount** | **character** |  | [optional] 
**paymentDueDate** | **character** |  | [optional] 
**paymentStatus** | [**PaymentStatus**](PaymentStatus.md) |  | [optional] [Enum: ] 
**paymentTermsText** | **character** |  | [optional] 
**precedingSalesVoucherId** | **character** | References the preceding sales voucher entity. | [optional] 
**precedingSalesVoucherType** | [**PrecedingSalesVoucherType**](PrecedingSalesVoucherType.md) |  | [optional] [Enum: ] 
**receiptConfirmationAvailable** | **character** |  | [optional] 
**relatedInvoiceId** | **character** | References the invoice entity. | [optional] 
**relationshipType** | **character** |  | [optional] 
**senderSnapshot** | [**AnyType**](.md) |  | [optional] 
**sentAt** | **character** |  | [optional] 
**servicePeriodEnd** | **character** |  | [optional] 
**servicePeriodStart** | **character** |  | [optional] 
**status** | [**InvoiceStatus**](InvoiceStatus.md) |  | [Enum: ] 
**subtotal** | **character** |  | 
**supplierId** | **character** | References the supplier entity. | [optional] 
**taxExemptionReason** | **character** |  | [optional] 
**totalAmount** | **character** |  | 
**totalTax** | **character** |  | 
**vatCountry** | [**CountryCode**](CountryCode.md) |  | [optional] [Enum: ] 
**vatSpecialCase** | **character** |  | [optional] 


