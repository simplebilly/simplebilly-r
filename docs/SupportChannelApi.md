# SupportChannelApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateChannelApi**](SupportChannelApi.md#CreateChannelApi) | **POST** /api/v1/support/channels | 
[**DeleteChannelApi**](SupportChannelApi.md#DeleteChannelApi) | **DELETE** /api/v1/support/channels/{channel_id} | 
[**ListChannelsApi**](SupportChannelApi.md#ListChannelsApi) | **GET** /api/v1/support/channels | 
[**UpdateChannelApi**](SupportChannelApi.md#UpdateChannelApi) | **PUT** /api/v1/support/channels/{channel_id} | 


# **CreateChannelApi**
> SupportChannel CreateChannelApi(create_channel_dto)



### Example
```R
library(openapi)

# prepare function argument(s)
var_create_channel_dto <- CreateChannelDto$new("channel_type_example", TODO, "name_example") # CreateChannelDto | 

api_instance <- SupportChannelApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateChannelApi(var_create_channel_dtodata_file = "result.txt")
result <- api_instance$CreateChannelApi(var_create_channel_dto)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_channel_dto** | [**CreateChannelDto**](CreateChannelDto.md)|  | 

### Return type

[**SupportChannel**](SupportChannel.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Channel created |  -  |

# **DeleteChannelApi**
> DeleteChannelApi(channel_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_channel_id <- "channel_id_example" # character | 

api_instance <- SupportChannelApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteChannelApi(var_channel_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **character**|  | 

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
| **204** | Channel deleted |  -  |

# **ListChannelsApi**
> array[SupportChannel] ListChannelsApi()



### Example
```R
library(openapi)


api_instance <- SupportChannelApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListChannelsApi(data_file = "result.txt")
result <- api_instance$ListChannelsApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[SupportChannel]**](SupportChannel.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of channels |  -  |

# **UpdateChannelApi**
> SupportChannel UpdateChannelApi(channel_id, update_channel_dto)



### Example
```R
library(openapi)

# prepare function argument(s)
var_channel_id <- "channel_id_example" # character | 
var_update_channel_dto <- UpdateChannelDto$new(TODO, "is_active_example", "name_example") # UpdateChannelDto | 

api_instance <- SupportChannelApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateChannelApi(var_channel_id, var_update_channel_dtodata_file = "result.txt")
result <- api_instance$UpdateChannelApi(var_channel_id, var_update_channel_dto)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **character**|  | 
 **update_channel_dto** | [**UpdateChannelDto**](UpdateChannelDto.md)|  | 

### Return type

[**SupportChannel**](SupportChannel.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Channel updated |  -  |

