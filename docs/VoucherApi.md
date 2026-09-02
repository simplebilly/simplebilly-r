# VoucherApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateVoucher**](VoucherApi.md#CreateVoucher) | **POST** /api/v1/vouchers | 
[**DeleteVoucher**](VoucherApi.md#DeleteVoucher) | **DELETE** /api/v1/vouchers/{voucher_id} | 
[**GetVoucher**](VoucherApi.md#GetVoucher) | **GET** /api/v1/vouchers/{voucher_id} | 
[**ListVouchers**](VoucherApi.md#ListVouchers) | **GET** /api/v1/vouchers/ | 
[**UpdateVoucher**](VoucherApi.md#UpdateVoucher) | **PUT** /api/v1/vouchers/{voucher_id} | 
[**VoucherRestore**](VoucherApi.md#VoucherRestore) | **POST** /api/v1/vouchers/{voucher_id}/restore | 


# **CreateVoucher**
> Voucher CreateVoucher(voucher_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_voucher_create <- VoucherCreate$new("currency_example", "voucherDate_example", VoucherStatus$new(), VoucherType$new(), "categoryId_example", "contactId_example", "contactName_example", "description_example", TODO, TODO, TODO, "notes_example", "openAmount_example", "paidDate_example", PaymentStatus$new(), TODO, "taxCondition_example", "totalGrossAmount_example", "totalNetAmount_example", "voucherNumber_example") # VoucherCreate | 

api_instance <- VoucherApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateVoucher(var_voucher_createdata_file = "result.txt")
result <- api_instance$CreateVoucher(var_voucher_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucher_create** | [**VoucherCreate**](VoucherCreate.md)|  | 

### Return type

[**Voucher**](Voucher.md)

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

# **DeleteVoucher**
> DeleteVoucher(voucher_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_voucher_id <- "voucher_id_example" # character | 

api_instance <- VoucherApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteVoucher(var_voucher_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucher_id** | **character**|  | 

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

# **GetVoucher**
> Voucher GetVoucher(voucher_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_voucher_id <- "voucher_id_example" # character | 

api_instance <- VoucherApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetVoucher(var_voucher_iddata_file = "result.txt")
result <- api_instance$GetVoucher(var_voucher_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucher_id** | **character**|  | 

### Return type

[**Voucher**](Voucher.md)

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

# **ListVouchers**
> array[Voucher] ListVouchers(page = var.page, page_size = var.page_size, voucher_type = var.voucher_type, voucher_status = var.voucher_status, contact_name = var.contact_name, date_from = var.date_from, date_to = var.date_to)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_voucher_type <- "voucher_type_example" # character |  (Optional)
var_voucher_status <- "voucher_status_example" # character |  (Optional)
var_contact_name <- "contact_name_example" # character |  (Optional)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)

api_instance <- VoucherApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListVouchers(page = var_page, page_size = var_page_size, voucher_type = var_voucher_type, voucher_status = var_voucher_status, contact_name = var_contact_name, date_from = var_date_from, date_to = var_date_todata_file = "result.txt")
result <- api_instance$ListVouchers(page = var_page, page_size = var_page_size, voucher_type = var_voucher_type, voucher_status = var_voucher_status, contact_name = var_contact_name, date_from = var_date_from, date_to = var_date_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **voucher_type** | **character**|  | [optional] 
 **voucher_status** | **character**|  | [optional] 
 **contact_name** | **character**|  | [optional] 
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 

### Return type

[**array[Voucher]**](Voucher.md)

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

# **UpdateVoucher**
> Voucher UpdateVoucher(voucher_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_voucher_id <- "voucher_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- VoucherApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateVoucher(var_voucher_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateVoucher(var_voucher_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucher_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**Voucher**](Voucher.md)

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
| **404** | Voucher not found |  -  |
| **500** | Internal server error |  -  |

# **VoucherRestore**
> Voucher VoucherRestore(voucher_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_voucher_id <- "voucher_id_example" # character | 

api_instance <- VoucherApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VoucherRestore(var_voucher_iddata_file = "result.txt")
result <- api_instance$VoucherRestore(var_voucher_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucher_id** | **character**|  | 

### Return type

[**Voucher**](Voucher.md)

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

