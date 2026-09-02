# PriceTierApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreatePriceTier**](PriceTierApi.md#CreatePriceTier) | **POST** /api/v1/price-tiers | 
[**DeletePriceTier**](PriceTierApi.md#DeletePriceTier) | **DELETE** /api/v1/price-tiers/{price_tier_id} | 
[**GetPriceTier**](PriceTierApi.md#GetPriceTier) | **GET** /api/v1/price-tiers/{price_tier_id} | 
[**GetResolvedPrice**](PriceTierApi.md#GetResolvedPrice) | **GET** /api/v1/price-tiers/resolved | 
[**ListPriceTiers**](PriceTierApi.md#ListPriceTiers) | **GET** /api/v1/price-tiers/ | 
[**UpdatePriceTier**](PriceTierApi.md#UpdatePriceTier) | **PUT** /api/v1/price-tiers/{price_tier_id} | 


# **CreatePriceTier**
> PriceTier CreatePriceTier(price_tier_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_price_tier_create <- PriceTierCreate$new("productId_example", "unitPrice_example", "customerGroupId_example", 123) # PriceTierCreate | 

api_instance <- PriceTierApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreatePriceTier(var_price_tier_createdata_file = "result.txt")
result <- api_instance$CreatePriceTier(var_price_tier_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **price_tier_create** | [**PriceTierCreate**](PriceTierCreate.md)|  | 

### Return type

[**PriceTier**](PriceTier.md)

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

# **DeletePriceTier**
> DeletePriceTier(price_tier_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_price_tier_id <- "price_tier_id_example" # character | 

api_instance <- PriceTierApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeletePriceTier(var_price_tier_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **price_tier_id** | **character**|  | 

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

# **GetPriceTier**
> PriceTier GetPriceTier(price_tier_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_price_tier_id <- "price_tier_id_example" # character | 

api_instance <- PriceTierApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPriceTier(var_price_tier_iddata_file = "result.txt")
result <- api_instance$GetPriceTier(var_price_tier_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **price_tier_id** | **character**|  | 

### Return type

[**PriceTier**](PriceTier.md)

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

# **GetResolvedPrice**
> ResolvedPriceResponse GetResolvedPrice(product_id, quantity = var.quantity, contact_id = var.contact_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_product_id <- "product_id_example" # character | 
var_quantity <- 56 # integer |  (Optional)
var_contact_id <- "contact_id_example" # character | Contact used to match customer-group-scoped tiers. (Optional)

api_instance <- PriceTierApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetResolvedPrice(var_product_id, quantity = var_quantity, contact_id = var_contact_iddata_file = "result.txt")
result <- api_instance$GetResolvedPrice(var_product_id, quantity = var_quantity, contact_id = var_contact_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **character**|  | 
 **quantity** | **integer**|  | [optional] 
 **contact_id** | **character**| Contact used to match customer-group-scoped tiers. | [optional] 

### Return type

[**ResolvedPriceResponse**](ResolvedPriceResponse.md)

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

# **ListPriceTiers**
> array[PriceTier] ListPriceTiers(page = var.page, page_size = var.page_size, product_id = var.product_id, customer_group_id = var.customer_group_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_product_id <- "product_id_example" # character |  (Optional)
var_customer_group_id <- "customer_group_id_example" # character |  (Optional)

api_instance <- PriceTierApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListPriceTiers(page = var_page, page_size = var_page_size, product_id = var_product_id, customer_group_id = var_customer_group_iddata_file = "result.txt")
result <- api_instance$ListPriceTiers(page = var_page, page_size = var_page_size, product_id = var_product_id, customer_group_id = var_customer_group_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **product_id** | **character**|  | [optional] 
 **customer_group_id** | **character**|  | [optional] 

### Return type

[**array[PriceTier]**](PriceTier.md)

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

# **UpdatePriceTier**
> PriceTier UpdatePriceTier(price_tier_id, price_tier_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_price_tier_id <- "price_tier_id_example" # character | 
var_price_tier_update <- PriceTierUpdate$new("unitPrice_example", "customerGroupId_example", 123, "productId_example") # PriceTierUpdate | 

api_instance <- PriceTierApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdatePriceTier(var_price_tier_id, var_price_tier_updatedata_file = "result.txt")
result <- api_instance$UpdatePriceTier(var_price_tier_id, var_price_tier_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **price_tier_id** | **character**|  | 
 **price_tier_update** | [**PriceTierUpdate**](PriceTierUpdate.md)|  | 

### Return type

[**PriceTier**](PriceTier.md)

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

