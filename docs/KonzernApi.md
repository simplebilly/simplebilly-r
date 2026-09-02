# KonzernApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**KonzernExportApi**](KonzernApi.md#KonzernExportApi) | **GET** /api/v1/bookkeeping/konzern/status/export | 
[**KonzernStatusApi**](KonzernApi.md#KonzernStatusApi) | **GET** /api/v1/bookkeeping/konzern/status | 


# **KonzernExportApi**
> KonzernExportResponse KonzernExportApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- KonzernApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$KonzernExportApi(var_yeardata_file = "result.txt")
result <- api_instance$KonzernExportApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**KonzernExportResponse**](KonzernExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Konzern-Beteiligungen mit Kontrollstatus als CSV (BOM, Semikolon) |  -  |

# **KonzernStatusApi**
> KonzernStatus KonzernStatusApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- KonzernApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$KonzernStatusApi(var_yeardata_file = "result.txt")
result <- api_instance$KonzernStatusApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**KonzernStatus**](KonzernStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Konzern-Status (§§ 290, 291, 293 HGB) |  -  |

