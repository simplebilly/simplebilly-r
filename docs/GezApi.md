# GezApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GezApi**](GezApi.md#GezApi) | **GET** /api/v1/bookkeeping/gez | 


# **GezApi**
> GezReport GezApi(jahr = var.jahr, betriebsstaetten = var.betriebsstaetten, kfz = var.kfz, hotelzimmer = var.hotelzimmer, beschaefigte = var.beschaefigte)



### Example
```R
library(openapi)

# prepare function argument(s)
var_jahr <- 56 # integer |  (Optional)
var_betriebsstaetten <- "betriebsstaetten_example" # character | Liste der Betriebsstätten als JSON, z.B. `[{\"name\":\"Filiale 1\",\"beschaefigte\":12}]`. (Optional)
var_kfz <- 56 # integer | Gesamtzahl der betrieblich genutzten Kfz (falls keine Betriebsstätten angegeben sind). (Optional)
var_hotelzimmer <- 56 # integer | Gesamtzahl der Hotel-/Gästezimmer und Ferienwohnungen. (Optional)
var_beschaefigte <- 56 # integer | Gesamtzahl der Beschäftigten (verwendet nur, wenn `betriebsstaetten` fehlt; dann wird eine einzelne Betriebsstätte angenommen). (Optional)

api_instance <- GezApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GezApi(jahr = var_jahr, betriebsstaetten = var_betriebsstaetten, kfz = var_kfz, hotelzimmer = var_hotelzimmer, beschaefigte = var_beschaefigtedata_file = "result.txt")
result <- api_instance$GezApi(jahr = var_jahr, betriebsstaetten = var_betriebsstaetten, kfz = var_kfz, hotelzimmer = var_hotelzimmer, beschaefigte = var_beschaefigte)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jahr** | **integer**|  | [optional] 
 **betriebsstaetten** | **character**| Liste der Betriebsstätten als JSON, z.B. &#x60;[{\&quot;name\&quot;:\&quot;Filiale 1\&quot;,\&quot;beschaefigte\&quot;:12}]&#x60;. | [optional] 
 **kfz** | **integer**| Gesamtzahl der betrieblich genutzten Kfz (falls keine Betriebsstätten angegeben sind). | [optional] 
 **hotelzimmer** | **integer**| Gesamtzahl der Hotel-/Gästezimmer und Ferienwohnungen. | [optional] 
 **beschaefigte** | **integer**| Gesamtzahl der Beschäftigten (verwendet nur, wenn &#x60;betriebsstaetten&#x60; fehlt; dann wird eine einzelne Betriebsstätte angenommen). | [optional] 

### Return type

[**GezReport**](GezReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Rundfunkbeitrag (GEZ) Berechnung nach § 5 RBStV |  -  |

