# AttachmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AttachmentRestore**](AttachmentApi.md#AttachmentRestore) | **POST** /api/v1/attachments/{id}/restore | 
[**CreateAttachment**](AttachmentApi.md#CreateAttachment) | **POST** /api/v1/attachments | 
[**DeleteAttachment**](AttachmentApi.md#DeleteAttachment) | **DELETE** /api/v1/attachments/{id} | 
[**GetAttachment**](AttachmentApi.md#GetAttachment) | **GET** /api/v1/attachments/{id} | 
[**ListAttachments**](AttachmentApi.md#ListAttachments) | **GET** /api/v1/attachments/ | 
[**SaveAttachmentOcrText**](AttachmentApi.md#SaveAttachmentOcrText) | **PUT** /api/v1/attachments/{attachment_id}/ocr-text | Persist client-side OCR output for an attachment.


# **AttachmentRestore**
> Attachment AttachmentRestore(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- AttachmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AttachmentRestore(var_iddata_file = "result.txt")
result <- api_instance$AttachmentRestore(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

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
| **200** | Restored |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **CreateAttachment**
> Attachment CreateAttachment(attachment_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_attachment_create <- AttachmentCreate$new("fileName_example", "originalName_example", "contactId_example", 123, "mimeType_example", "pdfaPath_example", "sha256Hash_example", "uploadedBy_example") # AttachmentCreate | 

api_instance <- AttachmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateAttachment(var_attachment_createdata_file = "result.txt")
result <- api_instance$CreateAttachment(var_attachment_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_create** | [**AttachmentCreate**](AttachmentCreate.md)|  | 

### Return type

[**Attachment**](Attachment.md)

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

# **DeleteAttachment**
> DeleteAttachment(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- AttachmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteAttachment(var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

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

# **GetAttachment**
> Attachment GetAttachment(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- AttachmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAttachment(var_iddata_file = "result.txt")
result <- api_instance$GetAttachment(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

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
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **ListAttachments**
> array[Attachment] ListAttachments(page = var.page, page_size = var.page_size, contact_id = var.contact_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_contact_id <- "contact_id_example" # character |  (Optional)

api_instance <- AttachmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListAttachments(page = var_page, page_size = var_page_size, contact_id = var_contact_iddata_file = "result.txt")
result <- api_instance$ListAttachments(page = var_page, page_size = var_page_size, contact_id = var_contact_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **contact_id** | **character**|  | [optional] 

### Return type

[**array[Attachment]**](Attachment.md)

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

# **SaveAttachmentOcrText**
> Attachment SaveAttachmentOcrText(attachment_id, ocr_text_request)

Persist client-side OCR output for an attachment.

### Example
```R
library(openapi)

# Persist client-side OCR output for an attachment.
#
# prepare function argument(s)
var_attachment_id <- "attachment_id_example" # character | 
var_ocr_text_request <- OcrTextRequest$new("ocrText_example") # OcrTextRequest | 

api_instance <- AttachmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SaveAttachmentOcrText(var_attachment_id, var_ocr_text_requestdata_file = "result.txt")
result <- api_instance$SaveAttachmentOcrText(var_attachment_id, var_ocr_text_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **character**|  | 
 **ocr_text_request** | [**OcrTextRequest**](OcrTextRequest.md)|  | 

### Return type

[**Attachment**](Attachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

