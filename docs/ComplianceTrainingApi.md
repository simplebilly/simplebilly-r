# ComplianceTrainingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateComplianceTraining**](ComplianceTrainingApi.md#CreateComplianceTraining) | **POST** /api/v1/compliance-trainings | 
[**DeleteComplianceTraining**](ComplianceTrainingApi.md#DeleteComplianceTraining) | **DELETE** /api/v1/compliance-trainings/{id} | 
[**GetComplianceTraining**](ComplianceTrainingApi.md#GetComplianceTraining) | **GET** /api/v1/compliance-trainings/{id} | 
[**GetComplianceTrainings**](ComplianceTrainingApi.md#GetComplianceTrainings) | **GET** /api/v1/compliance-trainings/ | 
[**UpdateComplianceTraining**](ComplianceTrainingApi.md#UpdateComplianceTraining) | **PUT** /api/v1/compliance-trainings/{id} | 


# **CreateComplianceTraining**
> ComplianceTraining CreateComplianceTraining(compliance_training_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_compliance_training_create <- ComplianceTrainingCreate$new("assignable_example", "code_example", "description_example", 123, "pluginPlatform_example", TrainingSource$new(), "title_example", 123) # ComplianceTrainingCreate | 

api_instance <- ComplianceTrainingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateComplianceTraining(var_compliance_training_createdata_file = "result.txt")
result <- api_instance$CreateComplianceTraining(var_compliance_training_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compliance_training_create** | [**ComplianceTrainingCreate**](ComplianceTrainingCreate.md)|  | 

### Return type

[**ComplianceTraining**](ComplianceTraining.md)

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

# **DeleteComplianceTraining**
> DeleteComplianceTraining(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- ComplianceTrainingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteComplianceTraining(var_id)
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

# **GetComplianceTraining**
> ComplianceTraining GetComplianceTraining(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- ComplianceTrainingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetComplianceTraining(var_iddata_file = "result.txt")
result <- api_instance$GetComplianceTraining(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**ComplianceTraining**](ComplianceTraining.md)

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

# **GetComplianceTrainings**
> array[ComplianceTraining] GetComplianceTrainings(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- ComplianceTrainingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetComplianceTrainings(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetComplianceTrainings(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[ComplianceTraining]**](ComplianceTraining.md)

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

# **UpdateComplianceTraining**
> ComplianceTraining UpdateComplianceTraining(id, compliance_training_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_compliance_training_update <- ComplianceTrainingUpdate$new("assignable_example", "code_example", "description_example", 123, "pluginPlatform_example", TrainingSource$new(), "title_example", 123) # ComplianceTrainingUpdate | 

api_instance <- ComplianceTrainingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateComplianceTraining(var_id, var_compliance_training_updatedata_file = "result.txt")
result <- api_instance$UpdateComplianceTraining(var_id, var_compliance_training_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **compliance_training_update** | [**ComplianceTrainingUpdate**](ComplianceTrainingUpdate.md)|  | 

### Return type

[**ComplianceTraining**](ComplianceTraining.md)

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

