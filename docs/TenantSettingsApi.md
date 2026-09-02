# TenantSettingsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetTenantSettings**](TenantSettingsApi.md#GetTenantSettings) | **GET** /api/v1/settings/tenant | 
[**UpdateTenantSettings**](TenantSettingsApi.md#UpdateTenantSettings) | **PUT** /api/v1/settings/tenant | 


# **GetTenantSettings**
> TenantSettings GetTenantSettings()



### Example
```R
library(openapi)


api_instance <- TenantSettingsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTenantSettings(data_file = "result.txt")
result <- api_instance$GetTenantSettings()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantSettings**](TenantSettings.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tenant settings |  -  |
| **500** | Internal server error |  -  |

# **UpdateTenantSettings**
> TenantSettings UpdateTenantSettings(update_tenant_settings)



### Example
```R
library(openapi)

# prepare function argument(s)
var_update_tenant_settings <- UpdateTenantSettings$new(CompanyType$new(), PartialFeatureSettings$new("onlineshop_example", "reportBilanz_example", "reportBwa_example", "reportEuer_example", "reportGewerbesteuer_example", "reportGuv_example", "reportKst_example", "reportUstva_example")) # UpdateTenantSettings | 

api_instance <- TenantSettingsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateTenantSettings(var_update_tenant_settingsdata_file = "result.txt")
result <- api_instance$UpdateTenantSettings(var_update_tenant_settings)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_tenant_settings** | [**UpdateTenantSettings**](UpdateTenantSettings.md)|  | 

### Return type

[**TenantSettings**](TenantSettings.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated tenant settings |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

