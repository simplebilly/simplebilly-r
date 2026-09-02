# PlausibilityApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PlausibilityCheckApi**](PlausibilityApi.md#PlausibilityCheckApi) | **GET** /api/v1/bookkeeping/plausibility | 


# **PlausibilityCheckApi**
> PlausibilityReport PlausibilityCheckApi(date_from = var.date_from, date_to = var.date_to)



### Example
```R
library(openapi)

# prepare function argument(s)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)

api_instance <- PlausibilityApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PlausibilityCheckApi(date_from = var_date_from, date_to = var_date_todata_file = "result.txt")
result <- api_instance$PlausibilityCheckApi(date_from = var_date_from, date_to = var_date_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 

### Return type

[**PlausibilityReport**](PlausibilityReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Plausibility report |  -  |

