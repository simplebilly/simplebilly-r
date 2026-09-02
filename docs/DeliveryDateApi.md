# DeliveryDateApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateDeliveryDate**](DeliveryDateApi.md#CreateDeliveryDate) | **POST** /api/v1/delivery-dates | 
[**DeleteDeliveryDate**](DeliveryDateApi.md#DeleteDeliveryDate) | **DELETE** /api/v1/delivery-dates/{delivery_date_id} | 
[**GetDeliveryDate**](DeliveryDateApi.md#GetDeliveryDate) | **GET** /api/v1/delivery-dates/{delivery_date_id} | 
[**GetDeliveryPerformance**](DeliveryDateApi.md#GetDeliveryPerformance) | **GET** /api/v1/delivery-dates/performance | On-time performance summary: how many promised delivery dates were met within a period.
[**ListDeliveryDates**](DeliveryDateApi.md#ListDeliveryDates) | **GET** /api/v1/delivery-dates/ | 
[**UpdateDeliveryDate**](DeliveryDateApi.md#UpdateDeliveryDate) | **PUT** /api/v1/delivery-dates/{delivery_date_id} | 
[**UpdateDeliveryDateStatus**](DeliveryDateApi.md#UpdateDeliveryDateStatus) | **PUT** /api/v1/delivery-dates/{delivery_date_id}/status | 


# **CreateDeliveryDate**
> DeliveryDate CreateDeliveryDate(delivery_date_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_date_create <- DeliveryDateCreate$new("orderNumber_example", "promisedDate_example", DeliveryDateStatus$new(), "customerId_example", "fulfilledDate_example", "note_example", "originalDate_example", "productId_example") # DeliveryDateCreate | 

api_instance <- DeliveryDateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateDeliveryDate(var_delivery_date_createdata_file = "result.txt")
result <- api_instance$CreateDeliveryDate(var_delivery_date_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_date_create** | [**DeliveryDateCreate**](DeliveryDateCreate.md)|  | 

### Return type

[**DeliveryDate**](DeliveryDate.md)

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

# **DeleteDeliveryDate**
> DeleteDeliveryDate(delivery_date_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_date_id <- "delivery_date_id_example" # character | 

api_instance <- DeliveryDateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteDeliveryDate(var_delivery_date_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_date_id** | **character**|  | 

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

# **GetDeliveryDate**
> DeliveryDate GetDeliveryDate(delivery_date_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_date_id <- "delivery_date_id_example" # character | 

api_instance <- DeliveryDateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDeliveryDate(var_delivery_date_iddata_file = "result.txt")
result <- api_instance$GetDeliveryDate(var_delivery_date_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_date_id** | **character**|  | 

### Return type

[**DeliveryDate**](DeliveryDate.md)

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

# **GetDeliveryPerformance**
> AnyType GetDeliveryPerformance(page = var.page, page_size = var.page_size, order_number = var.order_number, status = var.status, from = var.from, to = var.to)

On-time performance summary: how many promised delivery dates were met within a period.

### Example
```R
library(openapi)

# On-time performance summary: how many promised delivery dates were met within a period.
#
# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_order_number <- "order_number_example" # character |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_from <- "from_example" # character | Only dates on or after this date. (Optional)
var_to <- "to_example" # character | Only dates on or before this date. (Optional)

api_instance <- DeliveryDateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDeliveryPerformance(page = var_page, page_size = var_page_size, order_number = var_order_number, status = var_status, from = var_from, to = var_todata_file = "result.txt")
result <- api_instance$GetDeliveryPerformance(page = var_page, page_size = var_page_size, order_number = var_order_number, status = var_status, from = var_from, to = var_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **order_number** | **character**|  | [optional] 
 **status** | **character**|  | [optional] 
 **from** | **character**| Only dates on or after this date. | [optional] 
 **to** | **character**| Only dates on or before this date. | [optional] 

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
| **200** | OK |  -  |
| **500** | Internal server error |  -  |

# **ListDeliveryDates**
> array[DeliveryDate] ListDeliveryDates(page = var.page, page_size = var.page_size, order_number = var.order_number, status = var.status, from = var.from, to = var.to)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_order_number <- "order_number_example" # character |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_from <- "from_example" # character | Only dates on or after this date. (Optional)
var_to <- "to_example" # character | Only dates on or before this date. (Optional)

api_instance <- DeliveryDateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListDeliveryDates(page = var_page, page_size = var_page_size, order_number = var_order_number, status = var_status, from = var_from, to = var_todata_file = "result.txt")
result <- api_instance$ListDeliveryDates(page = var_page, page_size = var_page_size, order_number = var_order_number, status = var_status, from = var_from, to = var_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **order_number** | **character**|  | [optional] 
 **status** | **character**|  | [optional] 
 **from** | **character**| Only dates on or after this date. | [optional] 
 **to** | **character**| Only dates on or before this date. | [optional] 

### Return type

[**array[DeliveryDate]**](DeliveryDate.md)

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

# **UpdateDeliveryDate**
> DeliveryDate UpdateDeliveryDate(delivery_date_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_date_id <- "delivery_date_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- DeliveryDateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateDeliveryDate(var_delivery_date_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateDeliveryDate(var_delivery_date_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_date_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**DeliveryDate**](DeliveryDate.md)

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

# **UpdateDeliveryDateStatus**
> DeliveryDate UpdateDeliveryDateStatus(delivery_date_id, delivery_date_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_date_id <- "delivery_date_id_example" # character | 
var_delivery_date_status_update <- DeliveryDateStatusUpdate$new("status_example") # DeliveryDateStatusUpdate | 

api_instance <- DeliveryDateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateDeliveryDateStatus(var_delivery_date_id, var_delivery_date_status_updatedata_file = "result.txt")
result <- api_instance$UpdateDeliveryDateStatus(var_delivery_date_id, var_delivery_date_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_date_id** | **character**|  | 
 **delivery_date_status_update** | [**DeliveryDateStatusUpdate**](DeliveryDateStatusUpdate.md)|  | 

### Return type

[**DeliveryDate**](DeliveryDate.md)

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

