# BomApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateBom**](BomApi.md#CreateBom) | **POST** /api/v1/boms | 
[**DeleteBom**](BomApi.md#DeleteBom) | **DELETE** /api/v1/boms/{bom_id} | 
[**GetBom**](BomApi.md#GetBom) | **GET** /api/v1/boms/{bom_id} | 
[**ListBoms**](BomApi.md#ListBoms) | **GET** /api/v1/boms/ | 
[**UpdateBom**](BomApi.md#UpdateBom) | **PUT** /api/v1/boms/{bom_id} | 


# **CreateBom**
> Bom CreateBom(bom_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_bom_create <- BomCreate$new("name_example", "productId_example", TODO, "description_example", 123, BomStatus$new()) # BomCreate | 

api_instance <- BomApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateBom(var_bom_createdata_file = "result.txt")
result <- api_instance$CreateBom(var_bom_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bom_create** | [**BomCreate**](BomCreate.md)|  | 

### Return type

[**Bom**](Bom.md)

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

# **DeleteBom**
> DeleteBom(bom_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_bom_id <- "bom_id_example" # character | 

api_instance <- BomApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteBom(var_bom_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bom_id** | **character**|  | 

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

# **GetBom**
> Bom GetBom(bom_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_bom_id <- "bom_id_example" # character | 

api_instance <- BomApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetBom(var_bom_iddata_file = "result.txt")
result <- api_instance$GetBom(var_bom_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bom_id** | **character**|  | 

### Return type

[**Bom**](Bom.md)

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

# **ListBoms**
> array[Bom] ListBoms(page = var.page, page_size = var.page_size, search = var.search, product_id = var.product_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_product_id <- "product_id_example" # character | Filter by finished product id. (Optional)

api_instance <- BomApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListBoms(page = var_page, page_size = var_page_size, search = var_search, product_id = var_product_iddata_file = "result.txt")
result <- api_instance$ListBoms(page = var_page, page_size = var_page_size, search = var_search, product_id = var_product_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **search** | **character**|  | [optional] 
 **product_id** | **character**| Filter by finished product id. | [optional] 

### Return type

[**array[Bom]**](Bom.md)

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

# **UpdateBom**
> Bom UpdateBom(bom_id, bom_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_bom_id <- "bom_id_example" # character | 
var_bom_update <- BomUpdate$new(TODO, "description_example", "name_example", 123, "productId_example", BomStatus$new()) # BomUpdate | 

api_instance <- BomApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateBom(var_bom_id, var_bom_updatedata_file = "result.txt")
result <- api_instance$UpdateBom(var_bom_id, var_bom_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bom_id** | **character**|  | 
 **bom_update** | [**BomUpdate**](BomUpdate.md)|  | 

### Return type

[**Bom**](Bom.md)

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

