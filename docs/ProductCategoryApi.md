# ProductCategoryApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateProductCategory**](ProductCategoryApi.md#CreateProductCategory) | **POST** /api/v1/product-categories | 
[**DeleteProductCategory**](ProductCategoryApi.md#DeleteProductCategory) | **DELETE** /api/v1/product-categories/{category_id} | 
[**GetProductCategory**](ProductCategoryApi.md#GetProductCategory) | **GET** /api/v1/product-categories/{category_id} | 
[**ListProductCategories**](ProductCategoryApi.md#ListProductCategories) | **GET** /api/v1/product-categories | 
[**UpdateProductCategory**](ProductCategoryApi.md#UpdateProductCategory) | **PUT** /api/v1/product-categories/{category_id} | 


# **CreateProductCategory**
> ProductCategory CreateProductCategory(product_category)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_category <- ProductCategory$new("name_example", 123, "description_example", "parentCategoryId_example") # ProductCategory | 

api_instance <- ProductCategoryApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProductCategory(var_product_categorydata_file = "result.txt")
result <- api_instance$CreateProductCategory(var_product_category)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_category** | [**ProductCategory**](ProductCategory.md)|  | 

### Return type

[**ProductCategory**](ProductCategory.md)

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

# **DeleteProductCategory**
> DeleteProductCategory(category_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_category_id <- "category_id_example" # character | 

api_instance <- ProductCategoryApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteProductCategory(var_category_id)
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

# **GetProductCategory**
> ProductCategory GetProductCategory(category_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_category_id <- "category_id_example" # character | 

api_instance <- ProductCategoryApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProductCategory(var_category_iddata_file = "result.txt")
result <- api_instance$GetProductCategory(var_category_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **character**|  | 

### Return type

[**ProductCategory**](ProductCategory.md)

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

# **ListProductCategories**
> array[ProductCategory] ListProductCategories()



### Example
```R
library(openapi)


api_instance <- ProductCategoryApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListProductCategories(data_file = "result.txt")
result <- api_instance$ListProductCategories()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[ProductCategory]**](ProductCategory.md)

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

# **UpdateProductCategory**
> ProductCategory UpdateProductCategory(category_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_category_id <- "category_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- ProductCategoryApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateProductCategory(var_category_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateProductCategory(var_category_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**ProductCategory**](ProductCategory.md)

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

