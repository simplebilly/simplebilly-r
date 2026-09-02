# AdminApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TriggerMirror**](AdminApi.md#TriggerMirror) | **POST** /api/v1/admin/storage/mirror | 


# **TriggerMirror**
> MirrorTriggerResponse TriggerMirror()



### Example
```R
library(openapi)


api_instance <- AdminApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TriggerMirror(data_file = "result.txt")
result <- api_instance$TriggerMirror()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MirrorTriggerResponse**](MirrorTriggerResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Mirror job queued |  -  |
| **403** | Forbidden |  -  |

