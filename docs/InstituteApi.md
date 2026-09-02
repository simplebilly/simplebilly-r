# InstituteApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**InstituteStatusApi**](InstituteApi.md#InstituteStatusApi) | **GET** /api/v1/bookkeeping/institute/status | 


# **InstituteStatusApi**
> InstituteStatus InstituteStatusApi()



### Example
```R
library(openapi)


api_instance <- InstituteApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$InstituteStatusApi(data_file = "result.txt")
result <- api_instance$InstituteStatusApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InstituteStatus**](InstituteStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Institut-Status: Fristen und Checkliste (KWG § 26, HGB § 340k/§ 341k, HGB § 325, GwG § 8) |  -  |

