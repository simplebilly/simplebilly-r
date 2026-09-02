# GoodsReceiptApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateGoodsReceipt**](GoodsReceiptApi.md#CreateGoodsReceipt) | **POST** /api/v1/goods-receipts | 
[**DeleteGoodsReceipt**](GoodsReceiptApi.md#DeleteGoodsReceipt) | **DELETE** /api/v1/goods-receipts/{goods_receipt_id} | 
[**GetGoodsReceipt**](GoodsReceiptApi.md#GetGoodsReceipt) | **GET** /api/v1/goods-receipts/{goods_receipt_id} | 
[**ListGoodsReceipts**](GoodsReceiptApi.md#ListGoodsReceipts) | **GET** /api/v1/goods-receipts/ | 


# **CreateGoodsReceipt**
> GoodsReceipt CreateGoodsReceipt(goods_receipt)



### Example
```R
library(openapi)

# prepare function argument(s)
var_goods_receipt <- GoodsReceipt$new("grNumber_example", TODO, "receiptDate_example", "warehouseId_example", "notes_example", "purchaseOrderId_example", "supplierContactId_example", "supplierName_example") # GoodsReceipt | 

api_instance <- GoodsReceiptApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateGoodsReceipt(var_goods_receiptdata_file = "result.txt")
result <- api_instance$CreateGoodsReceipt(var_goods_receipt)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goods_receipt** | [**GoodsReceipt**](GoodsReceipt.md)|  | 

### Return type

[**GoodsReceipt**](GoodsReceipt.md)

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

# **DeleteGoodsReceipt**
> DeleteGoodsReceipt(goods_receipt_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_goods_receipt_id <- "goods_receipt_id_example" # character | 

api_instance <- GoodsReceiptApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteGoodsReceipt(var_goods_receipt_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goods_receipt_id** | **character**|  | 

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
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **GetGoodsReceipt**
> GoodsReceipt GetGoodsReceipt(goods_receipt_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_goods_receipt_id <- "goods_receipt_id_example" # character | 

api_instance <- GoodsReceiptApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetGoodsReceipt(var_goods_receipt_iddata_file = "result.txt")
result <- api_instance$GetGoodsReceipt(var_goods_receipt_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goods_receipt_id** | **character**|  | 

### Return type

[**GoodsReceipt**](GoodsReceipt.md)

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

# **ListGoodsReceipts**
> array[GoodsReceipt] ListGoodsReceipts(page = var.page, page_size = var.page_size, purchase_order_id = var.purchase_order_id, supplier_name = var.supplier_name, warehouse_id = var.warehouse_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_purchase_order_id <- "purchase_order_id_example" # character |  (Optional)
var_supplier_name <- "supplier_name_example" # character |  (Optional)
var_warehouse_id <- "warehouse_id_example" # character |  (Optional)

api_instance <- GoodsReceiptApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListGoodsReceipts(page = var_page, page_size = var_page_size, purchase_order_id = var_purchase_order_id, supplier_name = var_supplier_name, warehouse_id = var_warehouse_iddata_file = "result.txt")
result <- api_instance$ListGoodsReceipts(page = var_page, page_size = var_page_size, purchase_order_id = var_purchase_order_id, supplier_name = var_supplier_name, warehouse_id = var_warehouse_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **purchase_order_id** | **character**|  | [optional] 
 **supplier_name** | **character**|  | [optional] 
 **warehouse_id** | **character**|  | [optional] 

### Return type

[**array[GoodsReceipt]**](GoodsReceipt.md)

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

