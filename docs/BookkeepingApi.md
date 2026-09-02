# BookkeepingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AllocatePaymentApi**](BookkeepingApi.md#AllocatePaymentApi) | **POST** /api/v1/payments/allocate | Allocate a payment to an invoice
[**BwaReportApi**](BookkeepingApi.md#BwaReportApi) | **GET** /api/v1/bookkeeping/bwa | Get BWA (Betriebswirtschaftliche Auswertung) report
[**ElsterStatusApi**](BookkeepingApi.md#ElsterStatusApi) | **GET** /api/v1/bookkeeping/elster/status | 
[**ElsterValidateApi**](BookkeepingApi.md#ElsterValidateApi) | **POST** /api/v1/bookkeeping/ustva/elster-validate | 
[**ElsterXmlApi**](BookkeepingApi.md#ElsterXmlApi) | **GET** /api/v1/bookkeeping/ustva/elster-xml | 
[**GetCashflow**](BookkeepingApi.md#GetCashflow) | **GET** /api/v1/bookkeeping/cashflow | GET /api/v1/bookkeeping/cashflow Returns operating, investing, and financing cashflow for the given period.
[**GetLiquidity**](BookkeepingApi.md#GetLiquidity) | **GET** /api/v1/bookkeeping/liquidity | GET /api/v1/bookkeeping/liquidity Returns current liquidity position with ratios.
[**GetOpenInvoicesApi**](BookkeepingApi.md#GetOpenInvoicesApi) | **GET** /api/v1/payments/open-invoices/{customer_id} | Get open invoices for a customer
[**GetVerfahrensdokumentation**](BookkeepingApi.md#GetVerfahrensdokumentation) | **GET** /api/v1/bookkeeping/verfahrensdokumentation | GET /api/v1/bookkeeping/verfahrensdokumentation Returns the complete compliance catalog of all documented modules.
[**RunDunningApi**](BookkeepingApi.md#RunDunningApi) | **POST** /api/v1/bookkeeping/dunning | 


# **AllocatePaymentApi**
> AllocatePaymentApi(allocate_payment_request)

Allocate a payment to an invoice

### Example
```R
library(openapi)

# Allocate a payment to an invoice
#
# prepare function argument(s)
var_allocate_payment_request <- AllocatePaymentRequest$new(123, "invoice_id_example", "payment_id_example") # AllocatePaymentRequest | 

api_instance <- BookkeepingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$AllocatePaymentApi(var_allocate_payment_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allocate_payment_request** | [**AllocatePaymentRequest**](AllocatePaymentRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Payment allocated successfully |  -  |
| **400** | Invalid request |  -  |
| **404** | Payment or invoice not found |  -  |

# **BwaReportApi**
> BWAReport BwaReportApi(year = var.year, month = var.month)

Get BWA (Betriebswirtschaftliche Auswertung) report

### Example
```R
library(openapi)

# Get BWA (Betriebswirtschaftliche Auswertung) report
#
# prepare function argument(s)
var_year <- 56 # integer |  (Optional)
var_month <- 56 # integer |  (Optional)

api_instance <- BookkeepingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$BwaReportApi(year = var_year, month = var_monthdata_file = "result.txt")
result <- api_instance$BwaReportApi(year = var_year, month = var_month)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | [optional] 
 **month** | **integer**|  | [optional] 

### Return type

[**BWAReport**](BWAReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | BWA Report |  -  |
| **500** | Internal server error |  -  |

# **ElsterStatusApi**
> ElsterStatus ElsterStatusApi()



### Example
```R
library(openapi)


api_instance <- BookkeepingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ElsterStatusApi(data_file = "result.txt")
result <- api_instance$ElsterStatusApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ElsterStatus**](ElsterStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | ELSTER integration status |  -  |

# **ElsterValidateApi**
> ElsterValidateApi(zeitraum)



### Example
```R
library(openapi)

# prepare function argument(s)
var_zeitraum <- "zeitraum_example" # character | 

api_instance <- BookkeepingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ElsterValidateApi(var_zeitraum)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zeitraum** | **character**|  | 

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
| **200** | Validate UStVA XML (mock or ERiC) |  -  |

# **ElsterXmlApi**
> ElsterXmlApi(zeitraum)



### Example
```R
library(openapi)

# prepare function argument(s)
var_zeitraum <- "zeitraum_example" # character | 

api_instance <- BookkeepingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ElsterXmlApi(var_zeitraum)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zeitraum** | **character**|  | 

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
| **200** | ELSTER UStVA XML template (manual upload) |  -  |

# **GetCashflow**
> CashflowReport GetCashflow(year = var.year, month = var.month)

GET /api/v1/bookkeeping/cashflow Returns operating, investing, and financing cashflow for the given period.

### Example
```R
library(openapi)

# GET /api/v1/bookkeeping/cashflow Returns operating, investing, and financing cashflow for the given period.
#
# prepare function argument(s)
var_year <- 56 # integer |  (Optional)
var_month <- 56 # integer |  (Optional)

api_instance <- BookkeepingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCashflow(year = var_year, month = var_monthdata_file = "result.txt")
result <- api_instance$GetCashflow(year = var_year, month = var_month)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | [optional] 
 **month** | **integer**|  | [optional] 

### Return type

[**CashflowReport**](CashflowReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Cashflow report |  -  |
| **500** | Internal server error |  -  |

# **GetLiquidity**
> LiquidityPosition GetLiquidity()

GET /api/v1/bookkeeping/liquidity Returns current liquidity position with ratios.

### Example
```R
library(openapi)

# GET /api/v1/bookkeeping/liquidity Returns current liquidity position with ratios.
#

api_instance <- BookkeepingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetLiquidity(data_file = "result.txt")
result <- api_instance$GetLiquidity()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LiquidityPosition**](LiquidityPosition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Liquidity position |  -  |
| **500** | Internal server error |  -  |

# **GetOpenInvoicesApi**
> array[Invoice] GetOpenInvoicesApi(customer_id)

Get open invoices for a customer

### Example
```R
library(openapi)

# Get open invoices for a customer
#
# prepare function argument(s)
var_customer_id <- "customer_id_example" # character | 

api_instance <- BookkeepingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetOpenInvoicesApi(var_customer_iddata_file = "result.txt")
result <- api_instance$GetOpenInvoicesApi(var_customer_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **character**|  | 

### Return type

[**array[Invoice]**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Open invoices list |  -  |
| **404** | Customer not found |  -  |

# **GetVerfahrensdokumentation**
> Verfahrensdokumentation GetVerfahrensdokumentation()

GET /api/v1/bookkeeping/verfahrensdokumentation Returns the complete compliance catalog of all documented modules.

### Example
```R
library(openapi)

# GET /api/v1/bookkeeping/verfahrensdokumentation Returns the complete compliance catalog of all documented modules.
#

api_instance <- BookkeepingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetVerfahrensdokumentation(data_file = "result.txt")
result <- api_instance$GetVerfahrensdokumentation()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Verfahrensdokumentation**](Verfahrensdokumentation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Verfahrensdokumentation |  -  |
| **500** | Internal server error |  -  |

# **RunDunningApi**
> DunningResult RunDunningApi()



### Example
```R
library(openapi)


api_instance <- BookkeepingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RunDunningApi(data_file = "result.txt")
result <- api_instance$RunDunningApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DunningResult**](DunningResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Dunning run completed successfully |  -  |
| **500** | Internal server error |  -  |

