# ShippingRuleApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateShippingRule**](ShippingRuleApi.md#CreateShippingRule) | **POST** /api/v1/shipping-rules | 
[**DeleteShippingRule**](ShippingRuleApi.md#DeleteShippingRule) | **DELETE** /api/v1/shipping-rules/{rule_id} | 
[**GetShippingRule**](ShippingRuleApi.md#GetShippingRule) | **GET** /api/v1/shipping-rules/{rule_id} | 
[**ListShippingRules**](ShippingRuleApi.md#ListShippingRules) | **GET** /api/v1/shipping-rules/ | 
[**UpdateShippingRule**](ShippingRuleApi.md#UpdateShippingRule) | **PUT** /api/v1/shipping-rules/{rule_id} | 


# **CreateShippingRule**
> ShippingRule CreateShippingRule(shipping_rule_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_shipping_rule_create <- ShippingRuleCreate$new("name_example", "price_example", "carrier_example", CountryCode$new(), "deliveryTime_example", "isActive_example", 123, 123, "notes_example", 123) # ShippingRuleCreate | 

api_instance <- ShippingRuleApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateShippingRule(var_shipping_rule_createdata_file = "result.txt")
result <- api_instance$CreateShippingRule(var_shipping_rule_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping_rule_create** | [**ShippingRuleCreate**](ShippingRuleCreate.md)|  | 

### Return type

[**ShippingRule**](ShippingRule.md)

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

# **DeleteShippingRule**
> DeleteShippingRule(rule_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_rule_id <- "rule_id_example" # character | 

api_instance <- ShippingRuleApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteShippingRule(var_rule_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **character**|  | 

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

# **GetShippingRule**
> ShippingRule GetShippingRule(rule_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_rule_id <- "rule_id_example" # character | 

api_instance <- ShippingRuleApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetShippingRule(var_rule_iddata_file = "result.txt")
result <- api_instance$GetShippingRule(var_rule_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **character**|  | 

### Return type

[**ShippingRule**](ShippingRule.md)

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

# **ListShippingRules**
> array[ShippingRule] ListShippingRules(page = var.page, page_size = var.page_size, country = var.country)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_country <- "country_example" # character |  (Optional)

api_instance <- ShippingRuleApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListShippingRules(page = var_page, page_size = var_page_size, country = var_countrydata_file = "result.txt")
result <- api_instance$ListShippingRules(page = var_page, page_size = var_page_size, country = var_country)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **country** | **character**|  | [optional] 

### Return type

[**array[ShippingRule]**](ShippingRule.md)

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

# **UpdateShippingRule**
> ShippingRule UpdateShippingRule(rule_id, shipping_rule_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_rule_id <- "rule_id_example" # character | 
var_shipping_rule_update <- ShippingRuleUpdate$new("carrier_example", CountryCode$new(), "deliveryTime_example", "isActive_example", 123, 123, "name_example", "notes_example", "price_example", 123) # ShippingRuleUpdate | 

api_instance <- ShippingRuleApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateShippingRule(var_rule_id, var_shipping_rule_updatedata_file = "result.txt")
result <- api_instance$UpdateShippingRule(var_rule_id, var_shipping_rule_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **character**|  | 
 **shipping_rule_update** | [**ShippingRuleUpdate**](ShippingRuleUpdate.md)|  | 

### Return type

[**ShippingRule**](ShippingRule.md)

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

