# openapi::SupplierInvoiceUpdate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **character** |  | [optional] 
**goodsReceiptId** | **character** | References the goods receipt entity. | [optional] 
**invoiceDate** | **character** |  | [optional] 
**invoiceNumber** | **character** |  | [optional] 
**lineItems** | [**AnyType**](.md) | JSON array of &#x60;{product_id, name, quantity, unitPriceNet, taxRate}&#x60;. | [optional] 
**notes** | **character** |  | [optional] 
**purchaseOrderId** | **character** | References the purchase order entity. | [optional] 
**status** | [**SupplierInvoiceStatus**](SupplierInvoiceStatus.md) | One of: draft | matched | has_variances | posted | cancelled | [optional] [Enum: ] 
**supplierContactId** | **character** | References the supplier entity. | [optional] 
**supplierName** | **character** |  | [optional] 
**totalGrossAmount** | **character** |  | [optional] 
**totalNetAmount** | **character** |  | [optional] 


