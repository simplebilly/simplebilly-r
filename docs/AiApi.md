# AiApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AiSuggestApi**](AiApi.md#AiSuggestApi) | **POST** /api/v1/support/ai/suggest | 
[**CreateWorkerApi**](AiApi.md#CreateWorkerApi) | **POST** /api/v1/support/ai/workers | 
[**ListWorkersApi**](AiApi.md#ListWorkersApi) | **GET** /api/v1/support/ai/workers | 
[**RunWorkerApi**](AiApi.md#RunWorkerApi) | **POST** /api/v1/support/ai/workers/{worker_id}/run | 


# **AiSuggestApi**
> AiSuggestion AiSuggestApi(ai_suggestion_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_ai_suggestion_request <- AiSuggestionRequest$new("ticket_id_example", "instructions_example", "message_body_example") # AiSuggestionRequest | 

api_instance <- AiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AiSuggestApi(var_ai_suggestion_requestdata_file = "result.txt")
result <- api_instance$AiSuggestApi(var_ai_suggestion_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ai_suggestion_request** | [**AiSuggestionRequest**](AiSuggestionRequest.md)|  | 

### Return type

[**AiSuggestion**](AiSuggestion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | AI suggestion |  -  |
| **500** | AI error |  -  |

# **CreateWorkerApi**
> AiWorkerConfig CreateWorkerApi(ai_config_dto)



### Example
```R
library(openapi)

# prepare function argument(s)
var_ai_config_dto <- AiConfigDto$new("model_example", "name_example", "provider_example", "auto_reply_example", 123, "system_prompt_example", c("trigger_on_example")) # AiConfigDto | 

api_instance <- AiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateWorkerApi(var_ai_config_dtodata_file = "result.txt")
result <- api_instance$CreateWorkerApi(var_ai_config_dto)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ai_config_dto** | [**AiConfigDto**](AiConfigDto.md)|  | 

### Return type

[**AiWorkerConfig**](AiWorkerConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Worker created |  -  |

# **ListWorkersApi**
> array[AiWorkerConfig] ListWorkersApi()



### Example
```R
library(openapi)


api_instance <- AiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListWorkersApi(data_file = "result.txt")
result <- api_instance$ListWorkersApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[AiWorkerConfig]**](AiWorkerConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List AI workers |  -  |

# **RunWorkerApi**
> AiSuggestion RunWorkerApi(worker_id, ai_suggestion_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_worker_id <- "worker_id_example" # character | 
var_ai_suggestion_request <- AiSuggestionRequest$new("ticket_id_example", "instructions_example", "message_body_example") # AiSuggestionRequest | 

api_instance <- AiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RunWorkerApi(var_worker_id, var_ai_suggestion_requestdata_file = "result.txt")
result <- api_instance$RunWorkerApi(var_worker_id, var_ai_suggestion_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **worker_id** | **character**|  | 
 **ai_suggestion_request** | [**AiSuggestionRequest**](AiSuggestionRequest.md)|  | 

### Return type

[**AiSuggestion**](AiSuggestion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Worker executed |  -  |

