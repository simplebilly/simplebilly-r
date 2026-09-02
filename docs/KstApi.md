# KstApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**KstApi**](KstApi.md#KstApi) | **GET** /api/v1/bookkeeping/kst | 


# **KstApi**
> KstErgebnis KstApi(year, gewinn = var.gewinn)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 
var_gewinn <- "gewinn_example" # character |  (Optional)

api_instance <- KstApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$KstApi(var_year, gewinn = var_gewinndata_file = "result.txt")
result <- api_instance$KstApi(var_year, gewinn = var_gewinn)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 
 **gewinn** | **character**|  | [optional] 

### Return type

[**KstErgebnis**](KstErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Körperschaftsteuer Ergebnis |  -  |

