# AutomationsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ListAutomations**](AutomationsApi.md#ListAutomations) | **GET** /api/v1/automations | 
[**TriggerAutomation**](AutomationsApi.md#TriggerAutomation) | **POST** /api/v1/automations/{key}/trigger | 
[**UpdateAutomation**](AutomationsApi.md#UpdateAutomation) | **PUT** /api/v1/automations/{key} | 


# **ListAutomations**
> array[AutomationDto] ListAutomations()



### Example
```R
library(openapi)


api_instance <- AutomationsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListAutomations(data_file = "result.txt")
result <- api_instance$ListAutomations()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[AutomationDto]**](AutomationDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **TriggerAutomation**
> object TriggerAutomation(key)



### Example
```R
library(openapi)

# prepare function argument(s)
var_key <- "key_example" # character | 

api_instance <- AutomationsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TriggerAutomation(var_keydata_file = "result.txt")
result <- api_instance$TriggerAutomation(var_key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **character**|  | 

### Return type

**object**

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **UpdateAutomation**
> AutomationDto UpdateAutomation(key, update_automation)



### Example
```R
library(openapi)

# prepare function argument(s)
var_key <- "key_example" # character | 
var_update_automation <- UpdateAutomation$new(TODO, "enabled_example") # UpdateAutomation | 

api_instance <- AutomationsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateAutomation(var_key, var_update_automationdata_file = "result.txt")
result <- api_instance$UpdateAutomation(var_key, var_update_automation)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **character**|  | 
 **update_automation** | [**UpdateAutomation**](UpdateAutomation.md)|  | 

### Return type

[**AutomationDto**](AutomationDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

