# PaymentGatewayApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreatePaymentGatewayApi**](PaymentGatewayApi.md#CreatePaymentGatewayApi) | **POST** /api/v1/payment-gateways | 
[**DeletePaymentGatewayApi**](PaymentGatewayApi.md#DeletePaymentGatewayApi) | **DELETE** /api/v1/payment-gateways/{gateway_id} | 
[**ListPaymentGatewaysApi**](PaymentGatewayApi.md#ListPaymentGatewaysApi) | **GET** /api/v1/payment-gateways/ | 
[**OauthAuthorizeApi**](PaymentGatewayApi.md#OauthAuthorizeApi) | **POST** /api/v1/payment-gateways/oauth/authorize | 
[**OauthCallbackApi**](PaymentGatewayApi.md#OauthCallbackApi) | **POST** /api/v1/payment-gateways/oauth/callback | 
[**UpdatePaymentGatewayApi**](PaymentGatewayApi.md#UpdatePaymentGatewayApi) | **PUT** /api/v1/payment-gateways/{gateway_id} | 


# **CreatePaymentGatewayApi**
> PaymentGateway CreatePaymentGatewayApi(body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- PaymentGatewayApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreatePaymentGatewayApi(var_bodydata_file = "result.txt")
result <- api_instance$CreatePaymentGatewayApi(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**PaymentGateway**](PaymentGateway.md)

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

# **DeletePaymentGatewayApi**
> DeletePaymentGatewayApi(gateway_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_gateway_id <- "gateway_id_example" # character | 

api_instance <- PaymentGatewayApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeletePaymentGatewayApi(var_gateway_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateway_id** | **character**|  | 

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
| **200** | Deleted |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **ListPaymentGatewaysApi**
> array[PaymentGateway] ListPaymentGatewaysApi()



### Example
```R
library(openapi)


api_instance <- PaymentGatewayApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListPaymentGatewaysApi(data_file = "result.txt")
result <- api_instance$ListPaymentGatewaysApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[PaymentGateway]**](PaymentGateway.md)

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

# **OauthAuthorizeApi**
> GatewayOAuthAuthorizeResponse OauthAuthorizeApi(gateway_o_auth_authorize_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_gateway_o_auth_authorize_request <- GatewayOAuthAuthorizeRequest$new("gateway_type_example", "redirect_uri_example") # GatewayOAuthAuthorizeRequest | 

api_instance <- PaymentGatewayApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OauthAuthorizeApi(var_gateway_o_auth_authorize_requestdata_file = "result.txt")
result <- api_instance$OauthAuthorizeApi(var_gateway_o_auth_authorize_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateway_o_auth_authorize_request** | [**GatewayOAuthAuthorizeRequest**](GatewayOAuthAuthorizeRequest.md)|  | 

### Return type

[**GatewayOAuthAuthorizeResponse**](GatewayOAuthAuthorizeResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OAuth authorization URL |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **OauthCallbackApi**
> PaymentGateway OauthCallbackApi(gateway_o_auth_callback_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_gateway_o_auth_callback_request <- GatewayOAuthCallbackRequest$new("code_example", "gateway_type_example", "redirect_uri_example", "state_example") # GatewayOAuthCallbackRequest | 

api_instance <- PaymentGatewayApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OauthCallbackApi(var_gateway_o_auth_callback_requestdata_file = "result.txt")
result <- api_instance$OauthCallbackApi(var_gateway_o_auth_callback_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateway_o_auth_callback_request** | [**GatewayOAuthCallbackRequest**](GatewayOAuthCallbackRequest.md)|  | 

### Return type

[**PaymentGateway**](PaymentGateway.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Gateway connected |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **UpdatePaymentGatewayApi**
> PaymentGateway UpdatePaymentGatewayApi(gateway_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_gateway_id <- "gateway_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- PaymentGatewayApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdatePaymentGatewayApi(var_gateway_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdatePaymentGatewayApi(var_gateway_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateway_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**PaymentGateway**](PaymentGateway.md)

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

