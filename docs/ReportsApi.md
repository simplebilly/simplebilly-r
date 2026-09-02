# ReportsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BilanzReportApi**](ReportsApi.md#BilanzReportApi) | **GET** /api/v1/bookkeeping/reports/bilanz | Bilanz (Balance Sheet)
[**GuvReportApi**](ReportsApi.md#GuvReportApi) | **GET** /api/v1/bookkeeping/reports/guv | Gewinn- und Verlustrechnung (P&amp;L statement)
[**KontenansichtReportApi**](ReportsApi.md#KontenansichtReportApi) | **GET** /api/v1/bookkeeping/reports/kontenansicht | Kontenansicht (Account Overview)
[**UmsatzsteuerReportApi**](ReportsApi.md#UmsatzsteuerReportApi) | **GET** /api/v1/bookkeeping/reports/umsatzsteuer | Umsatzsteuer-Voranmeldung (VAT report)


# **BilanzReportApi**
> BilanzReport BilanzReportApi(year = var.year, month = var.month, date_from = var.date_from, date_to = var.date_to, page = var.page, page_size = var.page_size)

Bilanz (Balance Sheet)

### Example
```R
library(openapi)

# Bilanz (Balance Sheet)
#
# prepare function argument(s)
var_year <- 56 # integer |  (Optional)
var_month <- 56 # integer |  (Optional)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)

api_instance <- ReportsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$BilanzReportApi(year = var_year, month = var_month, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$BilanzReportApi(year = var_year, month = var_month, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | [optional] 
 **month** | **integer**|  | [optional] 
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 

### Return type

[**BilanzReport**](BilanzReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Balance sheet |  -  |

# **GuvReportApi**
> GuVReport GuvReportApi(year = var.year, month = var.month, date_from = var.date_from, date_to = var.date_to, page = var.page, page_size = var.page_size)

Gewinn- und Verlustrechnung (P&L statement)

### Example
```R
library(openapi)

# Gewinn- und Verlustrechnung (P&L statement)
#
# prepare function argument(s)
var_year <- 56 # integer |  (Optional)
var_month <- 56 # integer |  (Optional)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)

api_instance <- ReportsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GuvReportApi(year = var_year, month = var_month, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$GuvReportApi(year = var_year, month = var_month, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | [optional] 
 **month** | **integer**|  | [optional] 
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 

### Return type

[**GuVReport**](GuVReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | GuV report |  -  |

# **KontenansichtReportApi**
> KontoReport KontenansichtReportApi(year = var.year, month = var.month, date_from = var.date_from, date_to = var.date_to, page = var.page, page_size = var.page_size)

Kontenansicht (Account Overview)

### Example
```R
library(openapi)

# Kontenansicht (Account Overview)
#
# prepare function argument(s)
var_year <- 56 # integer |  (Optional)
var_month <- 56 # integer |  (Optional)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)

api_instance <- ReportsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$KontenansichtReportApi(year = var_year, month = var_month, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$KontenansichtReportApi(year = var_year, month = var_month, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | [optional] 
 **month** | **integer**|  | [optional] 
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 

### Return type

[**KontoReport**](KontoReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Account overview |  -  |

# **UmsatzsteuerReportApi**
> UmsatzsteuerReport UmsatzsteuerReportApi(year = var.year, month = var.month, date_from = var.date_from, date_to = var.date_to, page = var.page, page_size = var.page_size)

Umsatzsteuer-Voranmeldung (VAT report)

### Example
```R
library(openapi)

# Umsatzsteuer-Voranmeldung (VAT report)
#
# prepare function argument(s)
var_year <- 56 # integer |  (Optional)
var_month <- 56 # integer |  (Optional)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)

api_instance <- ReportsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UmsatzsteuerReportApi(year = var_year, month = var_month, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$UmsatzsteuerReportApi(year = var_year, month = var_month, date_from = var_date_from, date_to = var_date_to, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | [optional] 
 **month** | **integer**|  | [optional] 
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 

### Return type

[**UmsatzsteuerReport**](UmsatzsteuerReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | VAT report |  -  |

