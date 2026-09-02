# ShippingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCredentialsApi**](ShippingApi.md#GetCredentialsApi) | **GET** /api/v1/shipping/credentials | 
[**GetRatesApi**](ShippingApi.md#GetRatesApi) | **POST** /api/v1/shipping/rates | 
[**ListProvidersApi**](ShippingApi.md#ListProvidersApi) | **GET** /api/v1/shipping/providers | 
[**SaveCredentialsApi**](ShippingApi.md#SaveCredentialsApi) | **PUT** /api/v1/shipping/credentials | 


# **GetCredentialsApi**
> ShippingCredentials GetCredentialsApi()



### Example
```R
library(openapi)


api_instance <- ShippingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCredentialsApi(data_file = "result.txt")
result <- api_instance$GetCredentialsApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ShippingCredentials**](ShippingCredentials.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Configured shipping provider credentials |  -  |
| **500** | Internal server error |  -  |

# **GetRatesApi**
> RateResponse GetRatesApi(rate_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_rate_request <- RateRequest$new(c(Package$new(123, "description_example", 123, 123, "reference_example", 123)), Address$new("city_example", "country_example", "name_example", "street_example", "street_number_example", "zip_example", "company_example", "email_example", "phone_example"), Address$new("city_example", "country_example", "name_example", "street_example", "street_number_example", "zip_example", "company_example", "email_example", "phone_example"), CustomerInfo$new(123, "is_registered_example")) # RateRequest | 

api_instance <- ShippingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetRatesApi(var_rate_requestdata_file = "result.txt")
result <- api_instance$GetRatesApi(var_rate_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_request** | [**RateRequest**](RateRequest.md)|  | 

### Return type

[**RateResponse**](RateResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Shipping rates from configured providers |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **ListProvidersApi**
> array[ProviderInfo] ListProvidersApi()



### Example
```R
library(openapi)


api_instance <- ShippingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListProvidersApi(data_file = "result.txt")
result <- api_instance$ListProvidersApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[ProviderInfo]**](ProviderInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of shipping providers |  -  |
| **500** | Internal server error |  -  |

# **SaveCredentialsApi**
> ShippingCredentials SaveCredentialsApi(shipping_credentials)



### Example
```R
library(openapi)

# prepare function argument(s)
var_shipping_credentials <- ShippingCredentials$new(DhlCredentials$new("api_key_example", "client_id_example", "client_secret_example"), UpsCredentials$new("client_id_example", "client_secret_example", "shipper_number_example")) # ShippingCredentials | 

api_instance <- ShippingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SaveCredentialsApi(var_shipping_credentialsdata_file = "result.txt")
result <- api_instance$SaveCredentialsApi(var_shipping_credentials)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping_credentials** | [**ShippingCredentials**](ShippingCredentials.md)|  | 

### Return type

[**ShippingCredentials**](ShippingCredentials.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Saved shipping provider credentials |  -  |
| **500** | Internal server error |  -  |

