# SilentPartnerApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateSilentPartner**](SilentPartnerApi.md#CreateSilentPartner) | **POST** /api/v1/silent-partners | 
[**DeleteSilentPartner**](SilentPartnerApi.md#DeleteSilentPartner) | **DELETE** /api/v1/silent-partners/{id} | 
[**GetSilentPartner**](SilentPartnerApi.md#GetSilentPartner) | **GET** /api/v1/silent-partners/{id} | 
[**GetSilentPartners**](SilentPartnerApi.md#GetSilentPartners) | **GET** /api/v1/silent-partners/ | 
[**UpdateSilentPartner**](SilentPartnerApi.md#UpdateSilentPartner) | **PUT** /api/v1/silent-partners/{id} | 


# **CreateSilentPartner**
> SilentPartner CreateSilentPartner(silent_partner_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_silent_partner_create <- SilentPartnerCreate$new(InstrumentType$new(), "contractDate_example", "einlage_example", "gewinnquotePct_example", "gewinnvortrag_example", "kestPflichtig_example", "name_example", "notes_example", "verlustVerrechnungskonto_example", "verlustbeteiligung_example") # SilentPartnerCreate | 

api_instance <- SilentPartnerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateSilentPartner(var_silent_partner_createdata_file = "result.txt")
result <- api_instance$CreateSilentPartner(var_silent_partner_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **silent_partner_create** | [**SilentPartnerCreate**](SilentPartnerCreate.md)|  | 

### Return type

[**SilentPartner**](SilentPartner.md)

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

# **DeleteSilentPartner**
> DeleteSilentPartner(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- SilentPartnerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteSilentPartner(var_id)
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

# **GetSilentPartner**
> SilentPartner GetSilentPartner(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- SilentPartnerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSilentPartner(var_iddata_file = "result.txt")
result <- api_instance$GetSilentPartner(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**SilentPartner**](SilentPartner.md)

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

# **GetSilentPartners**
> array[SilentPartner] GetSilentPartners(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- SilentPartnerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSilentPartners(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetSilentPartners(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **search** | **character**|  | [optional] 
 **include_deleted** | **character**| Soft-delete entities: set true to include rows with &#x60;deleted_at&#x60; set. | [optional] 

### Return type

[**array[SilentPartner]**](SilentPartner.md)

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

# **UpdateSilentPartner**
> SilentPartner UpdateSilentPartner(id, silent_partner_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_silent_partner_update <- SilentPartnerUpdate$new("contractDate_example", "einlage_example", "gewinnquotePct_example", "gewinnvortrag_example", InstrumentType$new(), "kestPflichtig_example", "name_example", "notes_example", "verlustVerrechnungskonto_example", "verlustbeteiligung_example") # SilentPartnerUpdate | 

api_instance <- SilentPartnerApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateSilentPartner(var_id, var_silent_partner_updatedata_file = "result.txt")
result <- api_instance$UpdateSilentPartner(var_id, var_silent_partner_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **silent_partner_update** | [**SilentPartnerUpdate**](SilentPartnerUpdate.md)|  | 

### Return type

[**SilentPartner**](SilentPartner.md)

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

