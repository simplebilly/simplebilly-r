# ReplenishmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApplyReplenishments**](ReplenishmentApi.md#ApplyReplenishments) | **POST** /api/v1/replenishments/apply | Create one draft stock transfer per (source → target) pair carrying all suggested product lines for that pair.
[**GetReplenishments**](ReplenishmentApi.md#GetReplenishments) | **GET** /api/v1/replenishments | 


# **ApplyReplenishments**
> AnyType ApplyReplenishments(target_warehouse_id = var.target_warehouse_id, source_warehouse_id = var.source_warehouse_id)

Create one draft stock transfer per (source → target) pair carrying all suggested product lines for that pair.

### Example
```R
library(openapi)

# Create one draft stock transfer per (source → target) pair carrying all suggested product lines for that pair.
#
# prepare function argument(s)
var_target_warehouse_id <- "target_warehouse_id_example" # character | Warehouse to be replenished. Defaults to the tenant's default warehouse. (Optional)
var_source_warehouse_id <- "source_warehouse_id_example" # character | Restrict source warehouses to this id. (Optional)

api_instance <- ReplenishmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ApplyReplenishments(target_warehouse_id = var_target_warehouse_id, source_warehouse_id = var_source_warehouse_iddata_file = "result.txt")
result <- api_instance$ApplyReplenishments(target_warehouse_id = var_target_warehouse_id, source_warehouse_id = var_source_warehouse_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target_warehouse_id** | **character**| Warehouse to be replenished. Defaults to the tenant&#39;s default warehouse. | [optional] 
 **source_warehouse_id** | **character**| Restrict source warehouses to this id. | [optional] 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **GetReplenishments**
> ReplenishmentResponse GetReplenishments(target_warehouse_id = var.target_warehouse_id, source_warehouse_id = var.source_warehouse_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_target_warehouse_id <- "target_warehouse_id_example" # character | Warehouse to be replenished. Defaults to the tenant's default warehouse. (Optional)
var_source_warehouse_id <- "source_warehouse_id_example" # character | Restrict source warehouses to this id. (Optional)

api_instance <- ReplenishmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetReplenishments(target_warehouse_id = var_target_warehouse_id, source_warehouse_id = var_source_warehouse_iddata_file = "result.txt")
result <- api_instance$GetReplenishments(target_warehouse_id = var_target_warehouse_id, source_warehouse_id = var_source_warehouse_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target_warehouse_id** | **character**| Warehouse to be replenished. Defaults to the tenant&#39;s default warehouse. | [optional] 
 **source_warehouse_id** | **character**| Restrict source warehouses to this id. | [optional] 

### Return type

[**ReplenishmentResponse**](ReplenishmentResponse.md)

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

