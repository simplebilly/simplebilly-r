# OffenlegungApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OffenlegungApi**](OffenlegungApi.md#OffenlegungApi) | **GET** /api/v1/bookkeeping/offenlegung | 


# **OffenlegungApi**
> OffenlegungReport OffenlegungApi()



### Example
```R
library(openapi)


api_instance <- OffenlegungApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OffenlegungApi(data_file = "result.txt")
result <- api_instance$OffenlegungApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OffenlegungReport**](OffenlegungReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Offenlegungs-Checkliste (§ 325 HGB) |  -  |

