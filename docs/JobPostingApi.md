# JobPostingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateJobPosting**](JobPostingApi.md#CreateJobPosting) | **POST** /api/v1/job-postings | 
[**DeleteJobPosting**](JobPostingApi.md#DeleteJobPosting) | **DELETE** /api/v1/job-postings/{id} | 
[**GetJobPosting**](JobPostingApi.md#GetJobPosting) | **GET** /api/v1/job-postings/{id} | 
[**ListJobPostings**](JobPostingApi.md#ListJobPostings) | **GET** /api/v1/job-postings | 
[**UpdateJobPosting**](JobPostingApi.md#UpdateJobPosting) | **PUT** /api/v1/job-postings/{id} | 


# **CreateJobPosting**
> JobPosting CreateJobPosting(job_posting_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_job_posting_create <- JobPostingCreate$new("description_example", "remote_example", TODO, JobPostingStatus$new(), "title_example", "currency_example", "department_example", EmploymentType$new(), "location_example", "requirements_example", 123, 123) # JobPostingCreate | 

api_instance <- JobPostingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateJobPosting(var_job_posting_createdata_file = "result.txt")
result <- api_instance$CreateJobPosting(var_job_posting_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_posting_create** | [**JobPostingCreate**](JobPostingCreate.md)|  | 

### Return type

[**JobPosting**](JobPosting.md)

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

# **DeleteJobPosting**
> DeleteJobPosting(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- JobPostingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteJobPosting(var_id)
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

# **GetJobPosting**
> JobPosting GetJobPosting(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- JobPostingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJobPosting(var_iddata_file = "result.txt")
result <- api_instance$GetJobPosting(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**JobPosting**](JobPosting.md)

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

# **ListJobPostings**
> array[JobPosting] ListJobPostings(status = var.status, page = var.page, page_size = var.page_size)



### Example
```R
library(openapi)

# prepare function argument(s)
var_status <- "status_example" # character |  (Optional)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)

api_instance <- JobPostingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListJobPostings(status = var_status, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$ListJobPostings(status = var_status, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 

### Return type

[**array[JobPosting]**](JobPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Job postings list |  -  |

# **UpdateJobPosting**
> JobPosting UpdateJobPosting(id, job_posting_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_job_posting_update <- JobPostingUpdate$new("currency_example", "department_example", "description_example", EmploymentType$new(), "location_example", "remote_example", TODO, "requirements_example", 123, 123, JobPostingStatus$new(), "title_example") # JobPostingUpdate | 

api_instance <- JobPostingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateJobPosting(var_id, var_job_posting_updatedata_file = "result.txt")
result <- api_instance$UpdateJobPosting(var_id, var_job_posting_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **job_posting_update** | [**JobPostingUpdate**](JobPostingUpdate.md)|  | 

### Return type

[**JobPosting**](JobPosting.md)

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

