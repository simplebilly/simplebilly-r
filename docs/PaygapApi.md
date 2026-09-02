# PaygapApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PaygapAuskunftApi**](PaygapApi.md#PaygapAuskunftApi) | **GET** /api/v1/bookkeeping/paygap/auskunft/{employee_id} | 
[**PaygapExportApi**](PaygapApi.md#PaygapExportApi) | **GET** /api/v1/bookkeeping/paygap/export | 
[**PaygapReportApi**](PaygapApi.md#PaygapReportApi) | **GET** /api/v1/bookkeeping/paygap/report | 


# **PaygapAuskunftApi**
> PayGapInfoResponse PaygapAuskunftApi(employee_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_employee_id <- "employee_id_example" # character | 

api_instance <- PaygapApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PaygapAuskunftApi(var_employee_iddata_file = "result.txt")
result <- api_instance$PaygapAuskunftApi(var_employee_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **character**|  | 

### Return type

[**PayGapInfoResponse**](PayGapInfoResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Individual pay information (§ 10-14 EntgTranspG) |  -  |
| **404** | Employee not found |  -  |

# **PaygapExportApi**
> PayGapExportResponse PaygapExportApi()



### Example
```R
library(openapi)


api_instance <- PaygapApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PaygapExportApi(data_file = "result.txt")
result <- api_instance$PaygapExportApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PayGapExportResponse**](PayGapExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Gender pay gap CSV export |  -  |

# **PaygapReportApi**
> PayGapReport PaygapReportApi()



### Example
```R
library(openapi)


api_instance <- PaygapApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PaygapReportApi(data_file = "result.txt")
result <- api_instance$PaygapReportApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PayGapReport**](PayGapReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Gender pay gap report (EntgTranspG, EU 2023/970) |  -  |

