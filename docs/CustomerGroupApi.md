# CustomerGroupApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddGroupMembers**](CustomerGroupApi.md#AddGroupMembers) | **POST** /api/v1/customer-groups/{customer_group_id}/members | 
[**CreateCustomerGroup**](CustomerGroupApi.md#CreateCustomerGroup) | **POST** /api/v1/customer-groups | 
[**DeleteCustomerGroup**](CustomerGroupApi.md#DeleteCustomerGroup) | **DELETE** /api/v1/customer-groups/{customer_group_id} | 
[**GetCustomerGroup**](CustomerGroupApi.md#GetCustomerGroup) | **GET** /api/v1/customer-groups/{customer_group_id} | 
[**ListCustomerGroups**](CustomerGroupApi.md#ListCustomerGroups) | **GET** /api/v1/customer-groups/ | 
[**UpdateCustomerGroup**](CustomerGroupApi.md#UpdateCustomerGroup) | **PUT** /api/v1/customer-groups/{customer_group_id} | 


# **AddGroupMembers**
> CustomerGroup AddGroupMembers(customer_group_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_group_id <- "customer_group_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- CustomerGroupApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddGroupMembers(var_customer_group_id, var_bodydata_file = "result.txt")
result <- api_instance$AddGroupMembers(var_customer_group_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_group_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**CustomerGroup**](CustomerGroup.md)

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

# **CreateCustomerGroup**
> CustomerGroup CreateCustomerGroup(customer_group_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_group_create <- CustomerGroupCreate$new("name_example", "description_example", c("memberIds_example"), "membershipFilter_example") # CustomerGroupCreate | 

api_instance <- CustomerGroupApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateCustomerGroup(var_customer_group_createdata_file = "result.txt")
result <- api_instance$CreateCustomerGroup(var_customer_group_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_group_create** | [**CustomerGroupCreate**](CustomerGroupCreate.md)|  | 

### Return type

[**CustomerGroup**](CustomerGroup.md)

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

# **DeleteCustomerGroup**
> DeleteCustomerGroup(customer_group_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_group_id <- "customer_group_id_example" # character | 

api_instance <- CustomerGroupApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteCustomerGroup(var_customer_group_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_group_id** | **character**|  | 

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

# **GetCustomerGroup**
> CustomerGroup GetCustomerGroup(customer_group_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_group_id <- "customer_group_id_example" # character | 

api_instance <- CustomerGroupApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCustomerGroup(var_customer_group_iddata_file = "result.txt")
result <- api_instance$GetCustomerGroup(var_customer_group_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_group_id** | **character**|  | 

### Return type

[**CustomerGroup**](CustomerGroup.md)

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

# **ListCustomerGroups**
> array[CustomerGroup] ListCustomerGroups(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- CustomerGroupApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListCustomerGroups(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$ListCustomerGroups(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[CustomerGroup]**](CustomerGroup.md)

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

# **UpdateCustomerGroup**
> CustomerGroup UpdateCustomerGroup(customer_group_id, customer_group_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_group_id <- "customer_group_id_example" # character | 
var_customer_group_update <- CustomerGroupUpdate$new("description_example", c("memberIds_example"), "membershipFilter_example", "name_example") # CustomerGroupUpdate | 

api_instance <- CustomerGroupApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateCustomerGroup(var_customer_group_id, var_customer_group_updatedata_file = "result.txt")
result <- api_instance$UpdateCustomerGroup(var_customer_group_id, var_customer_group_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_group_id** | **character**|  | 
 **customer_group_update** | [**CustomerGroupUpdate**](CustomerGroupUpdate.md)|  | 

### Return type

[**CustomerGroup**](CustomerGroup.md)

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

