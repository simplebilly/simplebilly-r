# WebhooksApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateSubscription**](WebhooksApi.md#CreateSubscription) | **POST** /api/v1/webhook-subscriptions | Create a webhook subscription (outbound hook).
[**DeleteSubscription**](WebhooksApi.md#DeleteSubscription) | **DELETE** /api/v1/webhook-subscriptions/{subscription_id} | Delete a webhook subscription.
[**EmitApi**](WebhooksApi.md#EmitApi) | **POST** /api/v1/webhooks/emit | Manually fire an event against matching hooks (for testing/flows).
[**ListEvent**](WebhooksApi.md#ListEvent) | **GET** /api/v1/webhook-events | List webhook events (inbound + outbound log).
[**ListSubscriptions**](WebhooksApi.md#ListSubscriptions) | **GET** /api/v1/webhook-subscriptions | List webhook subscriptions for the tenant.
[**UpdateSubscription**](WebhooksApi.md#UpdateSubscription) | **PUT** /api/v1/webhook-subscriptions/{subscription_id} | Update a webhook subscription.


# **CreateSubscription**
> WebhookSubscription CreateSubscription(create_subscription_request)

Create a webhook subscription (outbound hook).

### Example
```R
library(openapi)

# Create a webhook subscription (outbound hook).
#
# prepare function argument(s)
var_create_subscription_request <- CreateSubscriptionRequest$new("event_type_example", "name_example", "url_example", "is_active_example", "secret_example") # CreateSubscriptionRequest | 

api_instance <- WebhooksApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateSubscription(var_create_subscription_requestdata_file = "result.txt")
result <- api_instance$CreateSubscription(var_create_subscription_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_subscription_request** | [**CreateSubscriptionRequest**](CreateSubscriptionRequest.md)|  | 

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |

# **DeleteSubscription**
> DeleteSubscription(subscription_id)

Delete a webhook subscription.

### Example
```R
library(openapi)

# Delete a webhook subscription.
#
# prepare function argument(s)
var_subscription_id <- "subscription_id_example" # character | 

api_instance <- WebhooksApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteSubscription(var_subscription_id)
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
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No Content |  -  |

# **EmitApi**
> EmitApi(emit_event_request)

Manually fire an event against matching hooks (for testing/flows).

### Example
```R
library(openapi)

# Manually fire an event against matching hooks (for testing/flows).
#
# prepare function argument(s)
var_emit_event_request <- EmitEventRequest$new("event_type_example", TODO) # EmitEventRequest | 

api_instance <- WebhooksApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$EmitApi(var_emit_event_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emit_event_request** | [**EmitEventRequest**](EmitEventRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Emitted |  -  |

# **ListEvent**
> array[WebhookEvent] ListEvent()

List webhook events (inbound + outbound log).

### Example
```R
library(openapi)

# List webhook events (inbound + outbound log).
#

api_instance <- WebhooksApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListEvent(data_file = "result.txt")
result <- api_instance$ListEvent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[WebhookEvent]**](WebhookEvent.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListSubscriptions**
> array[WebhookSubscription] ListSubscriptions()

List webhook subscriptions for the tenant.

### Example
```R
library(openapi)

# List webhook subscriptions for the tenant.
#

api_instance <- WebhooksApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListSubscriptions(data_file = "result.txt")
result <- api_instance$ListSubscriptions()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[WebhookSubscription]**](WebhookSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **UpdateSubscription**
> WebhookSubscription UpdateSubscription(subscription_id, update_subscription_request)

Update a webhook subscription.

### Example
```R
library(openapi)

# Update a webhook subscription.
#
# prepare function argument(s)
var_subscription_id <- "subscription_id_example" # character | 
var_update_subscription_request <- UpdateSubscriptionRequest$new("event_type_example", "is_active_example", "name_example", "secret_example", "url_example") # UpdateSubscriptionRequest | 

api_instance <- WebhooksApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateSubscription(var_subscription_id, var_update_subscription_requestdata_file = "result.txt")
result <- api_instance$UpdateSubscription(var_subscription_id, var_update_subscription_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **character**|  | 
 **update_subscription_request** | [**UpdateSubscriptionRequest**](UpdateSubscriptionRequest.md)|  | 

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

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

