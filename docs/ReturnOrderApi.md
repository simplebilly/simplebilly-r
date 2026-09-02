# ReturnOrderApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateReturnOrder**](ReturnOrderApi.md#CreateReturnOrder) | **POST** /api/v1/returns | 
[**DeleteReturnOrder**](ReturnOrderApi.md#DeleteReturnOrder) | **DELETE** /api/v1/returns/{return_order_id} | 
[**GetReturnOrder**](ReturnOrderApi.md#GetReturnOrder) | **GET** /api/v1/returns/{return_order_id} | 
[**ListReturnOrders**](ReturnOrderApi.md#ListReturnOrders) | **GET** /api/v1/returns/ | 
[**ReturnLogisticsQueue**](ReturnOrderApi.md#ReturnLogisticsQueue) | **GET** /api/v1/returns/logistics-queue | 
[**ReturnLogisticsSummary**](ReturnOrderApi.md#ReturnLogisticsSummary) | **GET** /api/v1/returns/logistics-summary | Returns-logistics aggregation for the dashboard: quantities received, restocked and scrapped per warehouse.
[**UpdateReturnOrder**](ReturnOrderApi.md#UpdateReturnOrder) | **PUT** /api/v1/returns/{return_order_id} | 
[**UpdateReturnOrderStatus**](ReturnOrderApi.md#UpdateReturnOrderStatus) | **PUT** /api/v1/returns/{return_order_id}/status | 


# **CreateReturnOrder**
> ReturnOrder CreateReturnOrder(return_order)



### Example
```R
library(openapi)

# prepare function argument(s)
var_return_order <- ReturnOrder$new("returnNumber_example", ReturnOrderStatus$new(), "customerContactId_example", "customerName_example", TODO, "notes_example", "orderId_example", "orderNumber_example", "returnReason_example", "warehouseId_example") # ReturnOrder | 

api_instance <- ReturnOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateReturnOrder(var_return_orderdata_file = "result.txt")
result <- api_instance$CreateReturnOrder(var_return_order)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_order** | [**ReturnOrder**](ReturnOrder.md)|  | 

### Return type

[**ReturnOrder**](ReturnOrder.md)

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

# **DeleteReturnOrder**
> DeleteReturnOrder(return_order_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_return_order_id <- "return_order_id_example" # character | 

api_instance <- ReturnOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteReturnOrder(var_return_order_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_order_id** | **character**|  | 

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

# **GetReturnOrder**
> ReturnOrder GetReturnOrder(return_order_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_return_order_id <- "return_order_id_example" # character | 

api_instance <- ReturnOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetReturnOrder(var_return_order_iddata_file = "result.txt")
result <- api_instance$GetReturnOrder(var_return_order_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_order_id** | **character**|  | 

### Return type

[**ReturnOrder**](ReturnOrder.md)

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

# **ListReturnOrders**
> array[ReturnOrder] ListReturnOrders(page = var.page, page_size = var.page_size, status = var.status, customer_name = var.customer_name, order_number = var.order_number)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_customer_name <- "customer_name_example" # character |  (Optional)
var_order_number <- "order_number_example" # character |  (Optional)

api_instance <- ReturnOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListReturnOrders(page = var_page, page_size = var_page_size, status = var_status, customer_name = var_customer_name, order_number = var_order_numberdata_file = "result.txt")
result <- api_instance$ListReturnOrders(page = var_page, page_size = var_page_size, status = var_status, customer_name = var_customer_name, order_number = var_order_number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **status** | **character**|  | [optional] 
 **customer_name** | **character**|  | [optional] 
 **order_number** | **character**|  | [optional] 

### Return type

[**array[ReturnOrder]**](ReturnOrder.md)

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

# **ReturnLogisticsQueue**
> array[ReturnLogisticsQueueItem] ReturnLogisticsQueue()



### Example
```R
library(openapi)


api_instance <- ReturnOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReturnLogisticsQueue(data_file = "result.txt")
result <- api_instance$ReturnLogisticsQueue()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[ReturnLogisticsQueueItem]**](ReturnLogisticsQueueItem.md)

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

# **ReturnLogisticsSummary**
> ReturnLogisticsSummary ReturnLogisticsSummary()

Returns-logistics aggregation for the dashboard: quantities received, restocked and scrapped per warehouse.

### Example
```R
library(openapi)

# Returns-logistics aggregation for the dashboard: quantities received, restocked and scrapped per warehouse.
#

api_instance <- ReturnOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReturnLogisticsSummary(data_file = "result.txt")
result <- api_instance$ReturnLogisticsSummary()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReturnLogisticsSummary**](ReturnLogisticsSummary.md)

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

# **UpdateReturnOrder**
> ReturnOrder UpdateReturnOrder(return_order_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_return_order_id <- "return_order_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- ReturnOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateReturnOrder(var_return_order_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateReturnOrder(var_return_order_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_order_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**ReturnOrder**](ReturnOrder.md)

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

# **UpdateReturnOrderStatus**
> ReturnOrder UpdateReturnOrderStatus(return_order_id, return_order_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_return_order_id <- "return_order_id_example" # character | 
var_return_order_status_update <- ReturnOrderStatusUpdate$new("status_example") # ReturnOrderStatusUpdate | 

api_instance <- ReturnOrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateReturnOrderStatus(var_return_order_id, var_return_order_status_updatedata_file = "result.txt")
result <- api_instance$UpdateReturnOrderStatus(var_return_order_id, var_return_order_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_order_id** | **character**|  | 
 **return_order_status_update** | [**ReturnOrderStatusUpdate**](ReturnOrderStatusUpdate.md)|  | 

### Return type

[**ReturnOrder**](ReturnOrder.md)

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

