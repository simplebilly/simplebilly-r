# InventoryValueApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetInventoryValueApi**](InventoryValueApi.md#GetInventoryValueApi) | **GET** /api/v1/bookkeeping/inventory-value | 
[**RecordInventoryValueApi**](InventoryValueApi.md#RecordInventoryValueApi) | **POST** /api/v1/bookkeeping/inventory-value/record | 


# **GetInventoryValueApi**
> CurrentInventoryValue GetInventoryValueApi()



### Example
```R
library(openapi)


api_instance <- InventoryValueApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetInventoryValueApi(data_file = "result.txt")
result <- api_instance$GetInventoryValueApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurrentInventoryValue**](CurrentInventoryValue.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Inventory value history |  -  |
| **500** | Internal server error |  -  |

# **RecordInventoryValueApi**
> InventoryValuePoint RecordInventoryValueApi()



### Example
```R
library(openapi)


api_instance <- InventoryValueApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RecordInventoryValueApi(data_file = "result.txt")
result <- api_instance$RecordInventoryValueApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InventoryValuePoint**](InventoryValuePoint.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Current value snapshot recorded |  -  |
| **500** | Internal server error |  -  |

