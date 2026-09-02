# RecurringTemplateApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateRecurringTemplate**](RecurringTemplateApi.md#CreateRecurringTemplate) | **POST** /api/v1/recurring-templates | 
[**DeleteRecurringTemplate**](RecurringTemplateApi.md#DeleteRecurringTemplate) | **DELETE** /api/v1/recurring-templates/{template_id} | 
[**GetRecurringTemplate**](RecurringTemplateApi.md#GetRecurringTemplate) | **GET** /api/v1/recurring-templates/{template_id} | 
[**ListRecurringTemplates**](RecurringTemplateApi.md#ListRecurringTemplates) | **GET** /api/v1/recurring-templates/ | 


# **CreateRecurringTemplate**
> RecurringTemplate CreateRecurringTemplate(body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- RecurringTemplateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateRecurringTemplate(var_bodydata_file = "result.txt")
result <- api_instance$CreateRecurringTemplate(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**RecurringTemplate**](RecurringTemplate.md)

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

# **DeleteRecurringTemplate**
> DeleteRecurringTemplate(template_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_template_id <- "template_id_example" # character | 

api_instance <- RecurringTemplateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteRecurringTemplate(var_template_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **character**|  | 

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

# **GetRecurringTemplate**
> RecurringTemplate GetRecurringTemplate(template_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_template_id <- "template_id_example" # character | 

api_instance <- RecurringTemplateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetRecurringTemplate(var_template_iddata_file = "result.txt")
result <- api_instance$GetRecurringTemplate(var_template_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **character**|  | 

### Return type

[**RecurringTemplate**](RecurringTemplate.md)

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

# **ListRecurringTemplates**
> array[RecurringTemplate] ListRecurringTemplates()



### Example
```R
library(openapi)


api_instance <- RecurringTemplateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListRecurringTemplates(data_file = "result.txt")
result <- api_instance$ListRecurringTemplates()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[RecurringTemplate]**](RecurringTemplate.md)

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

