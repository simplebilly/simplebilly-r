# ServiceJobApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateServiceJob**](ServiceJobApi.md#CreateServiceJob) | **POST** /api/v1/service-jobs | 
[**DeleteServiceJob**](ServiceJobApi.md#DeleteServiceJob) | **DELETE** /api/v1/service-jobs/{id} | 
[**GetServiceJob**](ServiceJobApi.md#GetServiceJob) | **GET** /api/v1/service-jobs/{id} | 
[**GetServiceJobs**](ServiceJobApi.md#GetServiceJobs) | **GET** /api/v1/service-jobs/ | 
[**UpdateServiceJob**](ServiceJobApi.md#UpdateServiceJob) | **PUT** /api/v1/service-jobs/{id} | 


# **CreateServiceJob**
> ServiceJob CreateServiceJob(service_job_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_service_job_create <- ServiceJobCreate$new("address_example", "customerEmail_example", "customerId_example", "customerName_example", "customerPhone_example", "description_example", 123, 123, 123, "notes_example", ServiceJobStatus$new()) # ServiceJobCreate | 

api_instance <- ServiceJobApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateServiceJob(var_service_job_createdata_file = "result.txt")
result <- api_instance$CreateServiceJob(var_service_job_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_job_create** | [**ServiceJobCreate**](ServiceJobCreate.md)|  | 

### Return type

[**ServiceJob**](ServiceJob.md)

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

# **DeleteServiceJob**
> DeleteServiceJob(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- ServiceJobApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteServiceJob(var_id)
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

# **GetServiceJob**
> ServiceJob GetServiceJob(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- ServiceJobApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetServiceJob(var_iddata_file = "result.txt")
result <- api_instance$GetServiceJob(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**ServiceJob**](ServiceJob.md)

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

# **GetServiceJobs**
> array[ServiceJob] GetServiceJobs(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- ServiceJobApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetServiceJobs(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetServiceJobs(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[ServiceJob]**](ServiceJob.md)

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

# **UpdateServiceJob**
> ServiceJob UpdateServiceJob(id, service_job_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_service_job_update <- ServiceJobUpdate$new("address_example", "customerEmail_example", "customerId_example", "customerName_example", "customerPhone_example", "description_example", 123, 123, 123, "notes_example", ServiceJobStatus$new()) # ServiceJobUpdate | 

api_instance <- ServiceJobApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateServiceJob(var_id, var_service_job_updatedata_file = "result.txt")
result <- api_instance$UpdateServiceJob(var_id, var_service_job_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **service_job_update** | [**ServiceJobUpdate**](ServiceJobUpdate.md)|  | 

### Return type

[**ServiceJob**](ServiceJob.md)

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

