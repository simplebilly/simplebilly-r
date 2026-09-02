# WorkflowsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ListWorkflowsApi**](WorkflowsApi.md#ListWorkflowsApi) | **GET** /api/v1/workflows | 
[**SetWorkflowEnabledApi**](WorkflowsApi.md#SetWorkflowEnabledApi) | **PUT** /api/v1/workflows/{workflow_id}/enabled | 


# **ListWorkflowsApi**
> array[Workflow] ListWorkflowsApi()



### Example
```R
library(openapi)


api_instance <- WorkflowsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListWorkflowsApi(data_file = "result.txt")
result <- api_instance$ListWorkflowsApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Workflow]**](Workflow.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workflows (seeded with defaults on first access) |  -  |
| **500** | Internal server error |  -  |

# **SetWorkflowEnabledApi**
> Workflow SetWorkflowEnabledApi(workflow_id, workflow_enabled_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_workflow_id <- "workflow_id_example" # character | 
var_workflow_enabled_update <- WorkflowEnabledUpdate$new("enabled_example") # WorkflowEnabledUpdate | 

api_instance <- WorkflowsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SetWorkflowEnabledApi(var_workflow_id, var_workflow_enabled_updatedata_file = "result.txt")
result <- api_instance$SetWorkflowEnabledApi(var_workflow_id, var_workflow_enabled_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **character**|  | 
 **workflow_enabled_update** | [**WorkflowEnabledUpdate**](WorkflowEnabledUpdate.md)|  | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workflow enabled state updated |  -  |
| **404** | Workflow not found |  -  |
| **500** | Internal server error |  -  |

