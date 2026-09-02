# CustomerCommunicationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateCommunication**](CustomerCommunicationApi.md#CreateCommunication) | **POST** /api/v1/communications | 
[**CustomercommunicationRestore**](CustomerCommunicationApi.md#CustomercommunicationRestore) | **POST** /api/v1/communications/{communication_id}/restore | 
[**DeleteCommunication**](CustomerCommunicationApi.md#DeleteCommunication) | **DELETE** /api/v1/communications/{communication_id} | 
[**GetCommunication**](CustomerCommunicationApi.md#GetCommunication) | **GET** /api/v1/communications/{communication_id} | 
[**GetContactHistory**](CustomerCommunicationApi.md#GetContactHistory) | **GET** /api/v1/contacts/{contact_id}/communications | 
[**ListCommunications**](CustomerCommunicationApi.md#ListCommunications) | **GET** /api/v1/communications/ | 
[**UpdateCommunication**](CustomerCommunicationApi.md#UpdateCommunication) | **PUT** /api/v1/communications/{communication_id} | 


# **CreateCommunication**
> CustomerCommunication CreateCommunication(customer_communication_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_customer_communication_create <- CustomerCommunicationCreate$new(CommunicationChannel$new(), "contactId_example", CommunicationDirection$new(), "body_example", "counterparty_example", "occurredAt_example", "subject_example", TODO) # CustomerCommunicationCreate | 

api_instance <- CustomerCommunicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateCommunication(var_customer_communication_createdata_file = "result.txt")
result <- api_instance$CreateCommunication(var_customer_communication_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_communication_create** | [**CustomerCommunicationCreate**](CustomerCommunicationCreate.md)|  | 

### Return type

[**CustomerCommunication**](CustomerCommunication.md)

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

# **CustomercommunicationRestore**
> CustomerCommunication CustomercommunicationRestore(communication_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_communication_id <- "communication_id_example" # character | 

api_instance <- CustomerCommunicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CustomercommunicationRestore(var_communication_iddata_file = "result.txt")
result <- api_instance$CustomercommunicationRestore(var_communication_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communication_id** | **character**|  | 

### Return type

[**CustomerCommunication**](CustomerCommunication.md)

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

# **DeleteCommunication**
> DeleteCommunication(communication_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_communication_id <- "communication_id_example" # character | 

api_instance <- CustomerCommunicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteCommunication(var_communication_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communication_id** | **character**|  | 

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

# **GetCommunication**
> CustomerCommunication GetCommunication(communication_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_communication_id <- "communication_id_example" # character | 

api_instance <- CustomerCommunicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCommunication(var_communication_iddata_file = "result.txt")
result <- api_instance$GetCommunication(var_communication_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communication_id** | **character**|  | 

### Return type

[**CustomerCommunication**](CustomerCommunication.md)

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

# **GetContactHistory**
> ContactHistoryResponse GetContactHistory(contact_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_contact_id <- "contact_id_example" # character | 

api_instance <- CustomerCommunicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetContactHistory(var_contact_iddata_file = "result.txt")
result <- api_instance$GetContactHistory(var_contact_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **character**|  | 

### Return type

[**ContactHistoryResponse**](ContactHistoryResponse.md)

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

# **ListCommunications**
> array[CustomerCommunication] ListCommunications(page = var.page, page_size = var.page_size, contact_id = var.contact_id, channel = var.channel, direction = var.direction, from = var.from, to = var.to)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_contact_id <- "contact_id_example" # character | Filter history to a single contact. (Optional)
var_channel <- CommunicationChannel$new() # CommunicationChannel |  (Optional)
var_direction <- CommunicationDirection$new() # CommunicationDirection |  (Optional)
var_from <- "from_example" # character | Only include communications after this ISO date (inclusive). (Optional)
var_to <- "to_example" # character | Only include communications before this ISO date (inclusive). (Optional)

api_instance <- CustomerCommunicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListCommunications(page = var_page, page_size = var_page_size, contact_id = var_contact_id, channel = var_channel, direction = var_direction, from = var_from, to = var_todata_file = "result.txt")
result <- api_instance$ListCommunications(page = var_page, page_size = var_page_size, contact_id = var_contact_id, channel = var_channel, direction = var_direction, from = var_from, to = var_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **contact_id** | **character**| Filter history to a single contact. | [optional] 
 **channel** | [**CommunicationChannel**](.md)|  | [optional] 
 **direction** | [**CommunicationDirection**](.md)|  | [optional] 
 **from** | **character**| Only include communications after this ISO date (inclusive). | [optional] 
 **to** | **character**| Only include communications before this ISO date (inclusive). | [optional] 

### Return type

[**array[CustomerCommunication]**](CustomerCommunication.md)

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

# **UpdateCommunication**
> CustomerCommunication UpdateCommunication(communication_id, customer_communication_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_communication_id <- "communication_id_example" # character | 
var_customer_communication_update <- CustomerCommunicationUpdate$new("body_example", CommunicationChannel$new(), "contactId_example", "counterparty_example", CommunicationDirection$new(), "occurredAt_example", "subject_example", TODO) # CustomerCommunicationUpdate | 

api_instance <- CustomerCommunicationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateCommunication(var_communication_id, var_customer_communication_updatedata_file = "result.txt")
result <- api_instance$UpdateCommunication(var_communication_id, var_customer_communication_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communication_id** | **character**|  | 
 **customer_communication_update** | [**CustomerCommunicationUpdate**](CustomerCommunicationUpdate.md)|  | 

### Return type

[**CustomerCommunication**](CustomerCommunication.md)

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

