# EbilanzApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EbilanzReportApi**](EbilanzApi.md#EbilanzReportApi) | **GET** /api/v1/bookkeeping/ebilanz | 
[**EbilanzXbrlExportApi**](EbilanzApi.md#EbilanzXbrlExportApi) | **GET** /api/v1/bookkeeping/ebilanz/xbrl | 


# **EbilanzReportApi**
> EBilanzReport EbilanzReportApi(year = var.year, date_from = var.date_from, date_to = var.date_to)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer |  (Optional)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)

api_instance <- EbilanzApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EbilanzReportApi(year = var_year, date_from = var_date_from, date_to = var_date_todata_file = "result.txt")
result <- api_instance$EbilanzReportApi(year = var_year, date_from = var_date_from, date_to = var_date_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | [optional] 
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 

### Return type

[**EBilanzReport**](EBilanzReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | E-Bilanz report |  -  |

# **EbilanzXbrlExportApi**
> EbilanzXbrlExportApi(year = var.year, date_from = var.date_from, date_to = var.date_to)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer |  (Optional)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)

api_instance <- EbilanzApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$EbilanzXbrlExportApi(year = var_year, date_from = var_date_from, date_to = var_date_to)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | [optional] 
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | XBRL XML content |  -  |

