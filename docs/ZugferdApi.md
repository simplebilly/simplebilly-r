# ZugferdApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateZugferdApi**](ZugferdApi.md#GenerateZugferdApi) | **GET** /api/v1/invoices/{id}/zugferd | 


# **GenerateZugferdApi**
> GenerateZugferdApi(id, supplier_name = var.supplier_name, supplier_street = var.supplier_street, supplier_city = var.supplier_city, supplier_zip = var.supplier_zip, supplier_country = var.supplier_country, supplier_vat_id = var.supplier_vat_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_supplier_name <- "supplier_name_example" # character |  (Optional)
var_supplier_street <- "supplier_street_example" # character |  (Optional)
var_supplier_city <- "supplier_city_example" # character |  (Optional)
var_supplier_zip <- "supplier_zip_example" # character |  (Optional)
var_supplier_country <- "supplier_country_example" # character |  (Optional)
var_supplier_vat_id <- "supplier_vat_id_example" # character |  (Optional)

api_instance <- ZugferdApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GenerateZugferdApi(var_id, supplier_name = var_supplier_name, supplier_street = var_supplier_street, supplier_city = var_supplier_city, supplier_zip = var_supplier_zip, supplier_country = var_supplier_country, supplier_vat_id = var_supplier_vat_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **supplier_name** | **character**|  | [optional] 
 **supplier_street** | **character**|  | [optional] 
 **supplier_city** | **character**|  | [optional] 
 **supplier_zip** | **character**|  | [optional] 
 **supplier_country** | **character**|  | [optional] 
 **supplier_vat_id** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | ZUGFeRD/Factur-X hybrid PDF (PDF/A-3 with embedded EN 16931 XML) |  -  |
| **404** | Invoice not found |  -  |
| **500** | Internal server error |  -  |

