# RfqApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConvertRfq**](RfqApi.md#ConvertRfq) | **POST** /api/v1/rfqs/{rfq_id}/convert | Convert an RFQ into a draft purchase order using the quoted unit prices (falling back to the requested prices, then leaving them blank). Marks the RFQ as &#x60;converted&#x60;.
[**CreateRfq**](RfqApi.md#CreateRfq) | **POST** /api/v1/rfqs | 
[**DeleteRfq**](RfqApi.md#DeleteRfq) | **DELETE** /api/v1/rfqs/{rfq_id} | 
[**GetRfq**](RfqApi.md#GetRfq) | **GET** /api/v1/rfqs/{rfq_id} | 
[**ListRfqs**](RfqApi.md#ListRfqs) | **GET** /api/v1/rfqs/ | 
[**UpdateRfq**](RfqApi.md#UpdateRfq) | **PUT** /api/v1/rfqs/{rfq_id} | 
[**UpdateRfqStatus**](RfqApi.md#UpdateRfqStatus) | **PUT** /api/v1/rfqs/{rfq_id}/status | 


# **ConvertRfq**
> AnyType ConvertRfq(rfq_id)

Convert an RFQ into a draft purchase order using the quoted unit prices (falling back to the requested prices, then leaving them blank). Marks the RFQ as `converted`.

### Example
```R
library(openapi)

# Convert an RFQ into a draft purchase order using the quoted unit prices (falling back to the requested prices, then leaving them blank). Marks the RFQ as `converted`.
#
# prepare function argument(s)
var_rfq_id <- "rfq_id_example" # character | 

api_instance <- RfqApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ConvertRfq(var_rfq_iddata_file = "result.txt")
result <- api_instance$ConvertRfq(var_rfq_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfq_id** | **character**|  | 

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
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **CreateRfq**
> Rfq CreateRfq(rfq)



### Example
```R
library(openapi)

# prepare function argument(s)
var_rfq <- Rfq$new(TODO, "requestedDate_example", "rfqNumber_example", RfqStatus$new(), "currency_example", "notes_example", "responseDate_example", "supplierContactId_example", "supplierName_example") # Rfq | 

api_instance <- RfqApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateRfq(var_rfqdata_file = "result.txt")
result <- api_instance$CreateRfq(var_rfq)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfq** | [**Rfq**](Rfq.md)|  | 

### Return type

[**Rfq**](Rfq.md)

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

# **DeleteRfq**
> DeleteRfq(rfq_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_rfq_id <- "rfq_id_example" # character | 

api_instance <- RfqApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteRfq(var_rfq_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfq_id** | **character**|  | 

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

# **GetRfq**
> Rfq GetRfq(rfq_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_rfq_id <- "rfq_id_example" # character | 

api_instance <- RfqApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetRfq(var_rfq_iddata_file = "result.txt")
result <- api_instance$GetRfq(var_rfq_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfq_id** | **character**|  | 

### Return type

[**Rfq**](Rfq.md)

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

# **ListRfqs**
> array[Rfq] ListRfqs(page = var.page, page_size = var.page_size, status = var.status, supplier_name = var.supplier_name)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_supplier_name <- "supplier_name_example" # character |  (Optional)

api_instance <- RfqApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListRfqs(page = var_page, page_size = var_page_size, status = var_status, supplier_name = var_supplier_namedata_file = "result.txt")
result <- api_instance$ListRfqs(page = var_page, page_size = var_page_size, status = var_status, supplier_name = var_supplier_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **status** | **character**|  | [optional] 
 **supplier_name** | **character**|  | [optional] 

### Return type

[**array[Rfq]**](Rfq.md)

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

# **UpdateRfq**
> Rfq UpdateRfq(rfq_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_rfq_id <- "rfq_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- RfqApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateRfq(var_rfq_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateRfq(var_rfq_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfq_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**Rfq**](Rfq.md)

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

# **UpdateRfqStatus**
> Rfq UpdateRfqStatus(rfq_id, rfq_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_rfq_id <- "rfq_id_example" # character | 
var_rfq_status_update <- RfqStatusUpdate$new("status_example") # RfqStatusUpdate | 

api_instance <- RfqApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateRfqStatus(var_rfq_id, var_rfq_status_updatedata_file = "result.txt")
result <- api_instance$UpdateRfqStatus(var_rfq_id, var_rfq_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfq_id** | **character**|  | 
 **rfq_status_update** | [**RfqStatusUpdate**](RfqStatusUpdate.md)|  | 

### Return type

[**Rfq**](Rfq.md)

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

