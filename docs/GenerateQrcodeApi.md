# GenerateQrcodeApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateQrcodeApi**](GenerateQrcodeApi.md#GenerateQrcodeApi) | **GET** /api/v1/invoices/{id}/qrcode | 


# **GenerateQrcodeApi**
> QRCodeResponse GenerateQrcodeApi(iban, id, holder_name = var.holder_name, bic = var.bic, amount = var.amount, reference = var.reference, purpose = var.purpose)



### Example
```R
library(openapi)

# prepare function argument(s)
var_iban <- "iban_example" # character | 
var_id <- "id_example" # character | 
var_holder_name <- "holder_name_example" # character |  (Optional)
var_bic <- "bic_example" # character |  (Optional)
var_amount <- "amount_example" # character |  (Optional)
var_reference <- "reference_example" # character |  (Optional)
var_purpose <- "purpose_example" # character |  (Optional)

api_instance <- GenerateQrcodeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenerateQrcodeApi(var_iban, var_id, holder_name = var_holder_name, bic = var_bic, amount = var_amount, reference = var_reference, purpose = var_purposedata_file = "result.txt")
result <- api_instance$GenerateQrcodeApi(var_iban, var_id, holder_name = var_holder_name, bic = var_bic, amount = var_amount, reference = var_reference, purpose = var_purpose)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iban** | **character**|  | 
 **id** | **character**|  | 
 **holder_name** | **character**|  | [optional] 
 **bic** | **character**|  | [optional] 
 **amount** | **character**|  | [optional] 
 **reference** | **character**|  | [optional] 
 **purpose** | **character**|  | [optional] 

### Return type

[**QRCodeResponse**](QRCodeResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | QR Code for invoice payment |  -  |
| **404** | Invoice not found |  -  |
| **500** | Internal server error |  -  |

