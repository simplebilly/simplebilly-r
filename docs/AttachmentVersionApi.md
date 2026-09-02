# AttachmentVersionApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateAttachmentVersion**](AttachmentVersionApi.md#CreateAttachmentVersion) | **POST** /api/v1/attachments/{attachment_id}/versions | 
[**ListAttachmentVersions**](AttachmentVersionApi.md#ListAttachmentVersions) | **GET** /api/v1/attachments/{attachment_id}/versions | 
[**RestoreAttachmentVersion**](AttachmentVersionApi.md#RestoreAttachmentVersion) | **POST** /api/v1/attachments/{attachment_id}/versions/{version_id}/restore | 


# **CreateAttachmentVersion**
> AttachmentVersion CreateAttachmentVersion(attachment_id, new_version_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_attachment_id <- "attachment_id_example" # character | 
var_new_version_request <- NewVersionRequest$new("fileName_example", 123, "mimeType_example", "originalName_example", "sha256Hash_example") # NewVersionRequest | 

api_instance <- AttachmentVersionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateAttachmentVersion(var_attachment_id, var_new_version_requestdata_file = "result.txt")
result <- api_instance$CreateAttachmentVersion(var_attachment_id, var_new_version_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **character**|  | 
 **new_version_request** | [**NewVersionRequest**](NewVersionRequest.md)|  | 

### Return type

[**AttachmentVersion**](AttachmentVersion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | New current version recorded |  -  |
| **400** | Bad request |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **ListAttachmentVersions**
> array[AttachmentVersion] ListAttachmentVersions(attachment_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_attachment_id <- "attachment_id_example" # character | 

api_instance <- AttachmentVersionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListAttachmentVersions(var_attachment_iddata_file = "result.txt")
result <- api_instance$ListAttachmentVersions(var_attachment_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **character**|  | 

### Return type

[**array[AttachmentVersion]**](AttachmentVersion.md)

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

# **RestoreAttachmentVersion**
> Attachment RestoreAttachmentVersion(attachment_id, version_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_attachment_id <- "attachment_id_example" # character | 
var_version_id <- "version_id_example" # character | 

api_instance <- AttachmentVersionApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RestoreAttachmentVersion(var_attachment_id, var_version_iddata_file = "result.txt")
result <- api_instance$RestoreAttachmentVersion(var_attachment_id, var_version_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **character**|  | 
 **version_id** | **character**|  | 

### Return type

[**Attachment**](Attachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Attachment restored |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

