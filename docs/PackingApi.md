# PackingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CompletePacking**](PackingApi.md#CompletePacking) | **POST** /api/v1/packing/{order_number}/complete | Mark packing as complete and transition order to shipped
[**GetPackingQueue**](PackingApi.md#GetPackingQueue) | **GET** /api/v1/packing/queue | Get the packing queue - orders ready for packing
[**PrintDeliveryNote**](PackingApi.md#PrintDeliveryNote) | **POST** /api/v1/packing/{order_number}/print-delivery-note | Print delivery note (Lieferschein) for an order
[**PrintLabel**](PackingApi.md#PrintLabel) | **POST** /api/v1/packing/{order_number}/print-label | Print shipping label for an order
[**RecordPackingVideo**](PackingApi.md#RecordPackingVideo) | **POST** /api/v1/packing/{order_number}/record-video | Record video of packing process


# **CompletePacking**
> PackingCompleteResponse CompletePacking(order_number, packing_complete_request)

Mark packing as complete and transition order to shipped

### Example
```R
library(openapi)

# Mark packing as complete and transition order to shipped
#
# prepare function argument(s)
var_order_number <- "order_number_example" # character | 
var_packing_complete_request <- PackingCompleteRequest$new("order_number_example", "notes_example", "shipment_id_example", "video_url_example") # PackingCompleteRequest | 

api_instance <- PackingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CompletePacking(var_order_number, var_packing_complete_requestdata_file = "result.txt")
result <- api_instance$CompletePacking(var_order_number, var_packing_complete_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **character**|  | 
 **packing_complete_request** | [**PackingCompleteRequest**](PackingCompleteRequest.md)|  | 

### Return type

[**PackingCompleteResponse**](PackingCompleteResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Packing completed |  -  |
| **404** | Order not found |  -  |

# **GetPackingQueue**
> PackingQueue GetPackingQueue(page = var.page, page_size = var.page_size, search = var.search)

Get the packing queue - orders ready for packing

### Example
```R
library(openapi)

# Get the packing queue - orders ready for packing
#
# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)

api_instance <- PackingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPackingQueue(page = var_page, page_size = var_page_size, search = var_searchdata_file = "result.txt")
result <- api_instance$GetPackingQueue(page = var_page, page_size = var_page_size, search = var_search)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **search** | **character**|  | [optional] 

### Return type

[**PackingQueue**](PackingQueue.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Packing queue |  -  |
| **500** | Internal server error |  -  |

# **PrintDeliveryNote**
> PrintDeliveryNoteResponse PrintDeliveryNote(order_number)

Print delivery note (Lieferschein) for an order

### Example
```R
library(openapi)

# Print delivery note (Lieferschein) for an order
#
# prepare function argument(s)
var_order_number <- "order_number_example" # character | 

api_instance <- PackingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PrintDeliveryNote(var_order_numberdata_file = "result.txt")
result <- api_instance$PrintDeliveryNote(var_order_number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **character**|  | 

### Return type

[**PrintDeliveryNoteResponse**](PrintDeliveryNoteResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Delivery note printed |  -  |
| **404** | Order not found |  -  |

# **PrintLabel**
> PrintLabelResponse PrintLabel(order_number)

Print shipping label for an order

### Example
```R
library(openapi)

# Print shipping label for an order
#
# prepare function argument(s)
var_order_number <- "order_number_example" # character | 

api_instance <- PackingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PrintLabel(var_order_numberdata_file = "result.txt")
result <- api_instance$PrintLabel(var_order_number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **character**|  | 

### Return type

[**PrintLabelResponse**](PrintLabelResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Label printed |  -  |
| **404** | Order not found |  -  |

# **RecordPackingVideo**
> PackingVideoResponse RecordPackingVideo(order_number, body)

Record video of packing process

### Example
```R
library(openapi)

# Record video of packing process
#
# prepare function argument(s)
var_order_number <- "order_number_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- PackingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RecordPackingVideo(var_order_number, var_bodydata_file = "result.txt")
result <- api_instance$RecordPackingVideo(var_order_number, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**PackingVideoResponse**](PackingVideoResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Video recorded |  -  |

