# NotificationsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteNotification**](NotificationsApi.md#DeleteNotification) | **DELETE** /api/v1/notifications/{id} | 
[**ListNotifications**](NotificationsApi.md#ListNotifications) | **GET** /api/v1/notifications | 
[**MarkAllRead**](NotificationsApi.md#MarkAllRead) | **PUT** /api/v1/notifications/read-all | 
[**MarkAsRead**](NotificationsApi.md#MarkAsRead) | **PUT** /api/v1/notifications/{id}/read | 
[**UnreadCount**](NotificationsApi.md#UnreadCount) | **GET** /api/v1/notifications/unread-count | 


# **DeleteNotification**
> DeleteNotification(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- NotificationsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteNotification(var_id)
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
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Deleted |  -  |
| **404** | Not found or not owned by caller |  -  |

# **ListNotifications**
> array[NotificationDto] ListNotifications()



### Example
```R
library(openapi)


api_instance <- NotificationsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListNotifications(data_file = "result.txt")
result <- api_instance$ListNotifications()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[NotificationDto]**](NotificationDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Own notifications, newest first |  -  |

# **MarkAllRead**
> integer MarkAllRead()



### Example
```R
library(openapi)


api_instance <- NotificationsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MarkAllRead(data_file = "result.txt")
result <- api_instance$MarkAllRead()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**integer**

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | All own notifications marked as read |  -  |

# **MarkAsRead**
> MarkAsRead(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- NotificationsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$MarkAsRead(var_id)
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
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Marked as read |  -  |
| **404** | Not found or not owned by caller |  -  |

# **UnreadCount**
> integer UnreadCount()



### Example
```R
library(openapi)


api_instance <- NotificationsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UnreadCount(data_file = "result.txt")
result <- api_instance$UnreadCount()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**integer**

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Number of unread notifications |  -  |

