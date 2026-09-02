# InventoryCountApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateInventoryCount**](InventoryCountApi.md#CreateInventoryCount) | **POST** /api/v1/inventory-counts | 
[**DeleteInventoryCount**](InventoryCountApi.md#DeleteInventoryCount) | **DELETE** /api/v1/inventory-counts/{inventory_count_id} | 
[**GenerateInventoryCount**](InventoryCountApi.md#GenerateInventoryCount) | **POST** /api/v1/inventory-counts/generate | 
[**GetInventoryCount**](InventoryCountApi.md#GetInventoryCount) | **GET** /api/v1/inventory-counts/{inventory_count_id} | 
[**ListInventoryCounts**](InventoryCountApi.md#ListInventoryCounts) | **GET** /api/v1/inventory-counts/ | 
[**UpdateInventoryCount**](InventoryCountApi.md#UpdateInventoryCount) | **PUT** /api/v1/inventory-counts/{inventory_count_id} | 
[**UpdateInventoryCountStatus**](InventoryCountApi.md#UpdateInventoryCountStatus) | **PUT** /api/v1/inventory-counts/{inventory_count_id}/status | 


# **CreateInventoryCount**
> InventoryCount CreateInventoryCount(inventory_count)



### Example
```R
library(openapi)

# prepare function argument(s)
var_inventory_count <- InventoryCount$new("countDate_example", "countNumber_example", TODO, InventoryCountStatus$new(), "warehouseId_example", "notes_example") # InventoryCount | 

api_instance <- InventoryCountApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateInventoryCount(var_inventory_countdata_file = "result.txt")
result <- api_instance$CreateInventoryCount(var_inventory_count)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventory_count** | [**InventoryCount**](InventoryCount.md)|  | 

### Return type

[**InventoryCount**](InventoryCount.md)

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

# **DeleteInventoryCount**
> DeleteInventoryCount(inventory_count_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_inventory_count_id <- "inventory_count_id_example" # character | 

api_instance <- InventoryCountApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteInventoryCount(var_inventory_count_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventory_count_id** | **character**|  | 

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

# **GenerateInventoryCount**
> InventoryCount GenerateInventoryCount(generate_count_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_generate_count_request <- GenerateCountRequest$new("warehouseId_example", "notes_example", c("productIds_example")) # GenerateCountRequest | 

api_instance <- InventoryCountApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenerateInventoryCount(var_generate_count_requestdata_file = "result.txt")
result <- api_instance$GenerateInventoryCount(var_generate_count_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_count_request** | [**GenerateCountRequest**](GenerateCountRequest.md)|  | 

### Return type

[**InventoryCount**](InventoryCount.md)

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

# **GetInventoryCount**
> InventoryCount GetInventoryCount(inventory_count_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_inventory_count_id <- "inventory_count_id_example" # character | 

api_instance <- InventoryCountApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetInventoryCount(var_inventory_count_iddata_file = "result.txt")
result <- api_instance$GetInventoryCount(var_inventory_count_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventory_count_id** | **character**|  | 

### Return type

[**InventoryCount**](InventoryCount.md)

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

# **ListInventoryCounts**
> array[InventoryCount] ListInventoryCounts(page = var.page, page_size = var.page_size, status = var.status, warehouse_id = var.warehouse_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_warehouse_id <- "warehouse_id_example" # character |  (Optional)

api_instance <- InventoryCountApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListInventoryCounts(page = var_page, page_size = var_page_size, status = var_status, warehouse_id = var_warehouse_iddata_file = "result.txt")
result <- api_instance$ListInventoryCounts(page = var_page, page_size = var_page_size, status = var_status, warehouse_id = var_warehouse_id)
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

[**array[InventoryCount]**](InventoryCount.md)

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

# **UpdateInventoryCount**
> InventoryCount UpdateInventoryCount(inventory_count_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_inventory_count_id <- "inventory_count_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- InventoryCountApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateInventoryCount(var_inventory_count_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateInventoryCount(var_inventory_count_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventory_count_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**InventoryCount**](InventoryCount.md)

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

# **UpdateInventoryCountStatus**
> InventoryCount UpdateInventoryCountStatus(inventory_count_id, inventory_count_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_inventory_count_id <- "inventory_count_id_example" # character | 
var_inventory_count_status_update <- InventoryCountStatusUpdate$new("status_example") # InventoryCountStatusUpdate | 

api_instance <- InventoryCountApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateInventoryCountStatus(var_inventory_count_id, var_inventory_count_status_updatedata_file = "result.txt")
result <- api_instance$UpdateInventoryCountStatus(var_inventory_count_id, var_inventory_count_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventory_count_id** | **character**|  | 
 **inventory_count_status_update** | [**InventoryCountStatusUpdate**](InventoryCountStatusUpdate.md)|  | 

### Return type

[**InventoryCount**](InventoryCount.md)

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

