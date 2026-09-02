# JobApplicationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApplyPublic**](JobApplicationApi.md#ApplyPublic) | **POST** /api/v1/public/jobs/{posting_id}/apply | 
[**DeleteJobApplication**](JobApplicationApi.md#DeleteJobApplication) | **DELETE** /api/v1/job-applications/{application_id} | 
[**DownloadCv**](JobApplicationApi.md#DownloadCv) | **GET** /api/v1/job-applications/{application_id}/cv | 
[**GetJobApplication**](JobApplicationApi.md#GetJobApplication) | **GET** /api/v1/job-applications/{application_id} | 
[**InboundEmail**](JobApplicationApi.md#InboundEmail) | **POST** /api/v1/public/jobs/inbound-email | Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form with &#x60;from&#x60;, &#x60;subject&#x60;, &#x60;body-plain&#x60; and one or more &#x60;attachment-N&#x60; file fields. The subject may reference a posting as &#x60;[JOB-&lt;posting_id&gt;]&#x60;; without one the application lands in the general inbox.
[**ListJobApplications**](JobApplicationApi.md#ListJobApplications) | **GET** /api/v1/job-applications | 
[**ListPublicPostings**](JobApplicationApi.md#ListPublicPostings) | **GET** /api/v1/public/jobs | 
[**ScoreJobApplication**](JobApplicationApi.md#ScoreJobApplication) | **POST** /api/v1/job-applications/{application_id}/score | 
[**UpdateJobApplicationStatus**](JobApplicationApi.md#UpdateJobApplicationStatus) | **PATCH** /api/v1/job-applications/{application_id}/status | 


# **ApplyPublic**
> ApplyPublic(posting_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_posting_id <- "posting_id_example" # character | 

api_instance <- JobApplicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ApplyPublic(var_posting_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **posting_id** | **character**|  | 

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
| **201** | Application received |  -  |

# **DeleteJobApplication**
> JobApplication DeleteJobApplication(application_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_application_id <- "application_id_example" # character | 

api_instance <- JobApplicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeleteJobApplication(var_application_iddata_file = "result.txt")
result <- api_instance$DeleteJobApplication(var_application_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application_id** | **character**|  | 

### Return type

[**JobApplication**](JobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Soft-deleted |  -  |

# **DownloadCv**
> DownloadCv(application_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_application_id <- "application_id_example" # character | 

api_instance <- JobApplicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DownloadCv(var_application_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application_id** | **character**|  | 

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
| **200** | CV file |  -  |

# **GetJobApplication**
> JobApplication GetJobApplication(application_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_application_id <- "application_id_example" # character | 

api_instance <- JobApplicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJobApplication(var_application_iddata_file = "result.txt")
result <- api_instance$GetJobApplication(var_application_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application_id** | **character**|  | 

### Return type

[**JobApplication**](JobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Application |  -  |

# **InboundEmail**
> InboundEmail()

Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form with `from`, `subject`, `body-plain` and one or more `attachment-N` file fields. The subject may reference a posting as `[JOB-<posting_id>]`; without one the application lands in the general inbox.

### Example
```R
library(openapi)

# Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form with `from`, `subject`, `body-plain` and one or more `attachment-N` file fields. The subject may reference a posting as `[JOB-<posting_id>]`; without one the application lands in the general inbox.
#

api_instance <- JobApplicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$InboundEmail()
```

### Parameters
This endpoint does not need any parameter.

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
| **201** | Application received |  -  |

# **ListJobApplications**
> array[JobApplication] ListJobApplications(posting_id = var.posting_id, status = var.status, page = var.page, page_size = var.page_size)



### Example
```R
library(openapi)

# prepare function argument(s)
var_posting_id <- "posting_id_example" # character |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)

api_instance <- JobApplicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListJobApplications(posting_id = var_posting_id, status = var_status, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$ListJobApplications(posting_id = var_posting_id, status = var_status, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **posting_id** | **character**|  | [optional] 
 **status** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 

### Return type

[**array[JobApplication]**](JobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Applications list |  -  |

# **ListPublicPostings**
> array[PublicPosting] ListPublicPostings()



### Example
```R
library(openapi)


api_instance <- JobApplicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListPublicPostings(data_file = "result.txt")
result <- api_instance$ListPublicPostings()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[PublicPosting]**](PublicPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Published postings |  -  |

# **ScoreJobApplication**
> JobApplication ScoreJobApplication(application_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_application_id <- "application_id_example" # character | 

api_instance <- JobApplicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ScoreJobApplication(var_application_iddata_file = "result.txt")
result <- api_instance$ScoreJobApplication(var_application_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application_id** | **character**|  | 

### Return type

[**JobApplication**](JobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Scored |  -  |

# **UpdateJobApplicationStatus**
> JobApplication UpdateJobApplicationStatus(application_id, application_status_dto)



### Example
```R
library(openapi)

# prepare function argument(s)
var_application_id <- "application_id_example" # character | 
var_application_status_dto <- ApplicationStatusDto$new("status_example", "postingId_example") # ApplicationStatusDto | 

api_instance <- JobApplicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateJobApplicationStatus(var_application_id, var_application_status_dtodata_file = "result.txt")
result <- api_instance$UpdateJobApplicationStatus(var_application_id, var_application_status_dto)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application_id** | **character**|  | 
 **application_status_dto** | [**ApplicationStatusDto**](ApplicationStatusDto.md)|  | 

### Return type

[**JobApplication**](JobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated |  -  |

