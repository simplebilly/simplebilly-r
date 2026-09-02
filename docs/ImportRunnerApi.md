# ImportRunnerApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetImportStatus**](ImportRunnerApi.md#GetImportStatus) | **GET** /api/v1/import/{job_id} | 
[**StartImport**](ImportRunnerApi.md#StartImport) | **POST** /api/v1/import/start | 
[**TestImportConnection**](ImportRunnerApi.md#TestImportConnection) | **POST** /api/v1/import/test | 


# **GetImportStatus**
> ImportJobStatus GetImportStatus(job_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_job_id <- "job_id_example" # character | 

api_instance <- ImportRunnerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetImportStatus(var_job_iddata_file = "result.txt")
result <- api_instance$GetImportStatus(var_job_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **character**|  | 

### Return type

[**ImportJobStatus**](ImportJobStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Import job status |  -  |
| **404** | Job not found |  -  |

# **StartImport**
> ImportStartResponse StartImport(import_start_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_import_start_request <- ImportStartRequest$new("apiKey_example", "provider_example", c(123)) # ImportStartRequest | 

api_instance <- ImportRunnerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$StartImport(var_import_start_requestdata_file = "result.txt")
result <- api_instance$StartImport(var_import_start_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_start_request** | [**ImportStartRequest**](ImportStartRequest.md)|  | 

### Return type

[**ImportStartResponse**](ImportStartResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Import job queued |  -  |
| **400** | Bad request |  -  |

# **TestImportConnection**
> ImportTestResponse TestImportConnection(import_test_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_import_test_request <- ImportTestRequest$new("apiKey_example", "provider_example") # ImportTestRequest | 

api_instance <- ImportRunnerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TestImportConnection(var_import_test_requestdata_file = "result.txt")
result <- api_instance$TestImportConnection(var_import_test_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_test_request** | [**ImportTestRequest**](ImportTestRequest.md)|  | 

### Return type

[**ImportTestResponse**](ImportTestResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Connection test result |  -  |
| **400** | Bad request |  -  |

