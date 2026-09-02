# EmailTemplateApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateEmailTemplate**](EmailTemplateApi.md#CreateEmailTemplate) | **POST** /api/v1/email-templates | 
[**DeleteEmailTemplate**](EmailTemplateApi.md#DeleteEmailTemplate) | **DELETE** /api/v1/email-templates/{email_template_id} | 
[**GetEmailTemplate**](EmailTemplateApi.md#GetEmailTemplate) | **GET** /api/v1/email-templates/{email_template_id} | 
[**ListEmailTemplates**](EmailTemplateApi.md#ListEmailTemplates) | **GET** /api/v1/email-templates/ | 
[**RenderEmailTemplate**](EmailTemplateApi.md#RenderEmailTemplate) | **POST** /api/v1/email-templates/{email_template_id}/render | 
[**UpdateEmailTemplate**](EmailTemplateApi.md#UpdateEmailTemplate) | **PUT** /api/v1/email-templates/{email_template_id} | 


# **CreateEmailTemplate**
> EmailTemplate CreateEmailTemplate(email_template_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_email_template_create <- EmailTemplateCreate$new("body_example", "name_example", EmailTemplateStatus$new(), "subject_example", TODO) # EmailTemplateCreate | 

api_instance <- EmailTemplateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateEmailTemplate(var_email_template_createdata_file = "result.txt")
result <- api_instance$CreateEmailTemplate(var_email_template_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_template_create** | [**EmailTemplateCreate**](EmailTemplateCreate.md)|  | 

### Return type

[**EmailTemplate**](EmailTemplate.md)

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

# **DeleteEmailTemplate**
> DeleteEmailTemplate(email_template_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_email_template_id <- "email_template_id_example" # character | 

api_instance <- EmailTemplateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteEmailTemplate(var_email_template_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_template_id** | **character**|  | 

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

# **GetEmailTemplate**
> EmailTemplate GetEmailTemplate(email_template_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_email_template_id <- "email_template_id_example" # character | 

api_instance <- EmailTemplateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetEmailTemplate(var_email_template_iddata_file = "result.txt")
result <- api_instance$GetEmailTemplate(var_email_template_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_template_id** | **character**|  | 

### Return type

[**EmailTemplate**](EmailTemplate.md)

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

# **ListEmailTemplates**
> array[EmailTemplate] ListEmailTemplates(page = var.page, page_size = var.page_size, status = var.status, search = var.search)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_search <- "search_example" # character |  (Optional)

api_instance <- EmailTemplateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListEmailTemplates(page = var_page, page_size = var_page_size, status = var_status, search = var_searchdata_file = "result.txt")
result <- api_instance$ListEmailTemplates(page = var_page, page_size = var_page_size, status = var_status, search = var_search)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **status** | **character**|  | [optional] 
 **search** | **character**|  | [optional] 

### Return type

[**array[EmailTemplate]**](EmailTemplate.md)

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

# **RenderEmailTemplate**
> AnyType RenderEmailTemplate(email_template_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_email_template_id <- "email_template_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- EmailTemplateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RenderEmailTemplate(var_email_template_id, var_bodydata_file = "result.txt")
result <- api_instance$RenderEmailTemplate(var_email_template_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_template_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **UpdateEmailTemplate**
> EmailTemplate UpdateEmailTemplate(email_template_id, email_template_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_email_template_id <- "email_template_id_example" # character | 
var_email_template_update <- EmailTemplateUpdate$new("body_example", "name_example", EmailTemplateStatus$new(), "subject_example", TODO) # EmailTemplateUpdate | 

api_instance <- EmailTemplateApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateEmailTemplate(var_email_template_id, var_email_template_updatedata_file = "result.txt")
result <- api_instance$UpdateEmailTemplate(var_email_template_id, var_email_template_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_template_id** | **character**|  | 
 **email_template_update** | [**EmailTemplateUpdate**](EmailTemplateUpdate.md)|  | 

### Return type

[**EmailTemplate**](EmailTemplate.md)

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

