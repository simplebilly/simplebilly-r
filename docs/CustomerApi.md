# CustomerApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateCustomer**](CustomerApi.md#CreateCustomer) | **POST** /api/v1/customers | 
[**CustomerRestore**](CustomerApi.md#CustomerRestore) | **POST** /api/v1/customers/{customer_id}/restore | 
[**DeleteCustomer**](CustomerApi.md#DeleteCustomer) | **DELETE** /api/v1/customers/{customer_id} | 
[**GetCustomer**](CustomerApi.md#GetCustomer) | **GET** /api/v1/customers/{customer_id} | 
[**GetCustomers**](CustomerApi.md#GetCustomers) | **GET** /api/v1/customers/ | 
[**UpdateCustomer**](CustomerApi.md#UpdateCustomer) | **PUT** /api/v1/customers/{customer_id} | 


# **CreateCustomer**
> Customer CreateCustomer(customer_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_create <- CustomerCreate$new("name_example", TODO, "contactPerson_example", "email_example", "externalOrderNumber_example", 123, "phone_example", "vatId_example") # CustomerCreate | 

api_instance <- CustomerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateCustomer(var_customer_createdata_file = "result.txt")
result <- api_instance$CreateCustomer(var_customer_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_create** | [**CustomerCreate**](CustomerCreate.md)|  | 

### Return type

[**Customer**](Customer.md)

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

# **CustomerRestore**
> Customer CustomerRestore(customer_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_id <- "customer_id_example" # character | 

api_instance <- CustomerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CustomerRestore(var_customer_iddata_file = "result.txt")
result <- api_instance$CustomerRestore(var_customer_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **character**|  | 

### Return type

[**Customer**](Customer.md)

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

# **DeleteCustomer**
> DeleteCustomer(customer_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_id <- "customer_id_example" # character | 

api_instance <- CustomerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteCustomer(var_customer_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **character**|  | 

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

# **GetCustomer**
> Customer GetCustomer(customer_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_id <- "customer_id_example" # character | 

api_instance <- CustomerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCustomer(var_customer_iddata_file = "result.txt")
result <- api_instance$GetCustomer(var_customer_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **character**|  | 

### Return type

[**Customer**](Customer.md)

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

# **GetCustomers**
> array[Customer] GetCustomers(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- CustomerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCustomers(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetCustomers(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[Customer]**](Customer.md)

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

# **UpdateCustomer**
> Customer UpdateCustomer(customer_id, customer_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_id <- "customer_id_example" # character | 
var_customer_update <- CustomerUpdate$new(TODO, "contactPerson_example", "email_example", "externalOrderNumber_example", "name_example", 123, "phone_example", "vatId_example") # CustomerUpdate | 

api_instance <- CustomerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateCustomer(var_customer_id, var_customer_updatedata_file = "result.txt")
result <- api_instance$UpdateCustomer(var_customer_id, var_customer_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **character**|  | 
 **customer_update** | [**CustomerUpdate**](CustomerUpdate.md)|  | 

### Return type

[**Customer**](Customer.md)

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

