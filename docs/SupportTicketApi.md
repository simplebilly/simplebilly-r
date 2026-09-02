# SupportTicketApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateTicketApi**](SupportTicketApi.md#CreateTicketApi) | **POST** /api/v1/support/tickets | 
[**DeleteTicketApi**](SupportTicketApi.md#DeleteTicketApi) | **DELETE** /api/v1/support/tickets/{ticket_id} | 
[**GetTicketApi**](SupportTicketApi.md#GetTicketApi) | **GET** /api/v1/support/tickets/{ticket_id} | 
[**ListTicketsApi**](SupportTicketApi.md#ListTicketsApi) | **GET** /api/v1/support/tickets | 
[**UpdateTicketApi**](SupportTicketApi.md#UpdateTicketApi) | **PUT** /api/v1/support/tickets/{ticket_id} | 


# **CreateTicketApi**
> SupportTicket CreateTicketApi(create_ticket_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_create_ticket_request <- CreateTicketRequest$new("message_body_example", "subject_example", "channel_id_example", "channel_type_example", "customer_email_example", "customer_id_example", "customer_name_example", "external_id_example", "order_ref_example") # CreateTicketRequest | 

api_instance <- SupportTicketApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateTicketApi(var_create_ticket_requestdata_file = "result.txt")
result <- api_instance$CreateTicketApi(var_create_ticket_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_ticket_request** | [**CreateTicketRequest**](CreateTicketRequest.md)|  | 

### Return type

[**SupportTicket**](SupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Ticket created |  -  |

# **DeleteTicketApi**
> DeleteTicketApi(ticket_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_ticket_id <- "ticket_id_example" # character | 

api_instance <- SupportTicketApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteTicketApi(var_ticket_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticket_id** | **character**|  | 

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
| **204** | Ticket deleted |  -  |

# **GetTicketApi**
> SupportTicket GetTicketApi(ticket_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_ticket_id <- "ticket_id_example" # character | 

api_instance <- SupportTicketApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTicketApi(var_ticket_iddata_file = "result.txt")
result <- api_instance$GetTicketApi(var_ticket_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticket_id** | **character**|  | 

### Return type

[**SupportTicket**](SupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Ticket detail |  -  |

# **ListTicketsApi**
> array[SupportTicket] ListTicketsApi(status = var.status, priority = var.priority, assigned_to = var.assigned_to, channel_type = var.channel_type, customer_id = var.customer_id, search = var.search, page = var.page, page_size = var.page_size)



### Example
```R
library(openapi)

# prepare function argument(s)
var_status <- "status_example" # character |  (Optional)
var_priority <- "priority_example" # character |  (Optional)
var_assigned_to <- "assigned_to_example" # character |  (Optional)
var_channel_type <- "channel_type_example" # character |  (Optional)
var_customer_id <- "customer_id_example" # character |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)

api_instance <- SupportTicketApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListTicketsApi(status = var_status, priority = var_priority, assigned_to = var_assigned_to, channel_type = var_channel_type, customer_id = var_customer_id, search = var_search, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$ListTicketsApi(status = var_status, priority = var_priority, assigned_to = var_assigned_to, channel_type = var_channel_type, customer_id = var_customer_id, search = var_search, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **character**|  | [optional] 
 **priority** | **character**|  | [optional] 
 **assigned_to** | **character**|  | [optional] 
 **channel_type** | **character**|  | [optional] 
 **customer_id** | **character**|  | [optional] 
 **search** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 

### Return type

[**array[SupportTicket]**](SupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tickets list |  -  |

# **UpdateTicketApi**
> SupportTicket UpdateTicketApi(ticket_id, support_ticket_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_ticket_id <- "ticket_id_example" # character | 
var_support_ticket_update <- SupportTicketUpdate$new("assignedTo_example", "channelId_example", SupportChannelType$new(), "closedAt_example", "createdAt_example", "customerEmail_example", "customerId_example", "customerName_example", "externalId_example", "firstMessageAt_example", "lastMessageAt_example", "leadId_example", 123, "orderRef_example", TicketPriority$new(), "resolution_example", SupportTicketStatus$new(), "subject_example", TODO, "tenantId_example", "updatedAt_example") # SupportTicketUpdate | 

api_instance <- SupportTicketApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateTicketApi(var_ticket_id, var_support_ticket_updatedata_file = "result.txt")
result <- api_instance$UpdateTicketApi(var_ticket_id, var_support_ticket_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticket_id** | **character**|  | 
 **support_ticket_update** | [**SupportTicketUpdate**](SupportTicketUpdate.md)|  | 

### Return type

[**SupportTicket**](SupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Ticket updated |  -  |

