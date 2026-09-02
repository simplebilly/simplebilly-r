# OrderConfirmationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateConfirmation**](OrderConfirmationApi.md#CreateConfirmation) | **POST** /api/v1/order-confirmations | 
[**DeleteConfirmation**](OrderConfirmationApi.md#DeleteConfirmation) | **DELETE** /api/v1/order-confirmations/{confirmation_id} | 
[**DownloadConfirmationPdf**](OrderConfirmationApi.md#DownloadConfirmationPdf) | **GET** /api/v1/order-confirmations/{confirmation_id}/pdf | 
[**GetConfirmation**](OrderConfirmationApi.md#GetConfirmation) | **GET** /api/v1/order-confirmations/{confirmation_id} | 
[**ListConfirmations**](OrderConfirmationApi.md#ListConfirmations) | **GET** /api/v1/order-confirmations/ | 
[**OrderconfirmationRestore**](OrderConfirmationApi.md#OrderconfirmationRestore) | **POST** /api/v1/order-confirmations/{confirmation_id}/restore | 
[**PursueConfirmation**](OrderConfirmationApi.md#PursueConfirmation) | **POST** /api/v1/order-confirmations/{confirmation_id}/pursue | 


# **CreateConfirmation**
> OrderConfirmation CreateConfirmation(order_confirmation_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_order_confirmation_create <- OrderConfirmationCreate$new("currency_example", "voucherDate_example", VoucherStatus$new(), TODO, "confirmationNumber_example", "contactId_example", "contactName_example", TODO, "introduction_example", TODO, "precedingSalesVoucherId_example", PrecedingSalesVoucherType$new(), "remark_example", "taxCondition_example", "title_example") # OrderConfirmationCreate | 

api_instance <- OrderConfirmationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateConfirmation(var_order_confirmation_createdata_file = "result.txt")
result <- api_instance$CreateConfirmation(var_order_confirmation_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_confirmation_create** | [**OrderConfirmationCreate**](OrderConfirmationCreate.md)|  | 

### Return type

[**OrderConfirmation**](OrderConfirmation.md)

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

# **DeleteConfirmation**
> DeleteConfirmation(confirmation_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_confirmation_id <- "confirmation_id_example" # character | 

api_instance <- OrderConfirmationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteConfirmation(var_confirmation_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmation_id** | **character**|  | 

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

# **DownloadConfirmationPdf**
> DownloadConfirmationPdf(confirmation_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_confirmation_id <- "confirmation_id_example" # character | 

api_instance <- OrderConfirmationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DownloadConfirmationPdf(var_confirmation_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmation_id** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | PDF file |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **GetConfirmation**
> OrderConfirmation GetConfirmation(confirmation_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_confirmation_id <- "confirmation_id_example" # character | 

api_instance <- OrderConfirmationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetConfirmation(var_confirmation_iddata_file = "result.txt")
result <- api_instance$GetConfirmation(var_confirmation_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmation_id** | **character**|  | 

### Return type

[**OrderConfirmation**](OrderConfirmation.md)

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

# **ListConfirmations**
> array[OrderConfirmation] ListConfirmations(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- OrderConfirmationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListConfirmations(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$ListConfirmations(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[OrderConfirmation]**](OrderConfirmation.md)

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

# **OrderconfirmationRestore**
> OrderConfirmation OrderconfirmationRestore(confirmation_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_confirmation_id <- "confirmation_id_example" # character | 

api_instance <- OrderConfirmationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OrderconfirmationRestore(var_confirmation_iddata_file = "result.txt")
result <- api_instance$OrderconfirmationRestore(var_confirmation_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmation_id** | **character**|  | 

### Return type

[**OrderConfirmation**](OrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Restored |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **PursueConfirmation**
> DeliveryNote PursueConfirmation(confirmation_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_confirmation_id <- "confirmation_id_example" # character | 

api_instance <- OrderConfirmationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PursueConfirmation(var_confirmation_iddata_file = "result.txt")
result <- api_instance$PursueConfirmation(var_confirmation_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmation_id** | **character**|  | 

### Return type

[**DeliveryNote**](DeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created DeliveryNote |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

