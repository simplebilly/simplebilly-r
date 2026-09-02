# GenerateXrechnungApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateXrechnungApi**](GenerateXrechnungApi.md#GenerateXrechnungApi) | **GET** /api/v1/invoices/{id}/xrechnung | 


# **GenerateXrechnungApi**
> XRechnungResponse GenerateXrechnungApi(id, supplier_name = var.supplier_name, supplier_street = var.supplier_street, supplier_city = var.supplier_city, supplier_zip = var.supplier_zip, supplier_country = var.supplier_country, supplier_vat_id = var.supplier_vat_id)



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

api_instance <- GenerateXrechnungApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenerateXrechnungApi(var_id, supplier_name = var_supplier_name, supplier_street = var_supplier_street, supplier_city = var_supplier_city, supplier_zip = var_supplier_zip, supplier_country = var_supplier_country, supplier_vat_id = var_supplier_vat_iddata_file = "result.txt")
result <- api_instance$GenerateXrechnungApi(var_id, supplier_name = var_supplier_name, supplier_street = var_supplier_street, supplier_city = var_supplier_city, supplier_zip = var_supplier_zip, supplier_country = var_supplier_country, supplier_vat_id = var_supplier_vat_id)
dput(result)
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

[**XRechnungResponse**](XRechnungResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | XRechnung XML |  -  |
| **404** | Invoice not found |  -  |
| **500** | Internal server error |  -  |

