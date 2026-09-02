# TrainingAssignmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateTrainingAssignment**](TrainingAssignmentApi.md#CreateTrainingAssignment) | **POST** /api/v1/training-assignments | 
[**DeleteTrainingAssignment**](TrainingAssignmentApi.md#DeleteTrainingAssignment) | **DELETE** /api/v1/training-assignments/{id} | 
[**GetTrainingAssignment**](TrainingAssignmentApi.md#GetTrainingAssignment) | **GET** /api/v1/training-assignments/{id} | 
[**GetTrainingAssignments**](TrainingAssignmentApi.md#GetTrainingAssignments) | **GET** /api/v1/training-assignments/ | 
[**UpdateTrainingAssignment**](TrainingAssignmentApi.md#UpdateTrainingAssignment) | **PUT** /api/v1/training-assignments/{id} | 


# **CreateTrainingAssignment**
> TrainingAssignment CreateTrainingAssignment(training_assignment_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_training_assignment_create <- TrainingAssignmentCreate$new("assignedBy_example", "dueDate_example", "employeeId_example", "notes_example", AssignmentStatus$new(), "trainingId_example") # TrainingAssignmentCreate | 

api_instance <- TrainingAssignmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateTrainingAssignment(var_training_assignment_createdata_file = "result.txt")
result <- api_instance$CreateTrainingAssignment(var_training_assignment_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **training_assignment_create** | [**TrainingAssignmentCreate**](TrainingAssignmentCreate.md)|  | 

### Return type

[**TrainingAssignment**](TrainingAssignment.md)

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

# **DeleteTrainingAssignment**
> DeleteTrainingAssignment(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- TrainingAssignmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteTrainingAssignment(var_id)
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

# **GetTrainingAssignment**
> TrainingAssignment GetTrainingAssignment(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- TrainingAssignmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTrainingAssignment(var_iddata_file = "result.txt")
result <- api_instance$GetTrainingAssignment(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**TrainingAssignment**](TrainingAssignment.md)

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

# **GetTrainingAssignments**
> array[TrainingAssignment] GetTrainingAssignments(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- TrainingAssignmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTrainingAssignments(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetTrainingAssignments(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[TrainingAssignment]**](TrainingAssignment.md)

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

# **UpdateTrainingAssignment**
> TrainingAssignment UpdateTrainingAssignment(id, training_assignment_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_training_assignment_update <- TrainingAssignmentUpdate$new("assignedBy_example", "dueDate_example", "employeeId_example", "notes_example", AssignmentStatus$new(), "trainingId_example") # TrainingAssignmentUpdate | 

api_instance <- TrainingAssignmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateTrainingAssignment(var_id, var_training_assignment_updatedata_file = "result.txt")
result <- api_instance$UpdateTrainingAssignment(var_id, var_training_assignment_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **training_assignment_update** | [**TrainingAssignmentUpdate**](TrainingAssignmentUpdate.md)|  | 

### Return type

[**TrainingAssignment**](TrainingAssignment.md)

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

