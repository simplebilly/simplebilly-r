# SupplierInvoiceApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateSupplierInvoice**](SupplierInvoiceApi.md#CreateSupplierInvoice) | **POST** /api/v1/supplier-invoices | 
[**DeleteSupplierInvoice**](SupplierInvoiceApi.md#DeleteSupplierInvoice) | **DELETE** /api/v1/supplier-invoices/{supplier_invoice_id} | 
[**GetSupplierInvoice**](SupplierInvoiceApi.md#GetSupplierInvoice) | **GET** /api/v1/supplier-invoices/{supplier_invoice_id} | 
[**ListSupplierInvoices**](SupplierInvoiceApi.md#ListSupplierInvoices) | **GET** /api/v1/supplier-invoices/ | 
[**UpdateSupplierInvoice**](SupplierInvoiceApi.md#UpdateSupplierInvoice) | **PUT** /api/v1/supplier-invoices/{supplier_invoice_id} | 
[**UpdateSupplierInvoiceStatus**](SupplierInvoiceApi.md#UpdateSupplierInvoiceStatus) | **PUT** /api/v1/supplier-invoices/{supplier_invoice_id}/status | 


# **CreateSupplierInvoice**
> SupplierInvoice CreateSupplierInvoice(supplier_invoice)



### Example
```R
library(openapi)

# prepare function argument(s)
var_supplier_invoice <- SupplierInvoice$new("invoiceDate_example", "invoiceNumber_example", TODO, SupplierInvoiceStatus$new(), "currency_example", "goodsReceiptId_example", "notes_example", "purchaseOrderId_example", "supplierContactId_example", "supplierName_example", "totalGrossAmount_example", "totalNetAmount_example") # SupplierInvoice | 

api_instance <- SupplierInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateSupplierInvoice(var_supplier_invoicedata_file = "result.txt")
result <- api_instance$CreateSupplierInvoice(var_supplier_invoice)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplier_invoice** | [**SupplierInvoice**](SupplierInvoice.md)|  | 

### Return type

[**SupplierInvoice**](SupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **DeleteSupplierInvoice**
> DeleteSupplierInvoice(supplier_invoice_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_supplier_invoice_id <- "supplier_invoice_id_example" # character | 

api_instance <- SupplierInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteSupplierInvoice(var_supplier_invoice_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplier_invoice_id** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No Content |  -  |
| **400** | Bad request |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **GetSupplierInvoice**
> SupplierInvoice GetSupplierInvoice(supplier_invoice_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_supplier_invoice_id <- "supplier_invoice_id_example" # character | 

api_instance <- SupplierInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSupplierInvoice(var_supplier_invoice_iddata_file = "result.txt")
result <- api_instance$GetSupplierInvoice(var_supplier_invoice_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplier_invoice_id** | **character**|  | 

### Return type

[**SupplierInvoice**](SupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **ListSupplierInvoices**
> array[SupplierInvoice] ListSupplierInvoices(page = var.page, page_size = var.page_size, status = var.status, purchase_order_id = var.purchase_order_id, supplier_name = var.supplier_name)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_purchase_order_id <- "purchase_order_id_example" # character |  (Optional)
var_supplier_name <- "supplier_name_example" # character |  (Optional)

api_instance <- SupplierInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListSupplierInvoices(page = var_page, page_size = var_page_size, status = var_status, purchase_order_id = var_purchase_order_id, supplier_name = var_supplier_namedata_file = "result.txt")
result <- api_instance$ListSupplierInvoices(page = var_page, page_size = var_page_size, status = var_status, purchase_order_id = var_purchase_order_id, supplier_name = var_supplier_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **status** | **character**|  | [optional] 
 **purchase_order_id** | **character**|  | [optional] 
 **supplier_name** | **character**|  | [optional] 

### Return type

[**array[SupplierInvoice]**](SupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **500** | Internal server error |  -  |

# **UpdateSupplierInvoice**
> SupplierInvoice UpdateSupplierInvoice(supplier_invoice_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_supplier_invoice_id <- "supplier_invoice_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- SupplierInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateSupplierInvoice(var_supplier_invoice_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateSupplierInvoice(var_supplier_invoice_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplier_invoice_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**SupplierInvoice**](SupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad request |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **UpdateSupplierInvoiceStatus**
> SupplierInvoice UpdateSupplierInvoiceStatus(supplier_invoice_id, supplier_invoice_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_supplier_invoice_id <- "supplier_invoice_id_example" # character | 
var_supplier_invoice_status_update <- SupplierInvoiceStatusUpdate$new("status_example") # SupplierInvoiceStatusUpdate | 

api_instance <- SupplierInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateSupplierInvoiceStatus(var_supplier_invoice_id, var_supplier_invoice_status_updatedata_file = "result.txt")
result <- api_instance$UpdateSupplierInvoiceStatus(var_supplier_invoice_id, var_supplier_invoice_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplier_invoice_id** | **character**|  | 
 **supplier_invoice_status_update** | [**SupplierInvoiceStatusUpdate**](SupplierInvoiceStatusUpdate.md)|  | 

### Return type

[**SupplierInvoice**](SupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad request |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

