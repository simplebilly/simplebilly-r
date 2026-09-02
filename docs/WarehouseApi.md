# WarehouseApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateWarehouse**](WarehouseApi.md#CreateWarehouse) | **POST** /api/v1/warehouses | 
[**DeleteWarehouse**](WarehouseApi.md#DeleteWarehouse) | **DELETE** /api/v1/warehouses/{warehouse_id} | 
[**GetWarehouse**](WarehouseApi.md#GetWarehouse) | **GET** /api/v1/warehouses/{warehouse_id} | 
[**ListWarehouses**](WarehouseApi.md#ListWarehouses) | **GET** /api/v1/warehouses/ | 
[**UpdateWarehouse**](WarehouseApi.md#UpdateWarehouse) | **PUT** /api/v1/warehouses/{warehouse_id} | 


# **CreateWarehouse**
> Warehouse CreateWarehouse(warehouse)



### Example
```R
library(openapi)

# prepare function argument(s)
var_warehouse <- Warehouse$new("code_example", "name_example", "addressCity_example", CountryCode$new(), "addressStreet_example", "addressZip_example", TODO, "isActive_example", "isDefault_example", "notes_example") # Warehouse | 

api_instance <- WarehouseApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateWarehouse(var_warehousedata_file = "result.txt")
result <- api_instance$CreateWarehouse(var_warehouse)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse** | [**Warehouse**](Warehouse.md)|  | 

### Return type

[**Warehouse**](Warehouse.md)

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

# **DeleteWarehouse**
> DeleteWarehouse(warehouse_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_warehouse_id <- "warehouse_id_example" # character | 

api_instance <- WarehouseApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteWarehouse(var_warehouse_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **character**|  | 

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

# **GetWarehouse**
> Warehouse GetWarehouse(warehouse_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_warehouse_id <- "warehouse_id_example" # character | 

api_instance <- WarehouseApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetWarehouse(var_warehouse_iddata_file = "result.txt")
result <- api_instance$GetWarehouse(var_warehouse_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **character**|  | 

### Return type

[**Warehouse**](Warehouse.md)

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

# **ListWarehouses**
> array[Warehouse] ListWarehouses(page = var.page, page_size = var.page_size, search = var.search, is_active = var.is_active)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_is_active <- "is_active_example" # character |  (Optional)

api_instance <- WarehouseApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListWarehouses(page = var_page, page_size = var_page_size, search = var_search, is_active = var_is_activedata_file = "result.txt")
result <- api_instance$ListWarehouses(page = var_page, page_size = var_page_size, search = var_search, is_active = var_is_active)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **search** | **character**|  | [optional] 
 **is_active** | **character**|  | [optional] 

### Return type

[**array[Warehouse]**](Warehouse.md)

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

# **UpdateWarehouse**
> Warehouse UpdateWarehouse(warehouse_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_warehouse_id <- "warehouse_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- WarehouseApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateWarehouse(var_warehouse_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateWarehouse(var_warehouse_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**Warehouse**](Warehouse.md)

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

