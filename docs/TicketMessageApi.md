# TicketMessageApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ListMessagesApi**](TicketMessageApi.md#ListMessagesApi) | **GET** /api/v1/support/tickets/{ticket_id}/messages | 
[**SendMessageApi**](TicketMessageApi.md#SendMessageApi) | **POST** /api/v1/support/tickets/{ticket_id}/messages | 


# **ListMessagesApi**
> array[TicketMessage] ListMessagesApi(ticket_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_ticket_id <- "ticket_id_example" # character | 

api_instance <- TicketMessageApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListMessagesApi(var_ticket_iddata_file = "result.txt")
result <- api_instance$ListMessagesApi(var_ticket_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticket_id** | **character**|  | 

### Return type

[**array[TicketMessage]**](TicketMessage.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Messages for a ticket |  -  |

# **SendMessageApi**
> TicketMessage SendMessageApi(ticket_id, send_message_dto)



### Example
```R
library(openapi)

# prepare function argument(s)
var_ticket_id <- "ticket_id_example" # character | 
var_send_message_dto <- SendMessageDto$new("body_example", "is_internal_example") # SendMessageDto | 

api_instance <- TicketMessageApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SendMessageApi(var_ticket_id, var_send_message_dtodata_file = "result.txt")
result <- api_instance$SendMessageApi(var_ticket_id, var_send_message_dto)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticket_id** | **character**|  | 
 **send_message_dto** | [**SendMessageDto**](SendMessageDto.md)|  | 

### Return type

[**TicketMessage**](TicketMessage.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Message sent |  -  |

