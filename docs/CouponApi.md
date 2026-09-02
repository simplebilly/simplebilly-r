# CouponApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CouponRestore**](CouponApi.md#CouponRestore) | **POST** /api/v1/coupons/{coupon_id}/restore | 
[**CreateCoupon**](CouponApi.md#CreateCoupon) | **POST** /api/v1/coupons | 
[**DeleteCoupon**](CouponApi.md#DeleteCoupon) | **DELETE** /api/v1/coupons/{coupon_id} | 
[**GetCoupon**](CouponApi.md#GetCoupon) | **GET** /api/v1/coupons/{coupon_id} | 
[**ListCoupons**](CouponApi.md#ListCoupons) | **GET** /api/v1/coupons/ | 
[**UpdateCoupon**](CouponApi.md#UpdateCoupon) | **PUT** /api/v1/coupons/{coupon_id} | 


# **CouponRestore**
> Coupon CouponRestore(coupon_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_coupon_id <- "coupon_id_example" # character | 

api_instance <- CouponApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CouponRestore(var_coupon_iddata_file = "result.txt")
result <- api_instance$CouponRestore(var_coupon_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_id** | **character**|  | 

### Return type

[**Coupon**](Coupon.md)

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

# **CreateCoupon**
> Coupon CreateCoupon(coupon_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_coupon_create <- CouponCreate$new("code_example", DiscountType$new(), "discountValue_example", "description_example", "expiresAt_example", "isActive_example", "isCombineable_example", "maxDiscountAmount_example", 123, 123, "minOrderAmount_example", TODO, "startsAt_example") # CouponCreate | 

api_instance <- CouponApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateCoupon(var_coupon_createdata_file = "result.txt")
result <- api_instance$CreateCoupon(var_coupon_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_create** | [**CouponCreate**](CouponCreate.md)|  | 

### Return type

[**Coupon**](Coupon.md)

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

# **DeleteCoupon**
> DeleteCoupon(coupon_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_coupon_id <- "coupon_id_example" # character | 

api_instance <- CouponApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteCoupon(var_coupon_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_id** | **character**|  | 

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

# **GetCoupon**
> Coupon GetCoupon(coupon_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_coupon_id <- "coupon_id_example" # character | 

api_instance <- CouponApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCoupon(var_coupon_iddata_file = "result.txt")
result <- api_instance$GetCoupon(var_coupon_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_id** | **character**|  | 

### Return type

[**Coupon**](Coupon.md)

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

# **ListCoupons**
> array[Coupon] ListCoupons(page = var.page, page_size = var.page_size, is_active = var.is_active, code = var.code, discount_type = var.discount_type)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_is_active <- "is_active_example" # character |  (Optional)
var_code <- "code_example" # character |  (Optional)
var_discount_type <- "discount_type_example" # character |  (Optional)

api_instance <- CouponApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListCoupons(page = var_page, page_size = var_page_size, is_active = var_is_active, code = var_code, discount_type = var_discount_typedata_file = "result.txt")
result <- api_instance$ListCoupons(page = var_page, page_size = var_page_size, is_active = var_is_active, code = var_code, discount_type = var_discount_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **is_active** | **character**|  | [optional] 
 **code** | **character**|  | [optional] 
 **discount_type** | **character**|  | [optional] 

### Return type

[**array[Coupon]**](Coupon.md)

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

# **UpdateCoupon**
> Coupon UpdateCoupon(coupon_id, coupon_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_coupon_id <- "coupon_id_example" # character | 
var_coupon_update <- CouponUpdate$new("code_example", "description_example", DiscountType$new(), "discountValue_example", "expiresAt_example", "isActive_example", "isCombineable_example", "maxDiscountAmount_example", 123, 123, "minOrderAmount_example", TODO, "startsAt_example") # CouponUpdate | 

api_instance <- CouponApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateCoupon(var_coupon_id, var_coupon_updatedata_file = "result.txt")
result <- api_instance$UpdateCoupon(var_coupon_id, var_coupon_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_id** | **character**|  | 
 **coupon_update** | [**CouponUpdate**](CouponUpdate.md)|  | 

### Return type

[**Coupon**](Coupon.md)

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

