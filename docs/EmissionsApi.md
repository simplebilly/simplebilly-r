# EmissionsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateEmissionEntryApi**](EmissionsApi.md#CreateEmissionEntryApi) | **POST** /api/v1/bookkeeping/emissions/entries | 
[**CreateEmissionTargetApi**](EmissionsApi.md#CreateEmissionTargetApi) | **POST** /api/v1/bookkeeping/emissions/targets | 
[**DeleteEmissionEntryApi**](EmissionsApi.md#DeleteEmissionEntryApi) | **DELETE** /api/v1/bookkeeping/emissions/entries/{id} | 
[**DeleteEmissionTargetApi**](EmissionsApi.md#DeleteEmissionTargetApi) | **DELETE** /api/v1/bookkeeping/emissions/targets/{id} | 
[**EmissionsEntriesApi**](EmissionsApi.md#EmissionsEntriesApi) | **GET** /api/v1/bookkeeping/emissions/entries | 
[**EmissionsExportApi**](EmissionsApi.md#EmissionsExportApi) | **GET** /api/v1/bookkeeping/emissions/export | 
[**EmissionsFactorsApi**](EmissionsApi.md#EmissionsFactorsApi) | **GET** /api/v1/bookkeeping/emissions/factors | 
[**EmissionsReportApi**](EmissionsApi.md#EmissionsReportApi) | **GET** /api/v1/bookkeeping/emissions/report | 
[**EmissionsTargetsApi**](EmissionsApi.md#EmissionsTargetsApi) | **GET** /api/v1/bookkeeping/emissions/targets | 


# **CreateEmissionEntryApi**
> EmissionEntry CreateEmissionEntryApi(create_emission_entry)



### Example
```R
library(openapi)

# prepare function argument(s)
var_create_emission_entry <- CreateEmissionEntry$new("activity_value_example", "category_id_example", "description_example", "method_example", "scope_example", "unit_example", 123) # CreateEmissionEntry | 

api_instance <- EmissionsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateEmissionEntryApi(var_create_emission_entrydata_file = "result.txt")
result <- api_instance$CreateEmissionEntryApi(var_create_emission_entry)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_emission_entry** | [**CreateEmissionEntry**](CreateEmissionEntry.md)|  | 

### Return type

[**EmissionEntry**](EmissionEntry.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Emission entry created |  -  |
| **400** | Unknown category/method |  -  |

# **CreateEmissionTargetApi**
> EmissionTarget CreateEmissionTargetApi(create_emission_target)



### Example
```R
library(openapi)

# prepare function argument(s)
var_create_emission_target <- CreateEmissionTarget$new("base_value_example", 123, "description_example", "scope_example", "target_value_example", 123) # CreateEmissionTarget | 

api_instance <- EmissionsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateEmissionTargetApi(var_create_emission_targetdata_file = "result.txt")
result <- api_instance$CreateEmissionTargetApi(var_create_emission_target)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_emission_target** | [**CreateEmissionTarget**](CreateEmissionTarget.md)|  | 

### Return type

[**EmissionTarget**](EmissionTarget.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Emission target created |  -  |
| **400** | Invalid scope |  -  |

# **DeleteEmissionEntryApi**
> DeleteEmissionEntryApi(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- EmissionsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteEmissionEntryApi(var_id)
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
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Emission entry deleted |  -  |
| **404** | Entry not found |  -  |

# **DeleteEmissionTargetApi**
> DeleteEmissionTargetApi(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- EmissionsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteEmissionTargetApi(var_id)
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
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Emission target deleted |  -  |
| **404** | Target not found |  -  |

# **EmissionsEntriesApi**
> array[EmissionEntry] EmissionsEntriesApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- EmissionsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EmissionsEntriesApi(var_yeardata_file = "result.txt")
result <- api_instance$EmissionsEntriesApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**array[EmissionEntry]**](EmissionEntry.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Emission entries for year |  -  |

# **EmissionsExportApi**
> EmissionsExportResponse EmissionsExportApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- EmissionsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EmissionsExportApi(var_yeardata_file = "result.txt")
result <- api_instance$EmissionsExportApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**EmissionsExportResponse**](EmissionsExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Emissions CSV export |  -  |

# **EmissionsFactorsApi**
> array[EmissionFactorResponse] EmissionsFactorsApi()



### Example
```R
library(openapi)


api_instance <- EmissionsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EmissionsFactorsApi(data_file = "result.txt")
result <- api_instance$EmissionsFactorsApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[EmissionFactorResponse]**](EmissionFactorResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Builtin emission factors |  -  |

# **EmissionsReportApi**
> EmissionsReport EmissionsReportApi(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- EmissionsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EmissionsReportApi(var_yeardata_file = "result.txt")
result <- api_instance$EmissionsReportApi(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**EmissionsReport**](EmissionsReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Emissions report |  -  |

# **EmissionsTargetsApi**
> array[EmissionTarget] EmissionsTargetsApi()



### Example
```R
library(openapi)


api_instance <- EmissionsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EmissionsTargetsApi(data_file = "result.txt")
result <- api_instance$EmissionsTargetsApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[EmissionTarget]**](EmissionTarget.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Emission reduction targets (ESRS E1-4) |  -  |

