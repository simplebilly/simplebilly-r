# EventSubscriptionApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateEventSubscription**](EventSubscriptionApi.md#CreateEventSubscription) | **POST** /api/v1/event-subscriptions | 
[**DeleteEventSubscription**](EventSubscriptionApi.md#DeleteEventSubscription) | **DELETE** /api/v1/event-subscriptions/{subscription_id} | 
[**ListEventSubscriptions**](EventSubscriptionApi.md#ListEventSubscriptions) | **GET** /api/v1/event-subscriptions/ | 


# **CreateEventSubscription**
> EventSubscription CreateEventSubscription(body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- EventSubscriptionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateEventSubscription(var_bodydata_file = "result.txt")
result <- api_instance$CreateEventSubscription(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**EventSubscription**](EventSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **404** | Connection not found |  -  |
| **500** | Internal server error |  -  |

# **DeleteEventSubscription**
> DeleteEventSubscription(subscription_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_subscription_id <- "subscription_id_example" # character | 

api_instance <- EventSubscriptionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteEventSubscription(var_subscription_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **character**|  | 

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

# **ListEventSubscriptions**
> array[EventSubscription] ListEventSubscriptions()



### Example
```R
library(openapi)


api_instance <- EventSubscriptionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListEventSubscriptions(data_file = "result.txt")
result <- api_instance$ListEventSubscriptions()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[EventSubscription]**](EventSubscription.md)

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

