# OssReportApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OssReportApi**](OssReportApi.md#OssReportApi) | **GET** /api/v1/bookkeeping/oss | 


# **OssReportApi**
> OssReport OssReportApi()



### Example
```R
library(openapi)


api_instance <- OssReportApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OssReportApi(data_file = "result.txt")
result <- api_instance$OssReportApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OssReport**](OssReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OSS dependencies |  -  |

