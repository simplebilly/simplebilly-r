# InvoiceApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateInvoice**](InvoiceApi.md#CreateInvoice) | **POST** /api/v1/invoices | 
[**DeleteInvoice**](InvoiceApi.md#DeleteInvoice) | **DELETE** /api/v1/invoices/{id} | 
[**DownloadInvoicePdf**](InvoiceApi.md#DownloadInvoicePdf) | **GET** /api/v1/invoices/{id}/pdf | 
[**GetInvoice**](InvoiceApi.md#GetInvoice) | **GET** /api/v1/invoices/{id} | 
[**GetInvoicePdfUrl**](InvoiceApi.md#GetInvoicePdfUrl) | **GET** /api/v1/invoices/{id}/pdf-url | 
[**GetInvoices**](InvoiceApi.md#GetInvoices) | **GET** /api/v1/invoices/ | 
[**InvoiceRestore**](InvoiceApi.md#InvoiceRestore) | **POST** /api/v1/invoices/{id}/restore | 
[**UpdateInvoice**](InvoiceApi.md#UpdateInvoice) | **PUT** /api/v1/invoices/{id} | 


# **CreateInvoice**
> Invoice CreateInvoice(invoice_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_invoice_create <- InvoiceCreate$new(CurrencyCode$new(), InvoiceType$new(), "issueDate_example", TODO, InvoiceStatus$new(), "subtotal_example", "totalAmount_example", "totalTax_example", TODO, "billingPeriodEnd_example", "billingPeriodStart_example", "cancellationDate_example", "cancellationInvoiceId_example", "cancellationReason_example", "contractId_example", "customerId_example", "discountAmount_example", 123, "discountPercentage_example", DocumentType$new(), 123, "inputVatAmount_example", "inputVatDeductible_example", "inputVatPercentage_example", "introductionText_example", "isCancelled_example", "isDraft_example", "isEuAcquisition_example", "isEuDelivery_example", "isIntraCommunityAcquisition_example", "isReverseCharge_example", "ledgerAccount_example", "margin25a_example", "margin25aGross_example", "margin25aPurchasePrice_example", "notes_example", "orderNumber_example", "originalPdfPath_example", "paidAmount_example", "paymentDueDate_example", PaymentStatus$new(), "paymentTermsText_example", "precedingSalesVoucherId_example", PrecedingSalesVoucherType$new(), "receiptConfirmationAvailable_example", "relatedInvoiceId_example", "relationshipType_example", TODO, "sentAt_example", "servicePeriodEnd_example", "servicePeriodStart_example", "supplierId_example", "taxExemptionReason_example", CountryCode$new(), "vatSpecialCase_example") # InvoiceCreate | 

api_instance <- InvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateInvoice(var_invoice_createdata_file = "result.txt")
result <- api_instance$CreateInvoice(var_invoice_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_create** | [**InvoiceCreate**](InvoiceCreate.md)|  | 

### Return type

[**Invoice**](Invoice.md)

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

# **DeleteInvoice**
> DeleteInvoice(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- InvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteInvoice(var_id)
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
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No Content |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **DownloadInvoicePdf**
> DownloadInvoicePdf(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- InvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DownloadInvoicePdf(var_id)
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
 - **Accept**: application/pdf, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | PDF file |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **GetInvoice**
> Invoice GetInvoice(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- InvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetInvoice(var_iddata_file = "result.txt")
result <- api_instance$GetInvoice(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**Invoice**](Invoice.md)

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

# **GetInvoicePdfUrl**
> InvoicePdfUrlResponse GetInvoicePdfUrl(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- InvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetInvoicePdfUrl(var_iddata_file = "result.txt")
result <- api_instance$GetInvoicePdfUrl(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**InvoicePdfUrlResponse**](InvoicePdfUrlResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Presigned download URL |  -  |
| **404** | Invoice not found |  -  |
| **500** | Storage not configured |  -  |

# **GetInvoices**
> array[Invoice] GetInvoices(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- InvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetInvoices(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetInvoices(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **search** | **character**|  | [optional] 
 **include_deleted** | **character**| Soft-delete entities: set true to include rows with &#x60;deleted_at&#x60; set. | [optional] 

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
| **200** | OK |  -  |
| **500** | Internal server error |  -  |

# **InvoiceRestore**
> Invoice InvoiceRestore(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- InvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$InvoiceRestore(var_iddata_file = "result.txt")
result <- api_instance$InvoiceRestore(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Restored |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **UpdateInvoice**
> Invoice UpdateInvoice(id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- InvoiceApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateInvoice(var_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateInvoice(var_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad request |  -  |
| **404** | Invoice not found |  -  |

