# OrderApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddOrderTags**](OrderApi.md#AddOrderTags) | **POST** /api/v1/orders/{order_id}/tags | 
[**FindOrderByExternalRef**](OrderApi.md#FindOrderByExternalRef) | **GET** /api/v1/orders/by-ext-ref/{ext_ref} | 
[**GetOrder**](OrderApi.md#GetOrder) | **GET** /api/v1/order/{order_number} | 
[**GetOrders**](OrderApi.md#GetOrders) | **GET** /api/v1/orders | 
[**PatchOrder**](OrderApi.md#PatchOrder) | **PATCH** /api/v1/orders/{order_id} | 
[**ReplaceOrderTags**](OrderApi.md#ReplaceOrderTags) | **PUT** /api/v1/orders/{order_id}/tags | 
[**UpdateOrderState**](OrderApi.md#UpdateOrderState) | **PUT** /api/v1/orders/{order_id}/state | 


# **AddOrderTags**
> Order AddOrderTags(order_id, order_tags_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_order_id <- "order_id_example" # character | 
var_order_tags_request <- OrderTagsRequest$new(c("tags_example")) # OrderTagsRequest | 

api_instance <- OrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddOrderTags(var_order_id, var_order_tags_requestdata_file = "result.txt")
result <- api_instance$AddOrderTags(var_order_id, var_order_tags_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **character**|  | 
 **order_tags_request** | [**OrderTagsRequest**](OrderTagsRequest.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tags added |  -  |
| **404** | Order not found |  -  |
| **500** | Internal server error |  -  |

# **FindOrderByExternalRef**
> Order FindOrderByExternalRef(ext_ref)



### Example
```R
library(openapi)

# prepare function argument(s)
var_ext_ref <- "ext_ref_example" # character | 

api_instance <- OrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FindOrderByExternalRef(var_ext_refdata_file = "result.txt")
result <- api_instance$FindOrderByExternalRef(var_ext_ref)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_ref** | **character**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order found |  -  |
| **404** | Order not found |  -  |
| **500** | Internal server error |  -  |

# **GetOrder**
> Order GetOrder(order_number)



### Example
```R
library(openapi)

# prepare function argument(s)
var_order_number <- "order_number_example" # character | 

api_instance <- OrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetOrder(var_order_numberdata_file = "result.txt")
result <- api_instance$GetOrder(var_order_number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **character**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order found |  -  |
| **400** | Bad Request |  -  |
| **404** | Order not found |  -  |
| **500** | Internal Server Error |  -  |

# **GetOrders**
> array[Order] GetOrders(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- OrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetOrders(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetOrders(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **search** | **character**|  | [optional] 
 **include_deleted** | **character**| Soft-delete entities: set true to include rows with &#x60;deleted_at&#x60; set. | [optional] 

### Return type

[**array[Order]**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Orders found |  -  |
| **400** | Bad Request |  -  |
| **404** | No orders found |  -  |
| **500** | Internal Server Error |  -  |

# **PatchOrder**
> Order PatchOrder(order_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_order_id <- "order_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- OrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PatchOrder(var_order_id, var_bodydata_file = "result.txt")
result <- api_instance$PatchOrder(var_order_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order updated |  -  |
| **400** | Bad request |  -  |
| **404** | Order not found |  -  |
| **500** | Internal server error |  -  |

# **ReplaceOrderTags**
> Order ReplaceOrderTags(order_id, order_tags_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_order_id <- "order_id_example" # character | 
var_order_tags_request <- OrderTagsRequest$new(c("tags_example")) # OrderTagsRequest | 

api_instance <- OrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReplaceOrderTags(var_order_id, var_order_tags_requestdata_file = "result.txt")
result <- api_instance$ReplaceOrderTags(var_order_id, var_order_tags_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **character**|  | 
 **order_tags_request** | [**OrderTagsRequest**](OrderTagsRequest.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tags replaced |  -  |
| **404** | Order not found |  -  |
| **500** | Internal server error |  -  |

# **UpdateOrderState**
> Order UpdateOrderState(order_id, order_state_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_order_id <- "order_id_example" # character | 
var_order_state_update <- OrderStateUpdate$new("state_example", "send_state_to_shop_example") # OrderStateUpdate | 

api_instance <- OrderApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateOrderState(var_order_id, var_order_state_updatedata_file = "result.txt")
result <- api_instance$UpdateOrderState(var_order_id, var_order_state_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **character**|  | 
 **order_state_update** | [**OrderStateUpdate**](OrderStateUpdate.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order state updated |  -  |
| **400** | Bad request |  -  |
| **404** | Order not found |  -  |
| **500** | Internal server error |  -  |

