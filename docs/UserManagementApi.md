# UserManagementApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetUser**](UserManagementApi.md#GetUser) | **GET** /api/v1/users/{user_id} | 
[**ListUsers**](UserManagementApi.md#ListUsers) | **GET** /api/v1/users | 
[**RemoveUser**](UserManagementApi.md#RemoveUser) | **DELETE** /api/v1/users/{user_id} | 
[**UpdateUserPermissions**](UserManagementApi.md#UpdateUserPermissions) | **PUT** /api/v1/users/{user_id}/permissions | 
[**UpdateUserRole**](UserManagementApi.md#UpdateUserRole) | **PUT** /api/v1/users/{user_id}/role | 


# **GetUser**
> TenantUser GetUser(user_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_user_id <- "user_id_example" # character | 

api_instance <- UserManagementApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetUser(var_user_iddata_file = "result.txt")
result <- api_instance$GetUser(var_user_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **character**|  | 

### Return type

[**TenantUser**](TenantUser.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **403** | Forbidden |  -  |
| **404** | Not found |  -  |

# **ListUsers**
> array[TenantUser] ListUsers()



### Example
```R
library(openapi)


api_instance <- UserManagementApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListUsers(data_file = "result.txt")
result <- api_instance$ListUsers()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[TenantUser]**](TenantUser.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **403** | Forbidden |  -  |

# **RemoveUser**
> RemoveUser(user_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_user_id <- "user_id_example" # character | 

api_instance <- UserManagementApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$RemoveUser(var_user_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **character**|  | 

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
| **403** | Forbidden |  -  |

# **UpdateUserPermissions**
> UpdateUserPermissions(user_id, update_permissions_payload)



### Example
```R
library(openapi)

# prepare function argument(s)
var_user_id <- "user_id_example" # character | 
var_update_permissions_payload <- UpdatePermissionsPayload$new(c("permissions_example")) # UpdatePermissionsPayload | 

api_instance <- UserManagementApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$UpdateUserPermissions(var_user_id, var_update_permissions_payload)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **character**|  | 
 **update_permissions_payload** | [**UpdatePermissionsPayload**](UpdatePermissionsPayload.md)|  | 

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
| **200** | OK |  -  |
| **403** | Forbidden |  -  |

# **UpdateUserRole**
> UpdateUserRole(user_id, update_role_payload)



### Example
```R
library(openapi)

# prepare function argument(s)
var_user_id <- "user_id_example" # character | 
var_update_role_payload <- UpdateRolePayload$new("role_example", "sync_permissions_example") # UpdateRolePayload | 

api_instance <- UserManagementApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$UpdateUserRole(var_user_id, var_update_role_payload)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **character**|  | 
 **update_role_payload** | [**UpdateRolePayload**](UpdateRolePayload.md)|  | 

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
| **200** | OK |  -  |
| **403** | Forbidden |  -  |

