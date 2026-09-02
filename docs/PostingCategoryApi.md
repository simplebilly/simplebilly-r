# PostingCategoryApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreatePostingCategory**](PostingCategoryApi.md#CreatePostingCategory) | **POST** /api/v1/posting-categories | 
[**DeletePostingCategory**](PostingCategoryApi.md#DeletePostingCategory) | **DELETE** /api/v1/posting-categories/{category_id} | 
[**ListPostingCategories**](PostingCategoryApi.md#ListPostingCategories) | **GET** /api/v1/posting-categories | 
[**SeedPostingCategories**](PostingCategoryApi.md#SeedPostingCategories) | **POST** /api/v1/posting-categories/seed/{skr_version} | 
[**UpdatePostingCategory**](PostingCategoryApi.md#UpdatePostingCategory) | **PUT** /api/v1/posting-categories/{category_id} | 


# **CreatePostingCategory**
> PostingCategory CreatePostingCategory(body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- PostingCategoryApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreatePostingCategory(var_bodydata_file = "result.txt")
result <- api_instance$CreatePostingCategory(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**PostingCategory**](PostingCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **500** | Internal server error |  -  |

# **DeletePostingCategory**
> DeletePostingCategory(category_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_category_id <- "category_id_example" # character | 

api_instance <- PostingCategoryApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeletePostingCategory(var_category_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **character**|  | 

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
| **204** | Deleted |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **ListPostingCategories**
> array[PostingCategory] ListPostingCategories()



### Example
```R
library(openapi)


api_instance <- PostingCategoryApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListPostingCategories(data_file = "result.txt")
result <- api_instance$ListPostingCategories()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[PostingCategory]**](PostingCategory.md)

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

# **SeedPostingCategories**
> SeedPostingCategories(skr_version)



### Example
```R
library(openapi)

# prepare function argument(s)
var_skr_version <- "skr_version_example" # character | 

api_instance <- PostingCategoryApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$SeedPostingCategories(var_skr_version)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skr_version** | **character**|  | 

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
| **200** | Seeded |  -  |
| **500** | Internal server error |  -  |

# **UpdatePostingCategory**
> PostingCategory UpdatePostingCategory(category_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_category_id <- "category_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- PostingCategoryApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdatePostingCategory(var_category_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdatePostingCategory(var_category_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**PostingCategory**](PostingCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

