# InstituteProfileApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetInstituteProfile**](InstituteProfileApi.md#GetInstituteProfile) | **GET** /api/v1/institute-profile | Current institute profile (created with defaults when missing).
[**UpdateInstituteProfile**](InstituteProfileApi.md#UpdateInstituteProfile) | **PUT** /api/v1/institute-profile | Update the institute profile (institute_type and/or kapitalmarktorientiert).


# **GetInstituteProfile**
> InstituteProfile GetInstituteProfile()

Current institute profile (created with defaults when missing).

### Example
```R
library(openapi)

# Current institute profile (created with defaults when missing).
#

api_instance <- InstituteProfileApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetInstituteProfile(data_file = "result.txt")
result <- api_instance$GetInstituteProfile()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InstituteProfile**](InstituteProfile.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Institute profile |  -  |
| **500** | Internal server error |  -  |

# **UpdateInstituteProfile**
> InstituteProfile UpdateInstituteProfile(institute_profile_update)

Update the institute profile (institute_type and/or kapitalmarktorientiert).

### Example
```R
library(openapi)

# Update the institute profile (institute_type and/or kapitalmarktorientiert).
#
# prepare function argument(s)
var_institute_profile_update <- InstituteProfileUpdate$new("instituteType_example", "kapitalmarktorientiert_example") # InstituteProfileUpdate | 

api_instance <- InstituteProfileApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateInstituteProfile(var_institute_profile_updatedata_file = "result.txt")
result <- api_instance$UpdateInstituteProfile(var_institute_profile_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **institute_profile_update** | [**InstituteProfileUpdate**](InstituteProfileUpdate.md)|  | 

### Return type

[**InstituteProfile**](InstituteProfile.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated institute profile |  -  |
| **400** | Invalid institute_type |  -  |
| **500** | Internal server error |  -  |

