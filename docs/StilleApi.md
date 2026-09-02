# StilleApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**StilleExportApi**](StilleApi.md#StilleExportApi) | **GET** /api/v1/bookkeeping/stille/export | 
[**StilleReportApi**](StilleApi.md#StilleReportApi) | **GET** /api/v1/bookkeeping/stille/report | 


# **StilleExportApi**
> StilleExportResponse StilleExportApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- StilleApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$StilleExportApi(var_yeardata_file = "result.txt")
result <- api_instance$StilleExportApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**StilleExportResponse**](StilleExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Stille Beteiligungen als CSV (BOM, Semikolon) |  -  |

# **StilleReportApi**
> StilleReport StilleReportApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- StilleApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$StilleReportApi(var_yeardata_file = "result.txt")
result <- api_instance$StilleReportApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**StilleReport**](StilleReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Gewinn-/Verlustverteilung an stille Gesellschafter (§§ 230–236 HGB) |  -  |

