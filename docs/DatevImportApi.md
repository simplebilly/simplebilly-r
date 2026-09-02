# DatevImportApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DatevImportApi**](DatevImportApi.md#DatevImportApi) | **POST** /api/v1/bookkeeping/datev/import | 


# **DatevImportApi**
> DatevImportResponse DatevImportApi(body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- DatevImportApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DatevImportApi(var_bodydata_file = "result.txt")
result <- api_instance$DatevImportApi(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**DatevImportResponse**](DatevImportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Parsed DATEV CSV rows |  -  |

