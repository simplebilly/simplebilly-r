# SupplierConditionApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateSupplierCondition**](SupplierConditionApi.md#CreateSupplierCondition) | **POST** /api/v1/supplier-conditions | 
[**DeleteSupplierCondition**](SupplierConditionApi.md#DeleteSupplierCondition) | **DELETE** /api/v1/supplier-conditions/{supplier_condition_id} | 
[**GetSupplierCondition**](SupplierConditionApi.md#GetSupplierCondition) | **GET** /api/v1/supplier-conditions/{supplier_condition_id} | 
[**ListSupplierConditions**](SupplierConditionApi.md#ListSupplierConditions) | **GET** /api/v1/supplier-conditions/ | 
[**UpdateSupplierCondition**](SupplierConditionApi.md#UpdateSupplierCondition) | **PUT** /api/v1/supplier-conditions/{supplier_condition_id} | 


# **CreateSupplierCondition**
> SupplierCondition CreateSupplierCondition(supplier_condition_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_supplier_condition_create <- SupplierConditionCreate$new("currency_example", "supplierContactId_example", "deliveryTerms_example", "earlyPaymentDiscountPercent_example", "isDefault_example", "minimumOrderValue_example", "notes_example", 123, "paymentTerms_example", "supplierName_example", TODO) # SupplierConditionCreate | 

api_instance <- SupplierConditionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateSupplierCondition(var_supplier_condition_createdata_file = "result.txt")
result <- api_instance$CreateSupplierCondition(var_supplier_condition_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplier_condition_create** | [**SupplierConditionCreate**](SupplierConditionCreate.md)|  | 

### Return type

[**SupplierCondition**](SupplierCondition.md)

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

# **DeleteSupplierCondition**
> DeleteSupplierCondition(supplier_condition_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_supplier_condition_id <- "supplier_condition_id_example" # character | 

api_instance <- SupplierConditionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteSupplierCondition(var_supplier_condition_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplier_condition_id** | **character**|  | 

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

# **GetSupplierCondition**
> SupplierCondition GetSupplierCondition(supplier_condition_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_supplier_condition_id <- "supplier_condition_id_example" # character | 

api_instance <- SupplierConditionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSupplierCondition(var_supplier_condition_iddata_file = "result.txt")
result <- api_instance$GetSupplierCondition(var_supplier_condition_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplier_condition_id** | **character**|  | 

### Return type

[**SupplierCondition**](SupplierCondition.md)

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

# **ListSupplierConditions**
> array[SupplierCondition] ListSupplierConditions(page = var.page, page_size = var.page_size, supplier_contact_id = var.supplier_contact_id, search = var.search)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_supplier_contact_id <- "supplier_contact_id_example" # character |  (Optional)
var_search <- "search_example" # character |  (Optional)

api_instance <- SupplierConditionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListSupplierConditions(page = var_page, page_size = var_page_size, supplier_contact_id = var_supplier_contact_id, search = var_searchdata_file = "result.txt")
result <- api_instance$ListSupplierConditions(page = var_page, page_size = var_page_size, supplier_contact_id = var_supplier_contact_id, search = var_search)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **supplier_contact_id** | **character**|  | [optional] 
 **search** | **character**|  | [optional] 

### Return type

[**array[SupplierCondition]**](SupplierCondition.md)

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

# **UpdateSupplierCondition**
> SupplierCondition UpdateSupplierCondition(supplier_condition_id, supplier_condition_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_supplier_condition_id <- "supplier_condition_id_example" # character | 
var_supplier_condition_update <- SupplierConditionUpdate$new("currency_example", "deliveryTerms_example", "earlyPaymentDiscountPercent_example", "isDefault_example", "minimumOrderValue_example", "notes_example", 123, "paymentTerms_example", "supplierContactId_example", "supplierName_example", TODO) # SupplierConditionUpdate | 

api_instance <- SupplierConditionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateSupplierCondition(var_supplier_condition_id, var_supplier_condition_updatedata_file = "result.txt")
result <- api_instance$UpdateSupplierCondition(var_supplier_condition_id, var_supplier_condition_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplier_condition_id** | **character**|  | 
 **supplier_condition_update** | [**SupplierConditionUpdate**](SupplierConditionUpdate.md)|  | 

### Return type

[**SupplierCondition**](SupplierCondition.md)

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
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

