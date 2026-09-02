# CreateSepaDirectDebitApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateSepaDirectDebitApi**](CreateSepaDirectDebitApi.md#CreateSepaDirectDebitApi) | **POST** /api/v1/bookkeeping/sepa-direct-debit | 


# **CreateSepaDirectDebitApi**
> SepaDirectDebitResponse CreateSepaDirectDebitApi(creditor_name, creditor_iban, creditor_id, mandate_id, mandate_date, debtor_name, debtor_iban, amount, collection_date, creditor_bic = var.creditor_bic, debtor_bic = var.debtor_bic, description = var.description)



### Example
```R
library(openapi)

# prepare function argument(s)
var_creditor_name <- "creditor_name_example" # character | 
var_creditor_iban <- "creditor_iban_example" # character | 
var_creditor_id <- "creditor_id_example" # character | 
var_mandate_id <- "mandate_id_example" # character | 
var_mandate_date <- "mandate_date_example" # character | 
var_debtor_name <- "debtor_name_example" # character | 
var_debtor_iban <- "debtor_iban_example" # character | 
var_amount <- "amount_example" # character | 
var_collection_date <- "collection_date_example" # character | 
var_creditor_bic <- "creditor_bic_example" # character |  (Optional)
var_debtor_bic <- "debtor_bic_example" # character |  (Optional)
var_description <- "description_example" # character |  (Optional)

api_instance <- CreateSepaDirectDebitApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateSepaDirectDebitApi(var_creditor_name, var_creditor_iban, var_creditor_id, var_mandate_id, var_mandate_date, var_debtor_name, var_debtor_iban, var_amount, var_collection_date, creditor_bic = var_creditor_bic, debtor_bic = var_debtor_bic, description = var_descriptiondata_file = "result.txt")
result <- api_instance$CreateSepaDirectDebitApi(var_creditor_name, var_creditor_iban, var_creditor_id, var_mandate_id, var_mandate_date, var_debtor_name, var_debtor_iban, var_amount, var_collection_date, creditor_bic = var_creditor_bic, debtor_bic = var_debtor_bic, description = var_description)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditor_name** | **character**|  | 
 **creditor_iban** | **character**|  | 
 **creditor_id** | **character**|  | 
 **mandate_id** | **character**|  | 
 **mandate_date** | **character**|  | 
 **debtor_name** | **character**|  | 
 **debtor_iban** | **character**|  | 
 **amount** | **character**|  | 
 **collection_date** | **character**|  | 
 **creditor_bic** | **character**|  | [optional] 
 **debtor_bic** | **character**|  | [optional] 
 **description** | **character**|  | [optional] 

### Return type

[**SepaDirectDebitResponse**](SepaDirectDebitResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SEPA Direct Debit XML |  -  |
| **500** | Internal server error |  -  |

