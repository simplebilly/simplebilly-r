# PayrollApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PayrollApprove**](PayrollApi.md#PayrollApprove) | **POST** /api/v1/payroll/{id}/approve | 
[**PayrollAutopay**](PayrollApi.md#PayrollAutopay) | **POST** /api/v1/payroll/{id}/autopay | 
[**PayrollCalculate**](PayrollApi.md#PayrollCalculate) | **POST** /api/v1/payroll/{id}/calculate | 
[**PayrollCreate**](PayrollApi.md#PayrollCreate) | **POST** /api/v1/payroll | 
[**PayrollDelete**](PayrollApi.md#PayrollDelete) | **DELETE** /api/v1/payroll/{id} | 
[**PayrollElsterExport**](PayrollApi.md#PayrollElsterExport) | **POST** /api/v1/payroll/{id}/elster-export | 
[**PayrollEmail**](PayrollApi.md#PayrollEmail) | **POST** /api/v1/payroll/{id}/email | 
[**PayrollEntryPdf**](PayrollApi.md#PayrollEntryPdf) | **GET** /api/v1/payroll/{id}/entries/{entry_id}/pdf | 
[**PayrollGet**](PayrollApi.md#PayrollGet) | **GET** /api/v1/payroll/{id} | 
[**PayrollList**](PayrollApi.md#PayrollList) | **GET** /api/v1/payroll | 
[**PayrollPay**](PayrollApi.md#PayrollPay) | **POST** /api/v1/payroll/{id}/pay | 
[**PayrollPdf**](PayrollApi.md#PayrollPdf) | **GET** /api/v1/payroll/{id}/pdf | 
[**PayrollSummary**](PayrollApi.md#PayrollSummary) | **GET** /api/v1/payroll/summary/{year} | 
[**PayrollSvMeldungen**](PayrollApi.md#PayrollSvMeldungen) | **POST** /api/v1/payroll/{id}/sv-meldungen | 


# **PayrollApprove**
> PayrollRunApi PayrollApprove(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PayrollApprove(var_iddata_file = "result.txt")
result <- api_instance$PayrollApprove(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**PayrollRunApi**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PayrollAutopay**
> AnyType PayrollAutopay(id, body = var.body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_body <- TODO # AnyType |  (Optional)

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PayrollAutopay(var_id, body = var_bodydata_file = "result.txt")
result <- api_instance$PayrollAutopay(var_id, body = var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **body** | **AnyType**|  | [optional] 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PayrollCalculate**
> PayrollRunApi PayrollCalculate(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PayrollCalculate(var_iddata_file = "result.txt")
result <- api_instance$PayrollCalculate(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**PayrollRunApi**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PayrollCreate**
> PayrollRunApi PayrollCreate(payroll_create_payload)



### Example
```R
library(openapi)

# prepare function argument(s)
var_payroll_create_payload <- PayrollCreatePayload$new(c("employee_ids_example"), 123, 123, c(ExtraPayment$new("amount_example", "employee_id_example", "reason_example"))) # PayrollCreatePayload | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PayrollCreate(var_payroll_create_payloaddata_file = "result.txt")
result <- api_instance$PayrollCreate(var_payroll_create_payload)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payroll_create_payload** | [**PayrollCreatePayload**](PayrollCreatePayload.md)|  | 

### Return type

[**PayrollRunApi**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

# **PayrollDelete**
> PayrollDelete(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$PayrollDelete(var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

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
| **204** | No Content |  -  |

# **PayrollElsterExport**
> PayrollElsterExport(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$PayrollElsterExport(var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

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
| **200** | CSV export |  -  |

# **PayrollEmail**
> AnyType PayrollEmail(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PayrollEmail(var_iddata_file = "result.txt")
result <- api_instance$PayrollEmail(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PayrollEntryPdf**
> PayrollEntryPdf(id, entry_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_entry_id <- "entry_id_example" # character | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$PayrollEntryPdf(var_id, var_entry_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **entry_id** | **character**|  | 

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
| **200** | PDF slip |  -  |

# **PayrollGet**
> PayrollRunApi PayrollGet(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PayrollGet(var_iddata_file = "result.txt")
result <- api_instance$PayrollGet(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**PayrollRunApi**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PayrollList**
> array[PayrollRunApi] PayrollList(year = var.year, status = var.status)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer |  (Optional)
var_status <- "status_example" # character |  (Optional)

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PayrollList(year = var_year, status = var_statusdata_file = "result.txt")
result <- api_instance$PayrollList(year = var_year, status = var_status)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | [optional] 
 **status** | **character**|  | [optional] 

### Return type

[**array[PayrollRunApi]**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PayrollPay**
> PayrollRunApi PayrollPay(id, payroll_pay_payload)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_payroll_pay_payload <- PayrollPayPayload$new("payment_date_example") # PayrollPayPayload | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PayrollPay(var_id, var_payroll_pay_payloaddata_file = "result.txt")
result <- api_instance$PayrollPay(var_id, var_payroll_pay_payload)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **payroll_pay_payload** | [**PayrollPayPayload**](PayrollPayPayload.md)|  | 

### Return type

[**PayrollRunApi**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PayrollPdf**
> PayrollPdf(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$PayrollPdf(var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

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
| **200** | PDF summary |  -  |

# **PayrollSummary**
> YearlyPayrollSummary PayrollSummary(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PayrollSummary(var_yeardata_file = "result.txt")
result <- api_instance$PayrollSummary(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**YearlyPayrollSummary**](YearlyPayrollSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PayrollSvMeldungen**
> AnyType PayrollSvMeldungen(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- PayrollApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PayrollSvMeldungen(var_iddata_file = "result.txt")
result <- api_instance$PayrollSvMeldungen(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

