# SearchApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GlobalSearch**](SearchApi.md#GlobalSearch) | **GET** /api/v1/search | GET /api/v1/search?q&#x3D;...
[**MyPermissions**](SearchApi.md#MyPermissions) | **GET** /api/v1/me/permissions | GET /api/v1/me/permissions — resolved permissions from the auth token, used by the frontend to show/hide admin navigation.


# **GlobalSearch**
> AnyType GlobalSearch(q)

GET /api/v1/search?q=...

### Example
```R
library(openapi)

# GET /api/v1/search?q=...
#
# prepare function argument(s)
var_q <- "q_example" # character | Search text (min 2 chars)

api_instance <- SearchApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GlobalSearch(var_qdata_file = "result.txt")
result <- api_instance$GlobalSearch(var_q)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| Search text (min 2 chars) | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **MyPermissions**
> AnyType MyPermissions()

GET /api/v1/me/permissions — resolved permissions from the auth token, used by the frontend to show/hide admin navigation.

### Example
```R
library(openapi)

# GET /api/v1/me/permissions — resolved permissions from the auth token, used by the frontend to show/hide admin navigation.
#

api_instance <- SearchApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MyPermissions(data_file = "result.txt")
result <- api_instance$MyPermissions()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

