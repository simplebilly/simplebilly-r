# ProductionOrderApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateProductionOrder**](ProductionOrderApi.md#CreateProductionOrder) | **POST** /api/v1/production-orders | 
[**DeleteProductionOrder**](ProductionOrderApi.md#DeleteProductionOrder) | **DELETE** /api/v1/production-orders/{production_order_id} | 
[**GetProductionOrder**](ProductionOrderApi.md#GetProductionOrder) | **GET** /api/v1/production-orders/{production_order_id} | 
[**ListProductionOrders**](ProductionOrderApi.md#ListProductionOrders) | **GET** /api/v1/production-orders/ | 
[**ProductionOrderCosting**](ProductionOrderApi.md#ProductionOrderCosting) | **GET** /api/v1/production-orders/{production_order_id}/costing | Actual-costing report (Nachkalkulation) — material costs from BOM components at their purchase price plus the resulting per-unit cost and margin against the finished product&#39;s sale price.
[**UpdateProductionOrder**](ProductionOrderApi.md#UpdateProductionOrder) | **PUT** /api/v1/production-orders/{production_order_id} | 
[**UpdateProductionOrderStatus**](ProductionOrderApi.md#UpdateProductionOrderStatus) | **PUT** /api/v1/production-orders/{production_order_id}/status | 


# **CreateProductionOrder**
> ProductionOrder CreateProductionOrder(production_order)



### Example
```R
library(openapi)

# prepare function argument(s)
var_production_order <- ProductionOrder$new("orderNumber_example", "productId_example", 123, "bomId_example", TODO, "endDate_example", "notes_example", "sourceWarehouseId_example", "startDate_example", ProductionOrderStatus$new(), "targetWarehouseId_example") # ProductionOrder | 

api_instance <- ProductionOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProductionOrder(var_production_orderdata_file = "result.txt")
result <- api_instance$CreateProductionOrder(var_production_order)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **production_order** | [**ProductionOrder**](ProductionOrder.md)|  | 

### Return type

[**ProductionOrder**](ProductionOrder.md)

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

# **DeleteProductionOrder**
> DeleteProductionOrder(production_order_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_production_order_id <- "production_order_id_example" # character | 

api_instance <- ProductionOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteProductionOrder(var_production_order_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **production_order_id** | **character**|  | 

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
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **GetProductionOrder**
> ProductionOrder GetProductionOrder(production_order_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_production_order_id <- "production_order_id_example" # character | 

api_instance <- ProductionOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProductionOrder(var_production_order_iddata_file = "result.txt")
result <- api_instance$GetProductionOrder(var_production_order_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **production_order_id** | **character**|  | 

### Return type

[**ProductionOrder**](ProductionOrder.md)

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

# **ListProductionOrders**
> array[ProductionOrder] ListProductionOrders(page = var.page, page_size = var.page_size, search = var.search, status = var.status)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_status <- "status_example" # character | Filter by status. (Optional)

api_instance <- ProductionOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListProductionOrders(page = var_page, page_size = var_page_size, search = var_search, status = var_statusdata_file = "result.txt")
result <- api_instance$ListProductionOrders(page = var_page, page_size = var_page_size, search = var_search, status = var_status)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **search** | **character**|  | [optional] 
 **status** | **character**| Filter by status. | [optional] 

### Return type

[**array[ProductionOrder]**](ProductionOrder.md)

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

# **ProductionOrderCosting**
> ProductionOrderCosting ProductionOrderCosting(production_order_id)

Actual-costing report (Nachkalkulation) — material costs from BOM components at their purchase price plus the resulting per-unit cost and margin against the finished product's sale price.

### Example
```R
library(openapi)

# Actual-costing report (Nachkalkulation) — material costs from BOM components at their purchase price plus the resulting per-unit cost and margin against the finished product's sale price.
#
# prepare function argument(s)
var_production_order_id <- "production_order_id_example" # character | 

api_instance <- ProductionOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ProductionOrderCosting(var_production_order_iddata_file = "result.txt")
result <- api_instance$ProductionOrderCosting(var_production_order_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **production_order_id** | **character**|  | 

### Return type

[**ProductionOrderCosting**](ProductionOrderCosting.md)

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

# **UpdateProductionOrder**
> ProductionOrder UpdateProductionOrder(production_order_id, production_order)



### Example
```R
library(openapi)

# prepare function argument(s)
var_production_order_id <- "production_order_id_example" # character | 
var_production_order <- ProductionOrder$new("orderNumber_example", "productId_example", 123, "bomId_example", TODO, "endDate_example", "notes_example", "sourceWarehouseId_example", "startDate_example", ProductionOrderStatus$new(), "targetWarehouseId_example") # ProductionOrder | 

api_instance <- ProductionOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateProductionOrder(var_production_order_id, var_production_orderdata_file = "result.txt")
result <- api_instance$UpdateProductionOrder(var_production_order_id, var_production_order)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **production_order_id** | **character**|  | 
 **production_order** | [**ProductionOrder**](ProductionOrder.md)|  | 

### Return type

[**ProductionOrder**](ProductionOrder.md)

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

# **UpdateProductionOrderStatus**
> ProductionOrder UpdateProductionOrderStatus(production_order_id, production_order_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_production_order_id <- "production_order_id_example" # character | 
var_production_order_status_update <- ProductionOrderStatusUpdate$new("status_example") # ProductionOrderStatusUpdate | 

api_instance <- ProductionOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateProductionOrderStatus(var_production_order_id, var_production_order_status_updatedata_file = "result.txt")
result <- api_instance$UpdateProductionOrderStatus(var_production_order_id, var_production_order_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **production_order_id** | **character**|  | 
 **production_order_status_update** | [**ProductionOrderStatusUpdate**](ProductionOrderStatusUpdate.md)|  | 

### Return type

[**ProductionOrder**](ProductionOrder.md)

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

