# GroupFigureApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateGroupFigure**](GroupFigureApi.md#CreateGroupFigure) | **POST** /api/v1/group-figures | 
[**DeleteGroupFigure**](GroupFigureApi.md#DeleteGroupFigure) | **DELETE** /api/v1/group-figures/{year} | 
[**GetGroupFigure**](GroupFigureApi.md#GetGroupFigure) | **GET** /api/v1/group-figures/{year} | 
[**GetGroupFigures**](GroupFigureApi.md#GetGroupFigures) | **GET** /api/v1/group-figures/ | 
[**UpdateGroupFigure**](GroupFigureApi.md#UpdateGroupFigure) | **PUT** /api/v1/group-figures/{year} | 


# **CreateGroupFigure**
> GroupFigure CreateGroupFigure(group_figure_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_group_figure_create <- GroupFigureCreate$new("bilanzsumme_example", "exemptionClaimed_example", 123, "nettoUmsatz_example", "parentName_example", "parentSitus_example") # GroupFigureCreate | 

api_instance <- GroupFigureApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateGroupFigure(var_group_figure_createdata_file = "result.txt")
result <- api_instance$CreateGroupFigure(var_group_figure_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_figure_create** | [**GroupFigureCreate**](GroupFigureCreate.md)|  | 

### Return type

[**GroupFigure**](GroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **DeleteGroupFigure**
> DeleteGroupFigure(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- GroupFigureApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteGroupFigure(var_year)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

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

# **GetGroupFigure**
> GroupFigure GetGroupFigure(year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 

api_instance <- GroupFigureApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetGroupFigure(var_yeardata_file = "result.txt")
result <- api_instance$GetGroupFigure(var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 

### Return type

[**GroupFigure**](GroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **GetGroupFigures**
> array[GroupFigure] GetGroupFigures(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- GroupFigureApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetGroupFigures(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetGroupFigures(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **search** | **character**|  | [optional] 
 **include_deleted** | **character**| Soft-delete entities: set true to include rows with &#x60;deleted_at&#x60; set. | [optional] 

### Return type

[**array[GroupFigure]**](GroupFigure.md)

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

# **UpdateGroupFigure**
> GroupFigure UpdateGroupFigure(year, group_figure_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 
var_group_figure_update <- GroupFigureUpdate$new("bilanzsumme_example", "exemptionClaimed_example", 123, "nettoUmsatz_example", "parentName_example", "parentSitus_example") # GroupFigureUpdate | 

api_instance <- GroupFigureApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateGroupFigure(var_year, var_group_figure_updatedata_file = "result.txt")
result <- api_instance$UpdateGroupFigure(var_year, var_group_figure_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 
 **group_figure_update** | [**GroupFigureUpdate**](GroupFigureUpdate.md)|  | 

### Return type

[**GroupFigure**](GroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad request |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

