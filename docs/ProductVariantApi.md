# ProductVariantApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateProductVariant**](ProductVariantApi.md#CreateProductVariant) | **POST** /api/v1/product-variants | 
[**DeleteProductVariant**](ProductVariantApi.md#DeleteProductVariant) | **DELETE** /api/v1/product-variants/{variant_id} | 
[**GenerateProductVariants**](ProductVariantApi.md#GenerateProductVariants) | **POST** /api/v1/product-variants/generate | 
[**GetProductVariant**](ProductVariantApi.md#GetProductVariant) | **GET** /api/v1/product-variants/{variant_id} | 
[**ListProductVariants**](ProductVariantApi.md#ListProductVariants) | **GET** /api/v1/product-variants/ | 
[**UpdateProductVariant**](ProductVariantApi.md#UpdateProductVariant) | **PUT** /api/v1/product-variants/{variant_id} | 


# **CreateProductVariant**
> ProductVariant CreateProductVariant(product_variant)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_variant <- ProductVariant$new("productId_example", "sku_example", "barcode_example", "imageLink_example", "isActive_example", "name_example", TODO, "price_example", "priceDelta_example", 123) # ProductVariant | 

api_instance <- ProductVariantApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProductVariant(var_product_variantdata_file = "result.txt")
result <- api_instance$CreateProductVariant(var_product_variant)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_variant** | [**ProductVariant**](ProductVariant.md)|  | 

### Return type

[**ProductVariant**](ProductVariant.md)

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

# **DeleteProductVariant**
> DeleteProductVariant(variant_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_variant_id <- "variant_id_example" # character | 

api_instance <- ProductVariantApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteProductVariant(var_variant_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant_id** | **character**|  | 

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

# **GenerateProductVariants**
> array[ProductVariant] GenerateProductVariants(generate_variants_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_generate_variants_request <- GenerateVariantsRequest$new("productId_example", c(key = c("inner_example")), "priceDelta_example", "skuPrefix_example") # GenerateVariantsRequest | 

api_instance <- ProductVariantApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenerateProductVariants(var_generate_variants_requestdata_file = "result.txt")
result <- api_instance$GenerateProductVariants(var_generate_variants_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_variants_request** | [**GenerateVariantsRequest**](GenerateVariantsRequest.md)|  | 

### Return type

[**array[ProductVariant]**](ProductVariant.md)

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

# **GetProductVariant**
> ProductVariant GetProductVariant(variant_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_variant_id <- "variant_id_example" # character | 

api_instance <- ProductVariantApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProductVariant(var_variant_iddata_file = "result.txt")
result <- api_instance$GetProductVariant(var_variant_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant_id** | **character**|  | 

### Return type

[**ProductVariant**](ProductVariant.md)

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

# **ListProductVariants**
> array[ProductVariant] ListProductVariants(page = var.page, page_size = var.page_size, product_id = var.product_id, is_active = var.is_active)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_product_id <- "product_id_example" # character |  (Optional)
var_is_active <- "is_active_example" # character |  (Optional)

api_instance <- ProductVariantApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListProductVariants(page = var_page, page_size = var_page_size, product_id = var_product_id, is_active = var_is_activedata_file = "result.txt")
result <- api_instance$ListProductVariants(page = var_page, page_size = var_page_size, product_id = var_product_id, is_active = var_is_active)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **product_id** | **character**|  | [optional] 
 **is_active** | **character**|  | [optional] 

### Return type

[**array[ProductVariant]**](ProductVariant.md)

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

# **UpdateProductVariant**
> ProductVariant UpdateProductVariant(variant_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_variant_id <- "variant_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- ProductVariantApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateProductVariant(var_variant_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateProductVariant(var_variant_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**ProductVariant**](ProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

