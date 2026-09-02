# DeliveryNoteApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateDeliveryNote**](DeliveryNoteApi.md#CreateDeliveryNote) | **POST** /api/v1/delivery-notes | 
[**DeleteDeliveryNote**](DeliveryNoteApi.md#DeleteDeliveryNote) | **DELETE** /api/v1/delivery-notes/{delivery_note_id} | 
[**DeliverynoteRestore**](DeliveryNoteApi.md#DeliverynoteRestore) | **POST** /api/v1/delivery-notes/{delivery_note_id}/restore | 
[**DownloadDeliveryNotePdf**](DeliveryNoteApi.md#DownloadDeliveryNotePdf) | **GET** /api/v1/delivery-notes/{delivery_note_id}/pdf | 
[**GetDeliveryNote**](DeliveryNoteApi.md#GetDeliveryNote) | **GET** /api/v1/delivery-notes/{delivery_note_id} | 
[**ListDeliveryNotes**](DeliveryNoteApi.md#ListDeliveryNotes) | **GET** /api/v1/delivery-notes/ | 
[**PursueDeliveryNote**](DeliveryNoteApi.md#PursueDeliveryNote) | **POST** /api/v1/delivery-notes/{delivery_note_id}/pursue | 


# **CreateDeliveryNote**
> DeliveryNote CreateDeliveryNote(delivery_note_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_note_create <- DeliveryNoteCreate$new("currency_example", "voucherDate_example", VoucherStatus$new(), TODO, "contactId_example", "contactName_example", "deliveryDate_example", "deliveryNoteNumber_example", TODO, "introduction_example", TODO, "precedingSalesVoucherId_example", PrecedingSalesVoucherType$new(), "remark_example", "shippingDate_example", "shippingMethod_example", "title_example") # DeliveryNoteCreate | 

api_instance <- DeliveryNoteApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateDeliveryNote(var_delivery_note_createdata_file = "result.txt")
result <- api_instance$CreateDeliveryNote(var_delivery_note_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_note_create** | [**DeliveryNoteCreate**](DeliveryNoteCreate.md)|  | 

### Return type

[**DeliveryNote**](DeliveryNote.md)

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

# **DeleteDeliveryNote**
> DeleteDeliveryNote(delivery_note_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_note_id <- "delivery_note_id_example" # character | 

api_instance <- DeliveryNoteApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteDeliveryNote(var_delivery_note_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_note_id** | **character**|  | 

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

# **DeliverynoteRestore**
> DeliveryNote DeliverynoteRestore(delivery_note_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_note_id <- "delivery_note_id_example" # character | 

api_instance <- DeliveryNoteApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeliverynoteRestore(var_delivery_note_iddata_file = "result.txt")
result <- api_instance$DeliverynoteRestore(var_delivery_note_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_note_id** | **character**|  | 

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
| **200** | Restored |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **DownloadDeliveryNotePdf**
> DownloadDeliveryNotePdf(delivery_note_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_note_id <- "delivery_note_id_example" # character | 

api_instance <- DeliveryNoteApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DownloadDeliveryNotePdf(var_delivery_note_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_note_id** | **character**|  | 

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

# **GetDeliveryNote**
> DeliveryNote GetDeliveryNote(delivery_note_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_note_id <- "delivery_note_id_example" # character | 

api_instance <- DeliveryNoteApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDeliveryNote(var_delivery_note_iddata_file = "result.txt")
result <- api_instance$GetDeliveryNote(var_delivery_note_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_note_id** | **character**|  | 

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
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **ListDeliveryNotes**
> array[DeliveryNote] ListDeliveryNotes(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- DeliveryNoteApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListDeliveryNotes(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$ListDeliveryNotes(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[DeliveryNote]**](DeliveryNote.md)

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

# **PursueDeliveryNote**
> Invoice PursueDeliveryNote(delivery_note_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_note_id <- "delivery_note_id_example" # character | 

api_instance <- DeliveryNoteApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PursueDeliveryNote(var_delivery_note_iddata_file = "result.txt")
result <- api_instance$PursueDeliveryNote(var_delivery_note_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_note_id** | **character**|  | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created Invoice |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

