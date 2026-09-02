# LeadApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ListLeadsApi**](LeadApi.md#ListLeadsApi) | **GET** /api/v1/support/leads | 
[**UpdateLeadApi**](LeadApi.md#UpdateLeadApi) | **PUT** /api/v1/support/leads/{lead_id} | 


# **ListLeadsApi**
> array[Lead] ListLeadsApi(status = var.status, source = var.source, search = var.search, page = var.page, page_size = var.page_size)



### Example
```R
library(openapi)

# prepare function argument(s)
var_status <- "status_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)

api_instance <- LeadApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListLeadsApi(status = var_status, source = var_source, search = var_search, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$ListLeadsApi(status = var_status, source = var_source, search = var_search, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **character**|  | [optional] 
 **source** | **character**|  | [optional] 
 **search** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 

### Return type

[**array[Lead]**](Lead.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Leads list |  -  |

# **UpdateLeadApi**
> Lead UpdateLeadApi(lead_id, lead_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_lead_id <- "lead_id_example" # character | 
var_lead_update <- LeadUpdate$new("company_example", "convertedAt_example", "createdAt_example", "email_example", "firstContactAt_example", "name_example", "notes_example", "phone_example", 123, "source_example", LeadStatus$new(), TODO, "tenantId_example", "updatedAt_example") # LeadUpdate | 

api_instance <- LeadApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateLeadApi(var_lead_id, var_lead_updatedata_file = "result.txt")
result <- api_instance$UpdateLeadApi(var_lead_id, var_lead_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lead_id** | **character**|  | 
 **lead_update** | [**LeadUpdate**](LeadUpdate.md)|  | 

### Return type

[**Lead**](Lead.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Lead updated |  -  |

