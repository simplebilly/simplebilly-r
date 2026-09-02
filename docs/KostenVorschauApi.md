# KostenVorschauApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**KostenVorschauApi**](KostenVorschauApi.md#KostenVorschauApi) | **GET** /api/v1/bookkeeping/kosten-vorschau | 


# **KostenVorschauApi**
> KostenVorschau KostenVorschauApi(year, month)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 
var_month <- 56 # integer | 

api_instance <- KostenVorschauApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$KostenVorschauApi(var_year, var_monthdata_file = "result.txt")
result <- api_instance$KostenVorschauApi(var_year, var_month)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 
 **month** | **integer**|  | 

### Return type

[**KostenVorschau**](KostenVorschau.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Kosten-Vorschau für den Monat |  -  |

