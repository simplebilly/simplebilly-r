# GobdExportApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BuchhalterCsvApi**](GobdExportApi.md#BuchhalterCsvApi) | **GET** /api/v1/bookkeeping/buchhalter-csv | 
[**GobdExportApi**](GobdExportApi.md#GobdExportApi) | **GET** /api/v1/bookkeeping/gobd | GoBD/GDPdU export. Default: ZIP archive (&#x60;index.xml&#x60; + CSV tables, IDEA format). &#x60;?format&#x3D;csv&#x60; returns the legacy single-journal CSV as JSON.


# **BuchhalterCsvApi**
> GoBDExportResponse BuchhalterCsvApi(date_from, date_to)



### Example
```R
library(openapi)

# prepare function argument(s)
var_date_from <- "date_from_example" # character | 
var_date_to <- "date_to_example" # character | 

api_instance <- GobdExportApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$BuchhalterCsvApi(var_date_from, var_date_todata_file = "result.txt")
result <- api_instance$BuchhalterCsvApi(var_date_from, var_date_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_from** | **character**|  | 
 **date_to** | **character**|  | 

### Return type

[**GoBDExportResponse**](GoBDExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Buchhalter CSV |  -  |

# **GobdExportApi**
> GobdExportApi(year, format = var.format)

GoBD/GDPdU export. Default: ZIP archive (`index.xml` + CSV tables, IDEA format). `?format=csv` returns the legacy single-journal CSV as JSON.

### Example
```R
library(openapi)

# GoBD/GDPdU export. Default: ZIP archive (`index.xml` + CSV tables, IDEA format). `?format=csv` returns the legacy single-journal CSV as JSON.
#
# prepare function argument(s)
var_year <- 56 # integer | 
var_format <- "zip" # character | Export format: `zip` (default, full GDPdU/IDEA export) or `csv` (legacy single-journal CSV as JSON). (Optional)

api_instance <- GobdExportApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GobdExportApi(var_year, format = var_format)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 
 **format** | **character**| Export format: &#x60;zip&#x60; (default, full GDPdU/IDEA export) or &#x60;csv&#x60; (legacy single-journal CSV as JSON). | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | GoBD/GDPdU export: ZIP (application/zip) with index.xml (IDEA table specification) and one UTF-8 CSV per tax-relevant table; legacy single-journal CSV JSON via ?format&#x3D;csv |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

