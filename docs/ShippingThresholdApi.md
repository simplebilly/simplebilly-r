# ShippingThresholdApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateShippingThreshold**](ShippingThresholdApi.md#CreateShippingThreshold) | **POST** /api/v1/shipping-thresholds | 
[**DeleteShippingThreshold**](ShippingThresholdApi.md#DeleteShippingThreshold) | **DELETE** /api/v1/shipping-thresholds/{threshold_id} | 
[**GetDeliverable**](ShippingThresholdApi.md#GetDeliverable) | **GET** /api/v1/shipping-thresholds/deliverable | 
[**GetShippingThreshold**](ShippingThresholdApi.md#GetShippingThreshold) | **GET** /api/v1/shipping-thresholds/{threshold_id} | 
[**ListShippingThresholds**](ShippingThresholdApi.md#ListShippingThresholds) | **GET** /api/v1/shipping-thresholds/ | 
[**UpdateShippingThreshold**](ShippingThresholdApi.md#UpdateShippingThreshold) | **PUT** /api/v1/shipping-thresholds/{threshold_id} | 


# **CreateShippingThreshold**
> ShippingThreshold CreateShippingThreshold(shipping_threshold_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_shipping_threshold_create <- ShippingThresholdCreate$new("name_example", "isActive_example", 123, "notes_example", "productId_example", 123, "warehouseId_example") # ShippingThresholdCreate | 

api_instance <- ShippingThresholdApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateShippingThreshold(var_shipping_threshold_createdata_file = "result.txt")
result <- api_instance$CreateShippingThreshold(var_shipping_threshold_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping_threshold_create** | [**ShippingThresholdCreate**](ShippingThresholdCreate.md)|  | 

### Return type

[**ShippingThreshold**](ShippingThreshold.md)

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

# **DeleteShippingThreshold**
> DeleteShippingThreshold(threshold_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_threshold_id <- "threshold_id_example" # character | 

api_instance <- ShippingThresholdApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteShippingThreshold(var_threshold_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threshold_id** | **character**|  | 

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

# **GetDeliverable**
> DeliverableResponse GetDeliverable(product_id, warehouse_id = var.warehouse_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_id <- "product_id_example" # character | 
var_warehouse_id <- "warehouse_id_example" # character |  (Optional)

api_instance <- ShippingThresholdApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDeliverable(var_product_id, warehouse_id = var_warehouse_iddata_file = "result.txt")
result <- api_instance$GetDeliverable(var_product_id, warehouse_id = var_warehouse_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **character**|  | 
 **warehouse_id** | **character**|  | [optional] 

### Return type

[**DeliverableResponse**](DeliverableResponse.md)

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

# **GetShippingThreshold**
> ShippingThreshold GetShippingThreshold(threshold_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_threshold_id <- "threshold_id_example" # character | 

api_instance <- ShippingThresholdApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetShippingThreshold(var_threshold_iddata_file = "result.txt")
result <- api_instance$GetShippingThreshold(var_threshold_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threshold_id** | **character**|  | 

### Return type

[**ShippingThreshold**](ShippingThreshold.md)

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

# **ListShippingThresholds**
> array[ShippingThreshold] ListShippingThresholds(page = var.page, page_size = var.page_size, product_id = var.product_id, warehouse_id = var.warehouse_id, is_active = var.is_active)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_product_id <- "product_id_example" # character |  (Optional)
var_warehouse_id <- "warehouse_id_example" # character |  (Optional)
var_is_active <- "is_active_example" # character |  (Optional)

api_instance <- ShippingThresholdApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListShippingThresholds(page = var_page, page_size = var_page_size, product_id = var_product_id, warehouse_id = var_warehouse_id, is_active = var_is_activedata_file = "result.txt")
result <- api_instance$ListShippingThresholds(page = var_page, page_size = var_page_size, product_id = var_product_id, warehouse_id = var_warehouse_id, is_active = var_is_active)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **product_id** | **character**|  | [optional] 
 **warehouse_id** | **character**|  | [optional] 
 **is_active** | **character**|  | [optional] 

### Return type

[**array[ShippingThreshold]**](ShippingThreshold.md)

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

# **UpdateShippingThreshold**
> ShippingThreshold UpdateShippingThreshold(threshold_id, shipping_threshold_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_threshold_id <- "threshold_id_example" # character | 
var_shipping_threshold_update <- ShippingThresholdUpdate$new("isActive_example", 123, "name_example", "notes_example", "productId_example", 123, "warehouseId_example") # ShippingThresholdUpdate | 

api_instance <- ShippingThresholdApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateShippingThreshold(var_threshold_id, var_shipping_threshold_updatedata_file = "result.txt")
result <- api_instance$UpdateShippingThreshold(var_threshold_id, var_shipping_threshold_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threshold_id** | **character**|  | 
 **shipping_threshold_update** | [**ShippingThresholdUpdate**](ShippingThresholdUpdate.md)|  | 

### Return type

[**ShippingThreshold**](ShippingThreshold.md)

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

