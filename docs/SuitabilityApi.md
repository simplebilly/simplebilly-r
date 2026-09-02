# SuitabilityApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ShippingSuitabilityApi**](SuitabilityApi.md#ShippingSuitabilityApi) | **POST** /api/v1/shipping/suitability | 


# **ShippingSuitabilityApi**
> SuitabilityResult ShippingSuitabilityApi(suitability_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_suitability_request <- SuitabilityRequest$new(c(CartItemInput$new("product_id_example", 123)), Address$new("city_example", "country_example", "name_example", "street_example", "street_number_example", "zip_example", "company_example", "email_example", "phone_example"), Address$new("city_example", "country_example", "name_example", "street_example", "street_number_example", "zip_example", "company_example", "email_example", "phone_example"), 123) # SuitabilityRequest | 

api_instance <- SuitabilityApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ShippingSuitabilityApi(var_suitability_requestdata_file = "result.txt")
result <- api_instance$ShippingSuitabilityApi(var_suitability_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **suitability_request** | [**SuitabilityRequest**](SuitabilityRequest.md)|  | 

### Return type

[**SuitabilityResult**](SuitabilityResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Shipping suitability results |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

