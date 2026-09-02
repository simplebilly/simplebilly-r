# PublicReturnsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetPublicReturnStatus**](PublicReturnsApi.md#GetPublicReturnStatus) | **GET** /api/v1/public/returns/status | Customer checks the status of a return (public, no auth). The return is only revealed when its linked order&#39;s email matches.
[**ListPublicReturns**](PublicReturnsApi.md#ListPublicReturns) | **GET** /api/v1/public/returns/list | List all returns for an order (public, no auth).
[**RequestPublicReturn**](PublicReturnsApi.md#RequestPublicReturn) | **POST** /api/v1/public/returns/request | Customer requests a return for an order (public, no auth).


# **GetPublicReturnStatus**
> PublicReturnStatusResponse GetPublicReturnStatus(email, return_number = var.return_number, return_order_id = var.return_order_id, order_number = var.order_number)

Customer checks the status of a return (public, no auth). The return is only revealed when its linked order's email matches.

### Example
```R
library(openapi)

# Customer checks the status of a return (public, no auth). The return is only revealed when its linked order's email matches.
#
# prepare function argument(s)
var_email <- "email_example" # character | 
var_return_number <- "return_number_example" # character | Either return_number or return_order_id must be provided. (Optional)
var_return_order_id <- "return_order_id_example" # character |  (Optional)
var_order_number <- "order_number_example" # character |  (Optional)

api_instance <- PublicReturnsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPublicReturnStatus(var_email, return_number = var_return_number, return_order_id = var_return_order_id, order_number = var_order_numberdata_file = "result.txt")
result <- api_instance$GetPublicReturnStatus(var_email, return_number = var_return_number, return_order_id = var_return_order_id, order_number = var_order_number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **character**|  | 
 **return_number** | **character**| Either return_number or return_order_id must be provided. | [optional] 
 **return_order_id** | **character**|  | [optional] 
 **order_number** | **character**|  | [optional] 

### Return type

[**PublicReturnStatusResponse**](PublicReturnStatusResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Return status |  -  |
| **400** | Bad request (missing return identifier) |  -  |
| **404** | Return not found or email mismatch |  -  |
| **500** | Internal server error |  -  |

# **ListPublicReturns**
> array[PublicReturnStatusResponse] ListPublicReturns(order_number, email)

List all returns for an order (public, no auth).

### Example
```R
library(openapi)

# List all returns for an order (public, no auth).
#
# prepare function argument(s)
var_order_number <- "order_number_example" # character | 
var_email <- "email_example" # character | 

api_instance <- PublicReturnsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListPublicReturns(var_order_number, var_emaildata_file = "result.txt")
result <- api_instance$ListPublicReturns(var_order_number, var_email)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **character**|  | 
 **email** | **character**|  | 

### Return type

[**array[PublicReturnStatusResponse]**](PublicReturnStatusResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns for the order |  -  |
| **404** | Order not found or email mismatch |  -  |
| **500** | Internal server error |  -  |

# **RequestPublicReturn**
> PublicReturnResponse RequestPublicReturn(public_return_request)

Customer requests a return for an order (public, no auth).

### Example
```R
library(openapi)

# Customer requests a return for an order (public, no auth).
#
# prepare function argument(s)
var_public_return_request <- PublicReturnRequest$new("email_example", c(PublicReturnItem$new("productId_example", 123, "name_example", "reason_example")), "orderNumber_example", "notes_example") # PublicReturnRequest | 

api_instance <- PublicReturnsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RequestPublicReturn(var_public_return_requestdata_file = "result.txt")
result <- api_instance$RequestPublicReturn(var_public_return_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_return_request** | [**PublicReturnRequest**](PublicReturnRequest.md)|  | 

### Return type

[**PublicReturnResponse**](PublicReturnResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Return requested |  -  |
| **400** | Bad request (item not in order / quantity too high) |  -  |
| **404** | Order not found or email mismatch |  -  |
| **500** | Internal server error |  -  |

