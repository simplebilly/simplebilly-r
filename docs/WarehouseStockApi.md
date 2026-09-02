# WarehouseStockApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateWarehouseStock**](WarehouseStockApi.md#CreateWarehouseStock) | **POST** /api/v1/warehouses/{warehouse_id}/stock | 
[**DeleteWarehouseStock**](WarehouseStockApi.md#DeleteWarehouseStock) | **DELETE** /api/v1/warehouses/{warehouse_id}/stock/{product_id} | 
[**ListWarehouseStock**](WarehouseStockApi.md#ListWarehouseStock) | **GET** /api/v1/warehouses/{warehouse_id}/stock | 
[**UpdateWarehouseStock**](WarehouseStockApi.md#UpdateWarehouseStock) | **PUT** /api/v1/warehouses/{warehouse_id}/stock/{product_id} | 


# **CreateWarehouseStock**
> WarehouseStock CreateWarehouseStock(warehouse_id, stock_adjustment)



### Example
```R
library(openapi)

# prepare function argument(s)
var_warehouse_id <- "warehouse_id_example" # character | 
var_stock_adjustment <- StockAdjustment$new(123, "batchNumber_example", "binLocation_example", "expiryDate_example", "productId_example", c("serialNumbers_example")) # StockAdjustment | 

api_instance <- WarehouseStockApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateWarehouseStock(var_warehouse_id, var_stock_adjustmentdata_file = "result.txt")
result <- api_instance$CreateWarehouseStock(var_warehouse_id, var_stock_adjustment)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **character**|  | 
 **stock_adjustment** | [**StockAdjustment**](StockAdjustment.md)|  | 

### Return type

[**WarehouseStock**](WarehouseStock.md)

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

# **DeleteWarehouseStock**
> DeleteWarehouseStock(warehouse_id, product_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_warehouse_id <- "warehouse_id_example" # character | 
var_product_id <- "product_id_example" # character | 

api_instance <- WarehouseStockApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteWarehouseStock(var_warehouse_id, var_product_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **character**|  | 
 **product_id** | **character**|  | 

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

# **ListWarehouseStock**
> array[WarehouseStock] ListWarehouseStock(warehouse_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_warehouse_id <- "warehouse_id_example" # character | 

api_instance <- WarehouseStockApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListWarehouseStock(var_warehouse_iddata_file = "result.txt")
result <- api_instance$ListWarehouseStock(var_warehouse_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **character**|  | 

### Return type

[**array[WarehouseStock]**](WarehouseStock.md)

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

# **UpdateWarehouseStock**
> WarehouseStock UpdateWarehouseStock(warehouse_id, product_id, stock_adjustment)



### Example
```R
library(openapi)

# prepare function argument(s)
var_warehouse_id <- "warehouse_id_example" # character | 
var_product_id <- "product_id_example" # character | 
var_stock_adjustment <- StockAdjustment$new(123, "batchNumber_example", "binLocation_example", "expiryDate_example", "productId_example", c("serialNumbers_example")) # StockAdjustment | 

api_instance <- WarehouseStockApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateWarehouseStock(var_warehouse_id, var_product_id, var_stock_adjustmentdata_file = "result.txt")
result <- api_instance$UpdateWarehouseStock(var_warehouse_id, var_product_id, var_stock_adjustment)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **character**|  | 
 **product_id** | **character**|  | 
 **stock_adjustment** | [**StockAdjustment**](StockAdjustment.md)|  | 

### Return type

[**WarehouseStock**](WarehouseStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

