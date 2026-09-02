# MarketplaceApiApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateConnectionApi**](MarketplaceApiApi.md#CreateConnectionApi) | **POST** /api/v1/marketplace/connections | Create a new connection (for API-key based platforms)
[**DeleteConnectionApi**](MarketplaceApiApi.md#DeleteConnectionApi) | **DELETE** /api/v1/marketplace/connections/{connection_id} | Soft-delete a connection
[**GetConnectionApi**](MarketplaceApiApi.md#GetConnectionApi) | **GET** /api/v1/marketplace/connections/{connection_id} | Get a single connection
[**GetSyncDirectionApi**](MarketplaceApiApi.md#GetSyncDirectionApi) | **GET** /api/v1/marketplace/connections/{connection_id}/directions | Get current sync direction configuration for a connection
[**GetSyncLogsApi**](MarketplaceApiApi.md#GetSyncLogsApi) | **GET** /api/v1/marketplace/connections/{connection_id}/logs | Get sync logs for a connection
[**ListConnectionsApi**](MarketplaceApiApi.md#ListConnectionsApi) | **GET** /api/v1/marketplace/connections | List connections for the current tenant
[**ListPlatformsApi**](MarketplaceApiApi.md#ListPlatformsApi) | **GET** /api/v1/marketplace/platforms | List all supported platforms
[**OauthAuthorizeApi**](MarketplaceApiApi.md#OauthAuthorizeApi) | **POST** /api/v1/marketplace/oauth/authorize | OAuth: initiate authorization flow
[**OauthCallbackApi**](MarketplaceApiApi.md#OauthCallbackApi) | **POST** /api/v1/marketplace/oauth/callback | OAuth: handle callback after authorization
[**TriggerSyncApi**](MarketplaceApiApi.md#TriggerSyncApi) | **POST** /api/v1/marketplace/connections/{connection_id}/sync | Trigger sync for a connection
[**UpdateConnectionApi**](MarketplaceApiApi.md#UpdateConnectionApi) | **PUT** /api/v1/marketplace/connections/{connection_id} | Update a connection
[**UpdateSyncDirectionApi**](MarketplaceApiApi.md#UpdateSyncDirectionApi) | **PUT** /api/v1/marketplace/connections/{connection_id}/directions | Update per-entity sync direction configuration for a connection
[**WebhookReceiverApi**](MarketplaceApiApi.md#WebhookReceiverApi) | **POST** /api/v1/marketplace/webhook/{platform}/{connection_id} | Webhook receiver


# **CreateConnectionApi**
> MarketplaceConnection CreateConnectionApi(create_connection_request)

Create a new connection (for API-key based platforms)

### Example
```R
library(openapi)

# Create a new connection (for API-key based platforms)
#
# prepare function argument(s)
var_create_connection_request <- CreateConnectionRequest$new("label_example", "platform_example", "api_key_example", "api_secret_example", TODO, "shop_domain_example") # CreateConnectionRequest | 

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateConnectionApi(var_create_connection_requestdata_file = "result.txt")
result <- api_instance$CreateConnectionApi(var_create_connection_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_connection_request** | [**CreateConnectionRequest**](CreateConnectionRequest.md)|  | 

### Return type

[**MarketplaceConnection**](MarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |

# **DeleteConnectionApi**
> DeleteConnectionApi(connection_id)

Soft-delete a connection

### Example
```R
library(openapi)

# Soft-delete a connection
#
# prepare function argument(s)
var_connection_id <- "connection_id_example" # character | 

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteConnectionApi(var_connection_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_id** | **character**|  | 

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
| **204** | Deleted |  -  |

# **GetConnectionApi**
> MarketplaceConnection GetConnectionApi(connection_id)

Get a single connection

### Example
```R
library(openapi)

# Get a single connection
#
# prepare function argument(s)
var_connection_id <- "connection_id_example" # character | 

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetConnectionApi(var_connection_iddata_file = "result.txt")
result <- api_instance$GetConnectionApi(var_connection_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_id** | **character**|  | 

### Return type

[**MarketplaceConnection**](MarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Connection details |  -  |

# **GetSyncDirectionApi**
> GetSyncDirectionApi(connection_id)

Get current sync direction configuration for a connection

### Example
```R
library(openapi)

# Get current sync direction configuration for a connection
#
# prepare function argument(s)
var_connection_id <- "connection_id_example" # character | 

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetSyncDirectionApi(var_connection_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_id** | **character**|  | 

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
| **200** | Current sync directions |  -  |

# **GetSyncLogsApi**
> array[SyncLog] GetSyncLogsApi(connection_id)

Get sync logs for a connection

### Example
```R
library(openapi)

# Get sync logs for a connection
#
# prepare function argument(s)
var_connection_id <- "connection_id_example" # character | 

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSyncLogsApi(var_connection_iddata_file = "result.txt")
result <- api_instance$GetSyncLogsApi(var_connection_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_id** | **character**|  | 

### Return type

[**array[SyncLog]**](SyncLog.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sync logs |  -  |

# **ListConnectionsApi**
> array[MarketplaceConnection] ListConnectionsApi()

List connections for the current tenant

### Example
```R
library(openapi)

# List connections for the current tenant
#

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListConnectionsApi(data_file = "result.txt")
result <- api_instance$ListConnectionsApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[MarketplaceConnection]**](MarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of connections |  -  |

# **ListPlatformsApi**
> array[PlatformInfo] ListPlatformsApi()

List all supported platforms

### Example
```R
library(openapi)

# List all supported platforms
#

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListPlatformsApi(data_file = "result.txt")
result <- api_instance$ListPlatformsApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[PlatformInfo]**](PlatformInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Supported platforms |  -  |

# **OauthAuthorizeApi**
> OAuthAuthorizeResponse OauthAuthorizeApi(o_auth_authorize_request)

OAuth: initiate authorization flow

### Example
```R
library(openapi)

# OAuth: initiate authorization flow
#
# prepare function argument(s)
var_o_auth_authorize_request <- OAuthAuthorizeRequest$new("platform_example", "redirect_uri_example", TODO) # OAuthAuthorizeRequest | 

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OauthAuthorizeApi(var_o_auth_authorize_requestdata_file = "result.txt")
result <- api_instance$OauthAuthorizeApi(var_o_auth_authorize_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **o_auth_authorize_request** | [**OAuthAuthorizeRequest**](OAuthAuthorizeRequest.md)|  | 

### Return type

[**OAuthAuthorizeResponse**](OAuthAuthorizeResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authorization URL |  -  |

# **OauthCallbackApi**
> MarketplaceConnection OauthCallbackApi(o_auth_callback_request)

OAuth: handle callback after authorization

### Example
```R
library(openapi)

# OAuth: handle callback after authorization
#
# prepare function argument(s)
var_o_auth_callback_request <- OAuthCallbackRequest$new("code_example", "platform_example", "state_example", TODO, "connection_id_example", "shop_domain_example") # OAuthCallbackRequest | 

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OauthCallbackApi(var_o_auth_callback_requestdata_file = "result.txt")
result <- api_instance$OauthCallbackApi(var_o_auth_callback_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **o_auth_callback_request** | [**OAuthCallbackRequest**](OAuthCallbackRequest.md)|  | 

### Return type

[**MarketplaceConnection**](MarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Connection created/updated |  -  |

# **TriggerSyncApi**
> SyncSummary TriggerSyncApi(connection_id, sync_type = var.sync_type, direction = var.direction)

Trigger sync for a connection

### Example
```R
library(openapi)

# Trigger sync for a connection
#
# prepare function argument(s)
var_connection_id <- "connection_id_example" # character | 
var_sync_type <- "sync_type_example" # character |  (Optional)
var_direction <- "direction_example" # character |  (Optional)

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TriggerSyncApi(var_connection_id, sync_type = var_sync_type, direction = var_directiondata_file = "result.txt")
result <- api_instance$TriggerSyncApi(var_connection_id, sync_type = var_sync_type, direction = var_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_id** | **character**|  | 
 **sync_type** | **character**|  | [optional] 
 **direction** | **character**|  | [optional] 

### Return type

[**SyncSummary**](SyncSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sync triggered |  -  |

# **UpdateConnectionApi**
> MarketplaceConnection UpdateConnectionApi(connection_id, update_connection_request)

Update a connection

### Example
```R
library(openapi)

# Update a connection
#
# prepare function argument(s)
var_connection_id <- "connection_id_example" # character | 
var_update_connection_request <- UpdateConnectionRequest$new("api_key_example", "api_secret_example", TODO, "is_active_example", "label_example", "shop_domain_example") # UpdateConnectionRequest | 

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateConnectionApi(var_connection_id, var_update_connection_requestdata_file = "result.txt")
result <- api_instance$UpdateConnectionApi(var_connection_id, var_update_connection_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_id** | **character**|  | 
 **update_connection_request** | [**UpdateConnectionRequest**](UpdateConnectionRequest.md)|  | 

### Return type

[**MarketplaceConnection**](MarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated |  -  |

# **UpdateSyncDirectionApi**
> UpdateSyncDirectionApi(connection_id, update_sync_direction_request)

Update per-entity sync direction configuration for a connection

### Example
```R
library(openapi)

# Update per-entity sync direction configuration for a connection
#
# prepare function argument(s)
var_connection_id <- "connection_id_example" # character | 
var_update_sync_direction_request <- UpdateSyncDirectionRequest$new(c(key = "inner_example")) # UpdateSyncDirectionRequest | 

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$UpdateSyncDirectionApi(var_connection_id, var_update_sync_direction_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_id** | **character**|  | 
 **update_sync_direction_request** | [**UpdateSyncDirectionRequest**](UpdateSyncDirectionRequest.md)|  | 

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
| **200** | Sync directions updated |  -  |

# **WebhookReceiverApi**
> WebhookReceiverApi(platform, connection_id)

Webhook receiver

### Example
```R
library(openapi)

# Webhook receiver
#
# prepare function argument(s)
var_platform <- "platform_example" # character | 
var_connection_id <- "connection_id_example" # character | 

api_instance <- MarketplaceApiApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$WebhookReceiverApi(var_platform, var_connection_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **character**|  | 
 **connection_id** | **character**|  | 

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
| **200** | Webhook received |  -  |
| **401** | Invalid signature |  -  |

