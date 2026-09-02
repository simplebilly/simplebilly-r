# ContactApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ContactSchema**](ContactApi.md#ContactSchema) | **GET** /api/v1/contacts/schema | Serve JSON Schema for client-side validation
[**ContactTimeline**](ContactApi.md#ContactTimeline) | **GET** /api/v1/contacts/{contact_id}/timeline | Get the full per-contact timeline (Xentral §4.6/4.7).
[**CreateContact**](ContactApi.md#CreateContact) | **POST** /api/v1/contacts | Create contact
[**DeleteContact**](ContactApi.md#DeleteContact) | **DELETE** /api/v1/contacts/{contact_id} | Soft-delete contact
[**GetContact**](ContactApi.md#GetContact) | **GET** /api/v1/contacts/{contact_id} | Get single contact
[**ListContacts**](ContactApi.md#ListContacts) | **GET** /api/v1/contacts | List contacts with search, type filter, and pagination
[**SalesVolume**](ContactApi.md#SalesVolume) | **GET** /api/v1/contacts/sales-volume | Sales volume per contact
[**UpdateContact**](ContactApi.md#UpdateContact) | **PUT** /api/v1/contacts/{contact_id} | Update contact


# **ContactSchema**
> AnyType ContactSchema()

Serve JSON Schema for client-side validation

### Example
```R
library(openapi)

# Serve JSON Schema for client-side validation
#

api_instance <- ContactApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ContactSchema(data_file = "result.txt")
result <- api_instance$ContactSchema()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | JSON Schema for Contact |  -  |

# **ContactTimeline**
> ContactTimelineResponse ContactTimeline(contact_id)

Get the full per-contact timeline (Xentral §4.6/4.7).

Aggregates communications, quotations, orders, invoices and uploaded documents for a contact, merged into a single reverse-chronological feed.

### Example
```R
library(openapi)

# Get the full per-contact timeline (Xentral §4.6/4.7).
#
# prepare function argument(s)
var_contact_id <- "contact_id_example" # character | 

api_instance <- ContactApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ContactTimeline(var_contact_iddata_file = "result.txt")
result <- api_instance$ContactTimeline(var_contact_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **character**|  | 

### Return type

[**ContactTimelineResponse**](ContactTimelineResponse.md)

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

# **CreateContact**
> Contact CreateContact(body)

Create contact

### Example
```R
library(openapi)

# Create contact
#
# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- ContactApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateContact(var_bodydata_file = "result.txt")
result <- api_instance$CreateContact(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |

# **DeleteContact**
> DeleteContact(contact_id)

Soft-delete contact

### Example
```R
library(openapi)

# Soft-delete contact
#
# prepare function argument(s)
var_contact_id <- "contact_id_example" # character | 

api_instance <- ContactApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteContact(var_contact_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Deleted |  -  |

# **GetContact**
> Contact GetContact(contact_id)

Get single contact

### Example
```R
library(openapi)

# Get single contact
#
# prepare function argument(s)
var_contact_id <- "contact_id_example" # character | 

api_instance <- ContactApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetContact(var_contact_iddata_file = "result.txt")
result <- api_instance$GetContact(var_contact_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **character**|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Contact |  -  |
| **404** | Not found |  -  |

# **ListContacts**
> array[Contact] ListContacts(page = var.page, page_size = var.page_size, search = var.search, contact_type = var.contact_type, tag = var.tag)

List contacts with search, type filter, and pagination

### Example
```R
library(openapi)

# List contacts with search, type filter, and pagination
#
# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_contact_type <- "contact_type_example" # character |  (Optional)
var_tag <- "tag_example" # character |  (Optional)

api_instance <- ContactApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListContacts(page = var_page, page_size = var_page_size, search = var_search, contact_type = var_contact_type, tag = var_tagdata_file = "result.txt")
result <- api_instance$ListContacts(page = var_page, page_size = var_page_size, search = var_search, contact_type = var_contact_type, tag = var_tag)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **search** | **character**|  | [optional] 
 **contact_type** | **character**|  | [optional] 
 **tag** | **character**|  | [optional] 

### Return type

[**array[Contact]**](Contact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of contacts |  -  |

# **SalesVolume**
> SalesVolumeReport SalesVolume(page = var.page, page_size = var.page_size, search = var.search, contact_type = var.contact_type, tag = var.tag)

Sales volume per contact

### Example
```R
library(openapi)

# Sales volume per contact
#
# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_contact_type <- "contact_type_example" # character |  (Optional)
var_tag <- "tag_example" # character |  (Optional)

api_instance <- ContactApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SalesVolume(page = var_page, page_size = var_page_size, search = var_search, contact_type = var_contact_type, tag = var_tagdata_file = "result.txt")
result <- api_instance$SalesVolume(page = var_page, page_size = var_page_size, search = var_search, contact_type = var_contact_type, tag = var_tag)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **search** | **character**|  | [optional] 
 **contact_type** | **character**|  | [optional] 
 **tag** | **character**|  | [optional] 

### Return type

[**SalesVolumeReport**](SalesVolumeReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sales volume report |  -  |

# **UpdateContact**
> Contact UpdateContact(contact_id, body)

Update contact

### Example
```R
library(openapi)

# Update contact
#
# prepare function argument(s)
var_contact_id <- "contact_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- ContactApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateContact(var_contact_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateContact(var_contact_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated |  -  |

