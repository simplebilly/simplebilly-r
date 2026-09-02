# DatevApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DatevExportApi**](DatevApi.md#DatevExportApi) | **GET** /api/v1/bookkeeping/datev/export | Export bookkeeping data as DATEV CSV
[**DatevPreviewApi**](DatevApi.md#DatevPreviewApi) | **GET** /api/v1/bookkeeping/datev/preview | Exported_datev_bookings: returns formed bookings for review


# **DatevExportApi**
> DatevExportResponse DatevExportApi(account_schema = var.account_schema, date_from = var.date_from, date_to = var.date_to, page = var.page, page_size = var.page_size)

Export bookkeeping data as DATEV CSV

### Example
```R
library(openapi)

# Export bookkeeping data as DATEV CSV
#
# prepare function argument(s)
var_account_schema <- "account_schema_example" # character |  (Optional)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)

api_instance <- DatevApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DatevExportApi(account_schema = var_account_schema, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$DatevExportApi(account_schema = var_account_schema, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_schema** | **character**|  | [optional] 
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 

### Return type

[**DatevExportResponse**](DatevExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | DATEV CSV export |  -  |

# **DatevPreviewApi**
> array[DatevBookingPreview] DatevPreviewApi(account_schema = var.account_schema, date_from = var.date_from, date_to = var.date_to, page = var.page, page_size = var.page_size)

Exported_datev_bookings: returns formed bookings for review

### Example
```R
library(openapi)

# Exported_datev_bookings: returns formed bookings for review
#
# prepare function argument(s)
var_account_schema <- "account_schema_example" # character |  (Optional)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)

api_instance <- DatevApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DatevPreviewApi(account_schema = var_account_schema, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$DatevPreviewApi(account_schema = var_account_schema, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_schema** | **character**|  | [optional] 
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 

### Return type

[**array[DatevBookingPreview]**](DatevBookingPreview.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | DATEV booking preview |  -  |

