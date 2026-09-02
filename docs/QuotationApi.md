# QuotationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateQuotation**](QuotationApi.md#CreateQuotation) | **POST** /api/v1/quotations | 
[**DeleteQuotation**](QuotationApi.md#DeleteQuotation) | **DELETE** /api/v1/quotations/{quotation_id} | 
[**DownloadQuotationPdf**](QuotationApi.md#DownloadQuotationPdf) | **GET** /api/v1/quotations/{quotation_id}/pdf | 
[**GetQuotation**](QuotationApi.md#GetQuotation) | **GET** /api/v1/quotations/{quotation_id} | 
[**ListQuotations**](QuotationApi.md#ListQuotations) | **GET** /api/v1/quotations/ | 
[**PursueQuotation**](QuotationApi.md#PursueQuotation) | **POST** /api/v1/quotations/{quotation_id}/pursue | 
[**QuotationRestore**](QuotationApi.md#QuotationRestore) | **POST** /api/v1/quotations/{quotation_id}/restore | 
[**UpdateQuotation**](QuotationApi.md#UpdateQuotation) | **PUT** /api/v1/quotations/{quotation_id} | 


# **CreateQuotation**
> Quotation CreateQuotation(quotation_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_quotation_create <- QuotationCreate$new("currency_example", "voucherDate_example", VoucherStatus$new(), TODO, "contactId_example", "contactName_example", "expirationDate_example", TODO, "introduction_example", TODO, "precedingSalesVoucherId_example", PrecedingSalesVoucherType$new(), "quotationNumber_example", "remark_example", "taxCondition_example", "title_example") # QuotationCreate | 

api_instance <- QuotationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateQuotation(var_quotation_createdata_file = "result.txt")
result <- api_instance$CreateQuotation(var_quotation_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotation_create** | [**QuotationCreate**](QuotationCreate.md)|  | 

### Return type

[**Quotation**](Quotation.md)

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

# **DeleteQuotation**
> DeleteQuotation(quotation_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_quotation_id <- "quotation_id_example" # character | 

api_instance <- QuotationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteQuotation(var_quotation_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotation_id** | **character**|  | 

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

# **DownloadQuotationPdf**
> DownloadQuotationPdf(quotation_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_quotation_id <- "quotation_id_example" # character | 

api_instance <- QuotationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DownloadQuotationPdf(var_quotation_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotation_id** | **character**|  | 

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

# **GetQuotation**
> Quotation GetQuotation(quotation_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_quotation_id <- "quotation_id_example" # character | 

api_instance <- QuotationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetQuotation(var_quotation_iddata_file = "result.txt")
result <- api_instance$GetQuotation(var_quotation_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotation_id** | **character**|  | 

### Return type

[**Quotation**](Quotation.md)

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

# **ListQuotations**
> array[Quotation] ListQuotations(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- QuotationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListQuotations(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$ListQuotations(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[Quotation]**](Quotation.md)

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

# **PursueQuotation**
> OrderConfirmation PursueQuotation(quotation_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_quotation_id <- "quotation_id_example" # character | 

api_instance <- QuotationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PursueQuotation(var_quotation_iddata_file = "result.txt")
result <- api_instance$PursueQuotation(var_quotation_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotation_id** | **character**|  | 

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
| **201** | Created OrderConfirmation |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **QuotationRestore**
> Quotation QuotationRestore(quotation_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_quotation_id <- "quotation_id_example" # character | 

api_instance <- QuotationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$QuotationRestore(var_quotation_iddata_file = "result.txt")
result <- api_instance$QuotationRestore(var_quotation_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotation_id** | **character**|  | 

### Return type

[**Quotation**](Quotation.md)

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

# **UpdateQuotation**
> Quotation UpdateQuotation(quotation_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_quotation_id <- "quotation_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- QuotationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateQuotation(var_quotation_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateQuotation(var_quotation_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotation_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**Quotation**](Quotation.md)

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

