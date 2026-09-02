# BankingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BankLookupApi**](BankingApi.md#BankLookupApi) | **GET** /api/v1/bookkeeping/banking/lookup | 
[**BankTransactionsApi**](BankingApi.md#BankTransactionsApi) | **GET** /api/v1/bookkeeping/banking/transactions | 
[**HebesatzLookupApi**](BankingApi.md#HebesatzLookupApi) | **GET** /api/v1/bookkeeping/hebesatz | 


# **BankLookupApi**
> BankLookup BankLookupApi(iban)



### Example
```R
library(openapi)

# prepare function argument(s)
var_iban <- "iban_example" # character | 

api_instance <- BankingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$BankLookupApi(var_ibandata_file = "result.txt")
result <- api_instance$BankLookupApi(var_iban)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iban** | **character**|  | 

### Return type

[**BankLookup**](BankLookup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Bank-Lookup Ergebnis |  -  |

# **BankTransactionsApi**
> BankTransactionsApi()



### Example
```R
library(openapi)


api_instance <- BankingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$BankTransactionsApi()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Bank-Transaktionen |  -  |

# **HebesatzLookupApi**
> array[HebesatzLookup] HebesatzLookupApi(gemeindeschluessel = var.gemeindeschluessel, plz = var.plz, name = var.name, stichtag = var.stichtag, country_code = var.country_code)



### Example
```R
library(openapi)

# prepare function argument(s)
var_gemeindeschluessel <- "gemeindeschluessel_example" # character |  (Optional)
var_plz <- "plz_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_stichtag <- "stichtag_example" # character | Stichtag for validity (YYYY-MM-DD); defaults to today. Picks row where valid_from <= date <= valid_to. (Optional)
var_country_code <- "country_code_example" # character |  (Optional)

api_instance <- BankingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$HebesatzLookupApi(gemeindeschluessel = var_gemeindeschluessel, plz = var_plz, name = var_name, stichtag = var_stichtag, country_code = var_country_codedata_file = "result.txt")
result <- api_instance$HebesatzLookupApi(gemeindeschluessel = var_gemeindeschluessel, plz = var_plz, name = var_name, stichtag = var_stichtag, country_code = var_country_code)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gemeindeschluessel** | **character**|  | [optional] 
 **plz** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 
 **stichtag** | **character**| Stichtag for validity (YYYY-MM-DD); defaults to today. Picks row where valid_from &lt;&#x3D; date &lt;&#x3D; valid_to. | [optional] 
 **country_code** | **character**|  | [optional] 

### Return type

[**array[HebesatzLookup]**](HebesatzLookup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Hebesatz Lookup |  -  |

