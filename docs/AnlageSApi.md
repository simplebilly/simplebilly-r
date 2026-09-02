# AnlageSApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnlageSApi**](AnlageSApi.md#AnlageSApi) | **GET** /api/v1/bookkeeping/anlage-s | 


# **AnlageSApi**
> AnlageSErgebnis AnlageSApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- AnlageSApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AnlageSApi(var_yeardata_file = "result.txt")
result <- api_instance$AnlageSApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**AnlageSErgebnis**](AnlageSErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Anlage S Ergebnis |  -  |

