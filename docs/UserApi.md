# UserApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChangePassword**](UserApi.md#ChangePassword) | **POST** /user/change-password | Change the current user&#39;s password (requires the current password).
[**CreateTeam**](UserApi.md#CreateTeam) | **POST** /user/teams | Create a new team within the current tenant
[**GenerateApiKey**](UserApi.md#GenerateApiKey) | **POST** /user/api-key | Generate a new API key for the current user
[**InviteUser**](UserApi.md#InviteUser) | **POST** /user/invite | Invite a user to the current tenant/organization
[**ListTeams**](UserApi.md#ListTeams) | **GET** /user/teams | List all teams in the current tenant
[**RemoveUserFromOrg**](UserApi.md#RemoveUserFromOrg) | **DELETE** /user/remove | Remove a user from the current organization
[**UpdateProfile**](UserApi.md#UpdateProfile) | **PUT** /user/profile | Update the current user&#39;s profile
[**UserProfile**](UserApi.md#UserProfile) | **GET** /user/profile | Get the current user&#39;s profile
[**UserTenants**](UserApi.md#UserTenants) | **GET** /user/tenants | List all tenants (organizations) the current user belongs to


# **ChangePassword**
> ChangePassword(change_password_request)

Change the current user's password (requires the current password).

### Example
```R
library(openapi)

# Change the current user's password (requires the current password).
#
# prepare function argument(s)
var_change_password_request <- ChangePasswordRequest$new("current_password_example", "new_password_example") # ChangePasswordRequest | 

api_instance <- UserApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ChangePassword(var_change_password_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **change_password_request** | [**ChangePasswordRequest**](ChangePasswordRequest.md)|  | 

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
| **200** | Password changed |  -  |
| **400** | Wrong current password or weak new password |  -  |

# **CreateTeam**
> ApiResponseTeam CreateTeam(team_create)

Create a new team within the current tenant

### Example
```R
library(openapi)

# Create a new team within the current tenant
#
# prepare function argument(s)
var_team_create <- TeamCreate$new("name_example", "description_example", "parentTeamId_example") # TeamCreate | 

api_instance <- UserApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateTeam(var_team_createdata_file = "result.txt")
result <- api_instance$CreateTeam(var_team_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_create** | [**TeamCreate**](TeamCreate.md)|  | 

### Return type

[**ApiResponseTeam**](ApiResponse_Team.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Team created |  -  |

# **GenerateApiKey**
> ApiResponseString GenerateApiKey()

Generate a new API key for the current user

### Example
```R
library(openapi)

# Generate a new API key for the current user
#

api_instance <- UserApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenerateApiKey(data_file = "result.txt")
result <- api_instance$GenerateApiKey()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiResponseString**](ApiResponse_String.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | API key generated |  -  |

# **InviteUser**
> InviteUser(invite_request)

Invite a user to the current tenant/organization

### Example
```R
library(openapi)

# Invite a user to the current tenant/organization
#
# prepare function argument(s)
var_invite_request <- InviteRequest$new("email_example") # InviteRequest | 

api_instance <- UserApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$InviteUser(var_invite_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invite_request** | [**InviteRequest**](InviteRequest.md)|  | 

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
| **200** | Invitation sent |  -  |

# **ListTeams**
> ApiResponseVecTeam ListTeams()

List all teams in the current tenant

### Example
```R
library(openapi)

# List all teams in the current tenant
#

api_instance <- UserApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListTeams(data_file = "result.txt")
result <- api_instance$ListTeams()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiResponseVecTeam**](ApiResponse_Vec_Team.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of teams |  -  |

# **RemoveUserFromOrg**
> RemoveUserFromOrg(remove_user_request)

Remove a user from the current organization

### Example
```R
library(openapi)

# Remove a user from the current organization
#
# prepare function argument(s)
var_remove_user_request <- RemoveUserRequest$new("email_example") # RemoveUserRequest | 

api_instance <- UserApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$RemoveUserFromOrg(var_remove_user_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remove_user_request** | [**RemoveUserRequest**](RemoveUserRequest.md)|  | 

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
| **200** | User removed |  -  |
| **401** | Unauthorized |  -  |

# **UpdateProfile**
> UpdateProfile(update_profile_request)

Update the current user's profile

### Example
```R
library(openapi)

# Update the current user's profile
#
# prepare function argument(s)
var_update_profile_request <- UpdateProfileRequest$new("avatar_url_example", "first_name_example", "last_name_example", "name_example") # UpdateProfileRequest | 

api_instance <- UserApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$UpdateProfile(var_update_profile_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_profile_request** | [**UpdateProfileRequest**](UpdateProfileRequest.md)|  | 

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
| **200** | Profile updated |  -  |

# **UserProfile**
> ApiResponseUserProfile UserProfile()

Get the current user's profile

### Example
```R
library(openapi)

# Get the current user's profile
#

api_instance <- UserApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UserProfile(data_file = "result.txt")
result <- api_instance$UserProfile()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiResponseUserProfile**](ApiResponse_UserProfile.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User profile |  -  |
| **404** | User not found |  -  |

# **UserTenants**
> ApiResponseVecUserTenantInfo UserTenants()

List all tenants (organizations) the current user belongs to

### Example
```R
library(openapi)

# List all tenants (organizations) the current user belongs to
#

api_instance <- UserApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UserTenants(data_file = "result.txt")
result <- api_instance$UserTenants()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiResponseVecUserTenantInfo**](ApiResponse_Vec_UserTenantInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of tenants |  -  |

