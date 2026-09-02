# ActivityApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateActivity**](ActivityApi.md#CreateActivity) | **POST** /api/v1/activities | 
[**DeleteActivity**](ActivityApi.md#DeleteActivity) | **DELETE** /api/v1/activities/{activity_id} | 
[**GetActivity**](ActivityApi.md#GetActivity) | **GET** /api/v1/activities/{activity_id} | 
[**ListActivities**](ActivityApi.md#ListActivities) | **GET** /api/v1/activities/ | 
[**UpdateActivity**](ActivityApi.md#UpdateActivity) | **PUT** /api/v1/activities/{activity_id} | 
[**UpdateActivityStatus**](ActivityApi.md#UpdateActivityStatus) | **PUT** /api/v1/activities/{activity_id}/status | 


# **CreateActivity**
> Activity CreateActivity(activity)



### Example
```R
library(openapi)

# prepare function argument(s)
var_activity <- Activity$new(ActivityType$new(), ActivityStatus$new(), "subject_example", "assignedTo_example", "contactId_example", "description_example", "dueDate_example", "reminderDate_example") # Activity | 

api_instance <- ActivityApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateActivity(var_activitydata_file = "result.txt")
result <- api_instance$CreateActivity(var_activity)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity** | [**Activity**](Activity.md)|  | 

### Return type

[**Activity**](Activity.md)

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

# **DeleteActivity**
> DeleteActivity(activity_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_activity_id <- "activity_id_example" # character | 

api_instance <- ActivityApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteActivity(var_activity_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_id** | **character**|  | 

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
| **400** | Bad request |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **GetActivity**
> Activity GetActivity(activity_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_activity_id <- "activity_id_example" # character | 

api_instance <- ActivityApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetActivity(var_activity_iddata_file = "result.txt")
result <- api_instance$GetActivity(var_activity_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_id** | **character**|  | 

### Return type

[**Activity**](Activity.md)

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

# **ListActivities**
> array[Activity] ListActivities(page = var.page, page_size = var.page_size, contact_id = var.contact_id, activity_type = var.activity_type, status = var.status, assigned_to = var.assigned_to, overdue_only = var.overdue_only)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_contact_id <- "contact_id_example" # character |  (Optional)
var_activity_type <- "activity_type_example" # character |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_assigned_to <- "assigned_to_example" # character |  (Optional)
var_overdue_only <- "overdue_only_example" # character | Only show overdue follow-ups. (Optional)

api_instance <- ActivityApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListActivities(page = var_page, page_size = var_page_size, contact_id = var_contact_id, activity_type = var_activity_type, status = var_status, assigned_to = var_assigned_to, overdue_only = var_overdue_onlydata_file = "result.txt")
result <- api_instance$ListActivities(page = var_page, page_size = var_page_size, contact_id = var_contact_id, activity_type = var_activity_type, status = var_status, assigned_to = var_assigned_to, overdue_only = var_overdue_only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **contact_id** | **character**|  | [optional] 
 **activity_type** | **character**|  | [optional] 
 **status** | **character**|  | [optional] 
 **assigned_to** | **character**|  | [optional] 
 **overdue_only** | **character**| Only show overdue follow-ups. | [optional] 

### Return type

[**array[Activity]**](Activity.md)

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

# **UpdateActivity**
> Activity UpdateActivity(activity_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_activity_id <- "activity_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- ActivityApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateActivity(var_activity_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateActivity(var_activity_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**Activity**](Activity.md)

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

# **UpdateActivityStatus**
> Activity UpdateActivityStatus(activity_id, activity_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_activity_id <- "activity_id_example" # character | 
var_activity_status_update <- ActivityStatusUpdate$new("status_example") # ActivityStatusUpdate | 

api_instance <- ActivityApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateActivityStatus(var_activity_id, var_activity_status_updatedata_file = "result.txt")
result <- api_instance$UpdateActivityStatus(var_activity_id, var_activity_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_id** | **character**|  | 
 **activity_status_update** | [**ActivityStatusUpdate**](ActivityStatusUpdate.md)|  | 

### Return type

[**Activity**](Activity.md)

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

