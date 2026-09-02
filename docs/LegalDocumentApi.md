# LegalDocumentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetLegalDocuments**](LegalDocumentApi.md#GetLegalDocuments) | **GET** /api/v1/legal/documents | List all legal documents of the tenant. Missing documents are seeded from the default texts (with tenant placeholders replaced) on first access.
[**ResetLegalDocuments**](LegalDocumentApi.md#ResetLegalDocuments) | **POST** /api/v1/legal/documents/reset | Restore default texts for all documents (or a single doc_type/lang when the optional filter is given). Returns the full tenant list.
[**UpsertLegalDocuments**](LegalDocumentApi.md#UpsertLegalDocuments) | **PUT** /api/v1/legal/documents | Upsert legal documents per (doc_type, lang). Returns the full tenant list.


# **GetLegalDocuments**
> array[LegalDocument] GetLegalDocuments()

List all legal documents of the tenant. Missing documents are seeded from the default texts (with tenant placeholders replaced) on first access.

### Example
```R
library(openapi)

# List all legal documents of the tenant. Missing documents are seeded from the default texts (with tenant placeholders replaced) on first access.
#

api_instance <- LegalDocumentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetLegalDocuments(data_file = "result.txt")
result <- api_instance$GetLegalDocuments()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[LegalDocument]**](LegalDocument.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | All legal documents of the tenant |  -  |
| **500** | Internal server error |  -  |

# **ResetLegalDocuments**
> array[LegalDocument] ResetLegalDocuments(legal_document_reset)

Restore default texts for all documents (or a single doc_type/lang when the optional filter is given). Returns the full tenant list.

### Example
```R
library(openapi)

# Restore default texts for all documents (or a single doc_type/lang when the optional filter is given). Returns the full tenant list.
#
# prepare function argument(s)
var_legal_document_reset <- LegalDocumentReset$new("docType_example", "lang_example") # LegalDocumentReset | 

api_instance <- LegalDocumentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ResetLegalDocuments(var_legal_document_resetdata_file = "result.txt")
result <- api_instance$ResetLegalDocuments(var_legal_document_reset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **legal_document_reset** | [**LegalDocumentReset**](LegalDocumentReset.md)|  | 

### Return type

[**array[LegalDocument]**](LegalDocument.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Reset legal documents |  -  |
| **500** | Internal server error |  -  |

# **UpsertLegalDocuments**
> array[LegalDocument] UpsertLegalDocuments(legal_document_upsert)

Upsert legal documents per (doc_type, lang). Returns the full tenant list.

### Example
```R
library(openapi)

# Upsert legal documents per (doc_type, lang). Returns the full tenant list.
#
# prepare function argument(s)
var_legal_document_upsert <- c(LegalDocumentUpsert$new("content_example", "docType_example", "lang_example", "title_example")) # array[LegalDocumentUpsert] | 

api_instance <- LegalDocumentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpsertLegalDocuments(var_legal_document_upsertdata_file = "result.txt")
result <- api_instance$UpsertLegalDocuments(var_legal_document_upsert)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **legal_document_upsert** | list( [**LegalDocumentUpsert**](LegalDocumentUpsert.md) )|  | 

### Return type

[**array[LegalDocument]**](LegalDocument.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Saved legal documents |  -  |
| **500** | Internal server error |  -  |

