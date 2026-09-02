# GewerbesteuerApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GewerbesteuerApi**](GewerbesteuerApi.md#GewerbesteuerApi) | **GET** /api/v1/bookkeeping/gewerbesteuer | 


# **GewerbesteuerApi**
> GewerbesteuerErgebnis GewerbesteuerApi(year, hebesatz = var.hebesatz, gewerbeertrag = var.gewerbeertrag, country = var.country, gemeindeschluessel = var.gemeindeschluessel)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 
var_hebesatz <- "hebesatz_example" # character |  (Optional)
var_gewerbeertrag <- "gewerbeertrag_example" # character |  (Optional)
var_country <- "country_example" # character |  (Optional)
var_gemeindeschluessel <- "gemeindeschluessel_example" # character |  (Optional)

api_instance <- GewerbesteuerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GewerbesteuerApi(var_year, hebesatz = var_hebesatz, gewerbeertrag = var_gewerbeertrag, country = var_country, gemeindeschluessel = var_gemeindeschluesseldata_file = "result.txt")
result <- api_instance$GewerbesteuerApi(var_year, hebesatz = var_hebesatz, gewerbeertrag = var_gewerbeertrag, country = var_country, gemeindeschluessel = var_gemeindeschluessel)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 
 **hebesatz** | **character**|  | [optional] 
 **gewerbeertrag** | **character**|  | [optional] 
 **country** | **character**|  | [optional] 
 **gemeindeschluessel** | **character**|  | [optional] 

### Return type

[**GewerbesteuerErgebnis**](GewerbesteuerErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Gewerbesteuer / Trade Tax Ergebnis |  -  |

