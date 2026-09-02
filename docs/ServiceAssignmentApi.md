# ServiceAssignmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateServiceAssignment**](ServiceAssignmentApi.md#CreateServiceAssignment) | **POST** /api/v1/service-assignments | 
[**DeleteServiceAssignment**](ServiceAssignmentApi.md#DeleteServiceAssignment) | **DELETE** /api/v1/service-assignments/{id} | 
[**GetServiceAssignment**](ServiceAssignmentApi.md#GetServiceAssignment) | **GET** /api/v1/service-assignments/{id} | 
[**GetServiceAssignments**](ServiceAssignmentApi.md#GetServiceAssignments) | **GET** /api/v1/service-assignments/ | 
[**UpdateServiceAssignment**](ServiceAssignmentApi.md#UpdateServiceAssignment) | **PUT** /api/v1/service-assignments/{id} | 


# **CreateServiceAssignment**
> ServiceAssignment CreateServiceAssignment(service_assignment_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_service_assignment_create <- ServiceAssignmentCreate$new("employeeId_example", "jobId_example", "notes_example", "scheduledDate_example", "scheduledEnd_example", "scheduledStart_example", ServiceAssignmentStatus$new()) # ServiceAssignmentCreate | 

api_instance <- ServiceAssignmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateServiceAssignment(var_service_assignment_createdata_file = "result.txt")
result <- api_instance$CreateServiceAssignment(var_service_assignment_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_assignment_create** | [**ServiceAssignmentCreate**](ServiceAssignmentCreate.md)|  | 

### Return type

[**ServiceAssignment**](ServiceAssignment.md)

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

# **DeleteServiceAssignment**
> DeleteServiceAssignment(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- ServiceAssignmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteServiceAssignment(var_id)
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

# **GetServiceAssignment**
> ServiceAssignment GetServiceAssignment(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- ServiceAssignmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetServiceAssignment(var_iddata_file = "result.txt")
result <- api_instance$GetServiceAssignment(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**ServiceAssignment**](ServiceAssignment.md)

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

# **GetServiceAssignments**
> array[ServiceAssignment] GetServiceAssignments(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- ServiceAssignmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetServiceAssignments(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetServiceAssignments(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[ServiceAssignment]**](ServiceAssignment.md)

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

# **UpdateServiceAssignment**
> ServiceAssignment UpdateServiceAssignment(id, service_assignment_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_service_assignment_update <- ServiceAssignmentUpdate$new("employeeId_example", "jobId_example", "notes_example", "scheduledDate_example", "scheduledEnd_example", "scheduledStart_example", ServiceAssignmentStatus$new()) # ServiceAssignmentUpdate | 

api_instance <- ServiceAssignmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateServiceAssignment(var_id, var_service_assignment_updatedata_file = "result.txt")
result <- api_instance$UpdateServiceAssignment(var_id, var_service_assignment_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **service_assignment_update** | [**ServiceAssignmentUpdate**](ServiceAssignmentUpdate.md)|  | 

### Return type

[**ServiceAssignment**](ServiceAssignment.md)

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

