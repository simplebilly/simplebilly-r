# StockTransferApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateStockTransfer**](StockTransferApi.md#CreateStockTransfer) | **POST** /api/v1/stock-transfers | 
[**DeleteStockTransfer**](StockTransferApi.md#DeleteStockTransfer) | **DELETE** /api/v1/stock-transfers/{stock_transfer_id} | 
[**GetStockTransfer**](StockTransferApi.md#GetStockTransfer) | **GET** /api/v1/stock-transfers/{stock_transfer_id} | 
[**ListStockTransfers**](StockTransferApi.md#ListStockTransfers) | **GET** /api/v1/stock-transfers/ | 
[**UpdateStockTransferStatus**](StockTransferApi.md#UpdateStockTransferStatus) | **PUT** /api/v1/stock-transfers/{stock_transfer_id}/status | 


# **CreateStockTransfer**
> StockTransfer CreateStockTransfer(stock_transfer)



### Example
```R
library(openapi)

# prepare function argument(s)
var_stock_transfer <- StockTransfer$new(TODO, "sourceWarehouseId_example", StockTransferStatus$new(), "targetWarehouseId_example", "transferDate_example", "transferNumber_example", "notes_example") # StockTransfer | 

api_instance <- StockTransferApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateStockTransfer(var_stock_transferdata_file = "result.txt")
result <- api_instance$CreateStockTransfer(var_stock_transfer)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stock_transfer** | [**StockTransfer**](StockTransfer.md)|  | 

### Return type

[**StockTransfer**](StockTransfer.md)

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

# **DeleteStockTransfer**
> DeleteStockTransfer(stock_transfer_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_stock_transfer_id <- "stock_transfer_id_example" # character | 

api_instance <- StockTransferApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteStockTransfer(var_stock_transfer_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stock_transfer_id** | **character**|  | 

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

# **GetStockTransfer**
> StockTransfer GetStockTransfer(stock_transfer_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_stock_transfer_id <- "stock_transfer_id_example" # character | 

api_instance <- StockTransferApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetStockTransfer(var_stock_transfer_iddata_file = "result.txt")
result <- api_instance$GetStockTransfer(var_stock_transfer_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stock_transfer_id** | **character**|  | 

### Return type

[**StockTransfer**](StockTransfer.md)

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

# **ListStockTransfers**
> array[StockTransfer] ListStockTransfers(page = var.page, page_size = var.page_size, status = var.status, warehouse_id = var.warehouse_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_warehouse_id <- "warehouse_id_example" # character |  (Optional)

api_instance <- StockTransferApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListStockTransfers(page = var_page, page_size = var_page_size, status = var_status, warehouse_id = var_warehouse_iddata_file = "result.txt")
result <- api_instance$ListStockTransfers(page = var_page, page_size = var_page_size, status = var_status, warehouse_id = var_warehouse_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **status** | **character**|  | [optional] 
 **warehouse_id** | **character**|  | [optional] 

### Return type

[**array[StockTransfer]**](StockTransfer.md)

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

# **UpdateStockTransferStatus**
> StockTransfer UpdateStockTransferStatus(stock_transfer_id, stock_transfer_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_stock_transfer_id <- "stock_transfer_id_example" # character | 
var_stock_transfer_status_update <- StockTransferStatusUpdate$new("status_example") # StockTransferStatusUpdate | 

api_instance <- StockTransferApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateStockTransferStatus(var_stock_transfer_id, var_stock_transfer_status_updatedata_file = "result.txt")
result <- api_instance$UpdateStockTransferStatus(var_stock_transfer_id, var_stock_transfer_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stock_transfer_id** | **character**|  | 
 **stock_transfer_status_update** | [**StockTransferStatusUpdate**](StockTransferStatusUpdate.md)|  | 

### Return type

[**StockTransfer**](StockTransfer.md)

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

