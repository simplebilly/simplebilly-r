# StockMovementApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetStockMovement**](StockMovementApi.md#GetStockMovement) | **GET** /api/v1/stock-movements/{movement_id} | 
[**ListStockMovements**](StockMovementApi.md#ListStockMovements) | **GET** /api/v1/stock-movements/ | 


# **GetStockMovement**
> StockMovement GetStockMovement(movement_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_movement_id <- "movement_id_example" # character | 

api_instance <- StockMovementApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetStockMovement(var_movement_iddata_file = "result.txt")
result <- api_instance$GetStockMovement(var_movement_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **movement_id** | **character**|  | 

### Return type

[**StockMovement**](StockMovement.md)

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

# **ListStockMovements**
> array[StockMovement] ListStockMovements(page = var.page, page_size = var.page_size, product_id = var.product_id, warehouse_id = var.warehouse_id, movement_type = var.movement_type, from = var.from, to = var.to)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_product_id <- "product_id_example" # character |  (Optional)
var_warehouse_id <- "warehouse_id_example" # character |  (Optional)
var_movement_type <- "movement_type_example" # character |  (Optional)
var_from <- "from_example" # character | Only movements on or after this date (inclusive). (Optional)
var_to <- "to_example" # character | Only movements on or before this date (inclusive). (Optional)

api_instance <- StockMovementApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListStockMovements(page = var_page, page_size = var_page_size, product_id = var_product_id, warehouse_id = var_warehouse_id, movement_type = var_movement_type, from = var_from, to = var_todata_file = "result.txt")
result <- api_instance$ListStockMovements(page = var_page, page_size = var_page_size, product_id = var_product_id, warehouse_id = var_warehouse_id, movement_type = var_movement_type, from = var_from, to = var_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **product_id** | **character**|  | [optional] 
 **warehouse_id** | **character**|  | [optional] 
 **movement_type** | **character**|  | [optional] 
 **from** | **character**| Only movements on or after this date (inclusive). | [optional] 
 **to** | **character**| Only movements on or before this date (inclusive). | [optional] 

### Return type

[**array[StockMovement]**](StockMovement.md)

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

