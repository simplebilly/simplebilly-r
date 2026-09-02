# UstvaApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**JahresustApi**](UstvaApi.md#JahresustApi) | **GET** /api/v1/bookkeeping/jahresust | 
[**UstvaApi**](UstvaApi.md#UstvaApi) | **GET** /api/v1/bookkeeping/ustva | 


# **JahresustApi**
> JahresUstErgebnis JahresustApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- UstvaApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$JahresustApi(var_yeardata_file = "result.txt")
result <- api_instance$JahresustApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**JahresUstErgebnis**](JahresUstErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Jahresumsatzsteuer Ergebnis |  -  |

# **UstvaApi**
> UstvaErgebnis UstvaApi(zeitraum)



### Example
```R
library(openapi)

# prepare function argument(s)
var_zeitraum <- "zeitraum_example" # character | 

api_instance <- UstvaApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UstvaApi(var_zeitraumdata_file = "result.txt")
result <- api_instance$UstvaApi(var_zeitraum)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zeitraum** | **character**|  | 

### Return type

[**UstvaErgebnis**](UstvaErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | UStVA Ergebnis |  -  |

