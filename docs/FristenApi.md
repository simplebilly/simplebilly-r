# FristenApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FristenApi**](FristenApi.md#FristenApi) | **GET** /api/v1/bookkeeping/fristen | 


# **FristenApi**
> FristenErgebnis FristenApi(bundesland = var.bundesland, voranmeldungsrhythmus = var.voranmeldungsrhythmus, dauerfristverlaengerung = var.dauerfristverlaengerung, est_aktiv = var.est_aktiv, gewst_aktiv = var.gewst_aktiv, monate = var.monate)



### Example
```R
library(openapi)

# prepare function argument(s)
var_bundesland <- "bundesland_example" # character |  (Optional)
var_voranmeldungsrhythmus <- "voranmeldungsrhythmus_example" # character |  (Optional)
var_dauerfristverlaengerung <- "dauerfristverlaengerung_example" # character |  (Optional)
var_est_aktiv <- "est_aktiv_example" # character |  (Optional)
var_gewst_aktiv <- "gewst_aktiv_example" # character |  (Optional)
var_monate <- 56 # integer |  (Optional)

api_instance <- FristenApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FristenApi(bundesland = var_bundesland, voranmeldungsrhythmus = var_voranmeldungsrhythmus, dauerfristverlaengerung = var_dauerfristverlaengerung, est_aktiv = var_est_aktiv, gewst_aktiv = var_gewst_aktiv, monate = var_monatedata_file = "result.txt")
result <- api_instance$FristenApi(bundesland = var_bundesland, voranmeldungsrhythmus = var_voranmeldungsrhythmus, dauerfristverlaengerung = var_dauerfristverlaengerung, est_aktiv = var_est_aktiv, gewst_aktiv = var_gewst_aktiv, monate = var_monate)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundesland** | **character**|  | [optional] 
 **voranmeldungsrhythmus** | **character**|  | [optional] 
 **dauerfristverlaengerung** | **character**|  | [optional] 
 **est_aktiv** | **character**|  | [optional] 
 **gewst_aktiv** | **character**|  | [optional] 
 **monate** | **integer**|  | [optional] 

### Return type

[**FristenErgebnis**](FristenErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Steuerliche Fristen |  -  |

