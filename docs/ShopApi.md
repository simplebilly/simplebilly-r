# ShopApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ShopEditorSave**](ShopApi.md#ShopEditorSave) | **POST** /api/v1/shop/editor | 


# **ShopEditorSave**
> AnyType ShopEditorSave(body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- ShopApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ShopEditorSave(var_bodydata_file = "result.txt")
result <- api_instance$ShopEditorSave(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

