# PurchaseOrderApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreatePurchaseOrder**](PurchaseOrderApi.md#CreatePurchaseOrder) | **POST** /api/v1/purchase-orders | 
[**DeletePurchaseOrder**](PurchaseOrderApi.md#DeletePurchaseOrder) | **DELETE** /api/v1/purchase-orders/{purchase_order_id} | 
[**GetPurchaseOrder**](PurchaseOrderApi.md#GetPurchaseOrder) | **GET** /api/v1/purchase-orders/{purchase_order_id} | 
[**ListPurchaseOrders**](PurchaseOrderApi.md#ListPurchaseOrders) | **GET** /api/v1/purchase-orders/ | 
[**MatchInvoice**](PurchaseOrderApi.md#MatchInvoice) | **POST** /api/v1/purchase-orders/{purchase_order_id}/match-invoice | 3-way invoice check (Rechnungsprüfung): compares the purchase order line items, the quantities received via goods receipts, and the supplier invoice line items, reporting quantity and price variances per product.
[**UpdatePurchaseOrder**](PurchaseOrderApi.md#UpdatePurchaseOrder) | **PUT** /api/v1/purchase-orders/{purchase_order_id} | 
[**UpdatePurchaseOrderStatus**](PurchaseOrderApi.md#UpdatePurchaseOrderStatus) | **PUT** /api/v1/purchase-orders/{purchase_order_id}/status | 


# **CreatePurchaseOrder**
> PurchaseOrder CreatePurchaseOrder(purchase_order)



### Example
```R
library(openapi)

# prepare function argument(s)
var_purchase_order <- PurchaseOrder$new("orderDate_example", "poNumber_example", PurchaseOrderStatus$new(), "currency_example", TODO, "expectedDeliveryDate_example", TODO, "notes_example", "supplierContactId_example", "supplierName_example", "totalGrossAmount_example", "totalNetAmount_example") # PurchaseOrder | 

api_instance <- PurchaseOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreatePurchaseOrder(var_purchase_orderdata_file = "result.txt")
result <- api_instance$CreatePurchaseOrder(var_purchase_order)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order** | [**PurchaseOrder**](PurchaseOrder.md)|  | 

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

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

# **DeletePurchaseOrder**
> DeletePurchaseOrder(purchase_order_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_purchase_order_id <- "purchase_order_id_example" # character | 

api_instance <- PurchaseOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeletePurchaseOrder(var_purchase_order_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order_id** | **character**|  | 

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

# **GetPurchaseOrder**
> PurchaseOrder GetPurchaseOrder(purchase_order_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_purchase_order_id <- "purchase_order_id_example" # character | 

api_instance <- PurchaseOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPurchaseOrder(var_purchase_order_iddata_file = "result.txt")
result <- api_instance$GetPurchaseOrder(var_purchase_order_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order_id** | **character**|  | 

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

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

# **ListPurchaseOrders**
> array[PurchaseOrder] ListPurchaseOrders(page = var.page, page_size = var.page_size, status = var.status, supplier_name = var.supplier_name, search = var.search)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_supplier_name <- "supplier_name_example" # character |  (Optional)
var_search <- "search_example" # character |  (Optional)

api_instance <- PurchaseOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListPurchaseOrders(page = var_page, page_size = var_page_size, status = var_status, supplier_name = var_supplier_name, search = var_searchdata_file = "result.txt")
result <- api_instance$ListPurchaseOrders(page = var_page, page_size = var_page_size, status = var_status, supplier_name = var_supplier_name, search = var_search)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **status** | **character**|  | [optional] 
 **supplier_name** | **character**|  | [optional] 
 **search** | **character**|  | [optional] 

### Return type

[**array[PurchaseOrder]**](PurchaseOrder.md)

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

# **MatchInvoice**
> AnyType MatchInvoice(purchase_order_id, invoice_match_request)

3-way invoice check (Rechnungsprüfung): compares the purchase order line items, the quantities received via goods receipts, and the supplier invoice line items, reporting quantity and price variances per product.

### Example
```R
library(openapi)

# 3-way invoice check (Rechnungsprüfung): compares the purchase order line items, the quantities received via goods receipts, and the supplier invoice line items, reporting quantity and price variances per product.
#
# prepare function argument(s)
var_purchase_order_id <- "purchase_order_id_example" # character | 
var_invoice_match_request <- InvoiceMatchRequest$new("supplier_invoice_id_example") # InvoiceMatchRequest | 

api_instance <- PurchaseOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MatchInvoice(var_purchase_order_id, var_invoice_match_requestdata_file = "result.txt")
result <- api_instance$MatchInvoice(var_purchase_order_id, var_invoice_match_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order_id** | **character**|  | 
 **invoice_match_request** | [**InvoiceMatchRequest**](InvoiceMatchRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md)

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

# **UpdatePurchaseOrder**
> PurchaseOrder UpdatePurchaseOrder(purchase_order_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_purchase_order_id <- "purchase_order_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- PurchaseOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdatePurchaseOrder(var_purchase_order_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdatePurchaseOrder(var_purchase_order_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

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

# **UpdatePurchaseOrderStatus**
> PurchaseOrder UpdatePurchaseOrderStatus(purchase_order_id, purchase_order_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_purchase_order_id <- "purchase_order_id_example" # character | 
var_purchase_order_status_update <- PurchaseOrderStatusUpdate$new("status_example") # PurchaseOrderStatusUpdate | 

api_instance <- PurchaseOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdatePurchaseOrderStatus(var_purchase_order_id, var_purchase_order_status_updatedata_file = "result.txt")
result <- api_instance$UpdatePurchaseOrderStatus(var_purchase_order_id, var_purchase_order_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order_id** | **character**|  | 
 **purchase_order_status_update** | [**PurchaseOrderStatusUpdate**](PurchaseOrderStatusUpdate.md)|  | 

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

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

