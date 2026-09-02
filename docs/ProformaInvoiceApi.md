# ProformaInvoiceApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConvertProformaToInvoice**](ProformaInvoiceApi.md#ConvertProformaToInvoice) | **POST** /api/v1/proforma-invoices/{proforma_id}/convert | 
[**CreateProformaInvoice**](ProformaInvoiceApi.md#CreateProformaInvoice) | **POST** /api/v1/proforma-invoices | 
[**DeleteProformaInvoice**](ProformaInvoiceApi.md#DeleteProformaInvoice) | **DELETE** /api/v1/proforma-invoices/{proforma_id} | 
[**GetProformaInvoice**](ProformaInvoiceApi.md#GetProformaInvoice) | **GET** /api/v1/proforma-invoices/{proforma_id} | 
[**ListProformaInvoices**](ProformaInvoiceApi.md#ListProformaInvoices) | **GET** /api/v1/proforma-invoices/ | 
[**UpdateProformaInvoice**](ProformaInvoiceApi.md#UpdateProformaInvoice) | **PUT** /api/v1/proforma-invoices/{proforma_id} | 


# **ConvertProformaToInvoice**
> ConvertResponse ConvertProformaToInvoice(proforma_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_proforma_id <- "proforma_id_example" # character | 

api_instance <- ProformaInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ConvertProformaToInvoice(var_proforma_iddata_file = "result.txt")
result <- api_instance$ConvertProformaToInvoice(var_proforma_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proforma_id** | **character**|  | 

### Return type

[**ConvertResponse**](ConvertResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad request |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **CreateProformaInvoice**
> ProformaInvoice CreateProformaInvoice(proforma_invoice)



### Example
```R
library(openapi)

# prepare function argument(s)
var_proforma_invoice <- ProformaInvoice$new(CurrencyCode$new(), "issueDate_example", TODO, ProformaInvoiceStatus$new(), "subtotal_example", "totalAmount_example", "totalTax_example", "convertedAt_example", "convertedToInvoiceId_example", "customerId_example", TODO, "notes_example", "orderNumber_example", "paymentDueDate_example", "quotationId_example") # ProformaInvoice | 

api_instance <- ProformaInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProformaInvoice(var_proforma_invoicedata_file = "result.txt")
result <- api_instance$CreateProformaInvoice(var_proforma_invoice)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proforma_invoice** | [**ProformaInvoice**](ProformaInvoice.md)|  | 

### Return type

[**ProformaInvoice**](ProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **DeleteProformaInvoice**
> DeleteProformaInvoice(proforma_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_proforma_id <- "proforma_id_example" # character | 

api_instance <- ProformaInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteProformaInvoice(var_proforma_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proforma_id** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No Content |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **GetProformaInvoice**
> ProformaInvoice GetProformaInvoice(proforma_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_proforma_id <- "proforma_id_example" # character | 

api_instance <- ProformaInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProformaInvoice(var_proforma_iddata_file = "result.txt")
result <- api_instance$GetProformaInvoice(var_proforma_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proforma_id** | **character**|  | 

### Return type

[**ProformaInvoice**](ProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **ListProformaInvoices**
> array[ProformaInvoice] ListProformaInvoices(page = var.page, page_size = var.page_size, status = var.status, customer_id = var.customer_id, order_number = var.order_number)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_customer_id <- "customer_id_example" # character |  (Optional)
var_order_number <- "order_number_example" # character |  (Optional)

api_instance <- ProformaInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListProformaInvoices(page = var_page, page_size = var_page_size, status = var_status, customer_id = var_customer_id, order_number = var_order_numberdata_file = "result.txt")
result <- api_instance$ListProformaInvoices(page = var_page, page_size = var_page_size, status = var_status, customer_id = var_customer_id, order_number = var_order_number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **status** | **character**|  | [optional] 
 **customer_id** | **character**|  | [optional] 
 **order_number** | **character**|  | [optional] 

### Return type

[**array[ProformaInvoice]**](ProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **500** | Internal server error |  -  |

# **UpdateProformaInvoice**
> ProformaInvoice UpdateProformaInvoice(proforma_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_proforma_id <- "proforma_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- ProformaInvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateProformaInvoice(var_proforma_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateProformaInvoice(var_proforma_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proforma_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**ProformaInvoice**](ProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

