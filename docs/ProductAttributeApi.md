# ProductAttributeApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateProductAttribute**](ProductAttributeApi.md#CreateProductAttribute) | **POST** /api/v1/product-attributes | 
[**DeleteProductAttribute**](ProductAttributeApi.md#DeleteProductAttribute) | **DELETE** /api/v1/product-attributes/{attribute_id} | 
[**GetProductAttribute**](ProductAttributeApi.md#GetProductAttribute) | **GET** /api/v1/product-attributes/{attribute_id} | 
[**ListProductAttributes**](ProductAttributeApi.md#ListProductAttributes) | **GET** /api/v1/product-attributes/ | 
[**UpdateProductAttribute**](ProductAttributeApi.md#UpdateProductAttribute) | **PUT** /api/v1/product-attributes/{attribute_id} | 


# **CreateProductAttribute**
> ProductAttribute CreateProductAttribute(product_attribute_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_attribute_create <- ProductAttributeCreate$new("name_example", "productId_example", "value_example", "isFilterable_example", 123, "unit_example") # ProductAttributeCreate | 

api_instance <- ProductAttributeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProductAttribute(var_product_attribute_createdata_file = "result.txt")
result <- api_instance$CreateProductAttribute(var_product_attribute_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_attribute_create** | [**ProductAttributeCreate**](ProductAttributeCreate.md)|  | 

### Return type

[**ProductAttribute**](ProductAttribute.md)

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

# **DeleteProductAttribute**
> DeleteProductAttribute(attribute_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_attribute_id <- "attribute_id_example" # character | 

api_instance <- ProductAttributeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteProductAttribute(var_attribute_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_id** | **character**|  | 

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

# **GetProductAttribute**
> ProductAttribute GetProductAttribute(attribute_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_attribute_id <- "attribute_id_example" # character | 

api_instance <- ProductAttributeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProductAttribute(var_attribute_iddata_file = "result.txt")
result <- api_instance$GetProductAttribute(var_attribute_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_id** | **character**|  | 

### Return type

[**ProductAttribute**](ProductAttribute.md)

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

# **ListProductAttributes**
> array[ProductAttribute] ListProductAttributes(page = var.page, page_size = var.page_size, product_id = var.product_id, is_filterable = var.is_filterable, search = var.search)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_product_id <- "product_id_example" # character |  (Optional)
var_is_filterable <- "is_filterable_example" # character |  (Optional)
var_search <- "search_example" # character |  (Optional)

api_instance <- ProductAttributeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListProductAttributes(page = var_page, page_size = var_page_size, product_id = var_product_id, is_filterable = var_is_filterable, search = var_searchdata_file = "result.txt")
result <- api_instance$ListProductAttributes(page = var_page, page_size = var_page_size, product_id = var_product_id, is_filterable = var_is_filterable, search = var_search)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **product_id** | **character**|  | [optional] 
 **is_filterable** | **character**|  | [optional] 
 **search** | **character**|  | [optional] 

### Return type

[**array[ProductAttribute]**](ProductAttribute.md)

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

# **UpdateProductAttribute**
> ProductAttribute UpdateProductAttribute(attribute_id, product_attribute_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_attribute_id <- "attribute_id_example" # character | 
var_product_attribute_update <- ProductAttributeUpdate$new("isFilterable_example", "name_example", 123, "productId_example", "unit_example", "value_example") # ProductAttributeUpdate | 

api_instance <- ProductAttributeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateProductAttribute(var_attribute_id, var_product_attribute_updatedata_file = "result.txt")
result <- api_instance$UpdateProductAttribute(var_attribute_id, var_product_attribute_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_id** | **character**|  | 
 **product_attribute_update** | [**ProductAttributeUpdate**](ProductAttributeUpdate.md)|  | 

### Return type

[**ProductAttribute**](ProductAttribute.md)

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

