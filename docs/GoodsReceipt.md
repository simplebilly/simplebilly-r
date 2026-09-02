# openapi::GoodsReceipt


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grNumber** | **character** |  | 
**lineItems** | [**AnyType**](.md) | JSON array of &#x60;{product_id, name, quantity, batch_number?, expiry_date?, bin_location?}&#x60;. | 
**notes** | **character** |  | [optional] 
**purchaseOrderId** | **character** | References the purchase order entity. | [optional] 
**receiptDate** | **character** |  | 
**supplierContactId** | **character** | References the supplier entity. | [optional] 
**supplierName** | **character** |  | [optional] 
**warehouseId** | **character** | References the warehouse entity. | 


