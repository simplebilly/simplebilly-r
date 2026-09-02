# ProductApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateProductApi**](ProductApi.md#CreateProductApi) | **POST** /api/v1/products | 
[**DeleteProductApi**](ProductApi.md#DeleteProductApi) | **DELETE** /api/v1/products/{product_id} | 
[**GetProductApi**](ProductApi.md#GetProductApi) | **GET** /api/v1/products/{product_id} | 
[**GetProductStockApi**](ProductApi.md#GetProductStockApi) | **GET** /api/v1/products/{product_id}/stock | 
[**GetProductsApi**](ProductApi.md#GetProductsApi) | **GET** /api/v1/products/ | 
[**ListLowStockProductsApi**](ProductApi.md#ListLowStockProductsApi) | **GET** /api/v1/products/low-stock | 
[**ProductRestore**](ProductApi.md#ProductRestore) | **POST** /api/v1/products/{product_id}/restore | 
[**UpdateProductApi**](ProductApi.md#UpdateProductApi) | **PUT** /api/v1/products/{product_id} | 
[**UpdateProductStockApi**](ProductApi.md#UpdateProductStockApi) | **PUT** /api/v1/products/{product_id}/stock | 


# **CreateProductApi**
> Product CreateProductApi(product_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_create <- ProductCreate$new("name_example", "productCode_example", "sku_example", "availability_example", "barcode_example", "brand_example", "categoryId_example", "condition_example", "defaultLedgerAccount_example", "defaultPrice_example", "defaultPriceFormulaId_example", "defaultTaxRate_example", "description_example", "gtin_example", "height_example", "imageLink_example", TODO, "isTaxable_example", "length_example", "link_example", 123, 123, "mpn_example", "packageHeight_example", "packageLength_example", "packageWeightUnit_example", "packageWeightValue_example", "packageWidth_example", "productType_example", "purchasePrice_example", 123, "salePrice_example", "shippingPrice_example", "shippingRequiresInsurance_example", 123, TODO, "taxPrice_example", "trackBatch_example", "trackSerial_example", TODO, "weightUnit_example", "weightValue_example", "width_example") # ProductCreate | 

api_instance <- ProductApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProductApi(var_product_createdata_file = "result.txt")
result <- api_instance$CreateProductApi(var_product_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_create** | [**ProductCreate**](ProductCreate.md)|  | 

### Return type

[**Product**](Product.md)

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

# **DeleteProductApi**
> DeleteProductApi(product_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_id <- "product_id_example" # character | 

api_instance <- ProductApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteProductApi(var_product_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **character**|  | 

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

# **GetProductApi**
> Product GetProductApi(product_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_id <- "product_id_example" # character | 

api_instance <- ProductApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProductApi(var_product_iddata_file = "result.txt")
result <- api_instance$GetProductApi(var_product_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **character**|  | 

### Return type

[**Product**](Product.md)

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

# **GetProductStockApi**
> ProductStock GetProductStockApi(product_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_id <- "product_id_example" # character | 

api_instance <- ProductApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProductStockApi(var_product_iddata_file = "result.txt")
result <- api_instance$GetProductStockApi(var_product_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **character**|  | 

### Return type

[**ProductStock**](ProductStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Stock info |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **GetProductsApi**
> array[Product] GetProductsApi(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- ProductApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProductsApi(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetProductsApi(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[Product]**](Product.md)

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

# **ListLowStockProductsApi**
> array[ProductStock] ListLowStockProductsApi(threshold = var.threshold)



### Example
```R
library(openapi)

# prepare function argument(s)
var_threshold <- 56 # integer |  (Optional)

api_instance <- ProductApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListLowStockProductsApi(threshold = var_thresholddata_file = "result.txt")
result <- api_instance$ListLowStockProductsApi(threshold = var_threshold)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threshold** | **integer**|  | [optional] 

### Return type

[**array[ProductStock]**](ProductStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Low stock products |  -  |
| **500** | Internal server error |  -  |

# **ProductRestore**
> Product ProductRestore(product_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_id <- "product_id_example" # character | 

api_instance <- ProductApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ProductRestore(var_product_iddata_file = "result.txt")
result <- api_instance$ProductRestore(var_product_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **character**|  | 

### Return type

[**Product**](Product.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Restored |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **UpdateProductApi**
> Product UpdateProductApi(product_id, product_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_id <- "product_id_example" # character | 
var_product_update <- ProductUpdate$new("availability_example", "barcode_example", "brand_example", "categoryId_example", "condition_example", "defaultLedgerAccount_example", "defaultPrice_example", "defaultPriceFormulaId_example", "defaultTaxRate_example", "description_example", "gtin_example", "height_example", "imageLink_example", TODO, "isTaxable_example", "length_example", "link_example", 123, 123, "mpn_example", "name_example", "packageHeight_example", "packageLength_example", "packageWeightUnit_example", "packageWeightValue_example", "packageWidth_example", "productCode_example", "productType_example", "purchasePrice_example", 123, "salePrice_example", "shippingPrice_example", "shippingRequiresInsurance_example", "sku_example", 123, TODO, "taxPrice_example", "trackBatch_example", "trackSerial_example", TODO, "weightUnit_example", "weightValue_example", "width_example") # ProductUpdate | 

api_instance <- ProductApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateProductApi(var_product_id, var_product_updatedata_file = "result.txt")
result <- api_instance$UpdateProductApi(var_product_id, var_product_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **character**|  | 
 **product_update** | [**ProductUpdate**](ProductUpdate.md)|  | 

### Return type

[**Product**](Product.md)

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

# **UpdateProductStockApi**
> ProductStock UpdateProductStockApi(product_id, stock_update_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_id <- "product_id_example" # character | 
var_stock_update_request <- StockUpdateRequest$new(123) # StockUpdateRequest | 

api_instance <- ProductApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateProductStockApi(var_product_id, var_stock_update_requestdata_file = "result.txt")
result <- api_instance$UpdateProductStockApi(var_product_id, var_stock_update_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **character**|  | 
 **stock_update_request** | [**StockUpdateRequest**](StockUpdateRequest.md)|  | 

### Return type

[**ProductStock**](ProductStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Stock updated |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

