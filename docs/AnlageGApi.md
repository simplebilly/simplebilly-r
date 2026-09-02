# AnlageGApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnlageGApi**](AnlageGApi.md#AnlageGApi) | **GET** /api/v1/bookkeeping/anlage-g | 


# **AnlageGApi**
> AnlageGErgebnis AnlageGApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- AnlageGApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AnlageGApi(var_yeardata_file = "result.txt")
result <- api_instance$AnlageGApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**AnlageGErgebnis**](AnlageGErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Anlage G Ergebnis |  -  |

