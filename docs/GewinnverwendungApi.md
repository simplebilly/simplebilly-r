# GewinnverwendungApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GewinnverwendungApi**](GewinnverwendungApi.md#GewinnverwendungApi) | **GET** /api/v1/bookkeeping/gewinnverwendung | 
[**GewinnverwendungExportApi**](GewinnverwendungApi.md#GewinnverwendungExportApi) | **GET** /api/v1/bookkeeping/gewinnverwendung/export | 


# **GewinnverwendungApi**
> GewinnverwendungsReport GewinnverwendungApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- GewinnverwendungApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GewinnverwendungApi(var_yeardata_file = "result.txt")
result <- api_instance$GewinnverwendungApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**GewinnverwendungsReport**](GewinnverwendungsReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Gewinnverwendungsrechnung (§ 150, § 174 AktG) |  -  |

# **GewinnverwendungExportApi**
> GewinnverwendungsExportResponse GewinnverwendungExportApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- GewinnverwendungApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GewinnverwendungExportApi(var_yeardata_file = "result.txt")
result <- api_instance$GewinnverwendungExportApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**GewinnverwendungsExportResponse**](GewinnverwendungsExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Gewinnverwendungsrechnung als CSV (BOM, Semikolon) |  -  |

