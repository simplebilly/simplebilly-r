# DeliveryAppointmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateDeliveryAppointment**](DeliveryAppointmentApi.md#CreateDeliveryAppointment) | **POST** /api/v1/delivery-appointments | 
[**DeleteDeliveryAppointment**](DeliveryAppointmentApi.md#DeleteDeliveryAppointment) | **DELETE** /api/v1/delivery-appointments/{appointment_id} | 
[**GetDeliveryAppointment**](DeliveryAppointmentApi.md#GetDeliveryAppointment) | **GET** /api/v1/delivery-appointments/{appointment_id} | 
[**GetPublicDeliveryAppointmentStatus**](DeliveryAppointmentApi.md#GetPublicDeliveryAppointmentStatus) | **GET** /api/v1/public/delivery-appointments/status | Supplier/carrier checks appointment status (public, no auth). The appointment is only revealed when email AND token match.
[**ListDeliveryAppointments**](DeliveryAppointmentApi.md#ListDeliveryAppointments) | **GET** /api/v1/delivery-appointments | 
[**RequestPublicDeliveryAppointment**](DeliveryAppointmentApi.md#RequestPublicDeliveryAppointment) | **POST** /api/v1/public/delivery-appointments/request | Supplier/carrier requests an inbound delivery slot (public, no auth). The tenant is derived from the warehouse found by &#x60;code&#x60; — never from the request.
[**UpdateDeliveryAppointment**](DeliveryAppointmentApi.md#UpdateDeliveryAppointment) | **PUT** /api/v1/delivery-appointments/{appointment_id} | 
[**UpdateDeliveryAppointmentStatus**](DeliveryAppointmentApi.md#UpdateDeliveryAppointmentStatus) | **PUT** /api/v1/delivery-appointments/{appointment_id}/status | 


# **CreateDeliveryAppointment**
> DeliveryAppointment CreateDeliveryAppointment(delivery_appointment_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_delivery_appointment_create <- DeliveryAppointmentCreate$new("email_example", "requestedDate_example", DeliveryAppointmentStatus$new(), "supplierName_example", "warehouseId_example", "notes_example", "phone_example", "timeSlot_example") # DeliveryAppointmentCreate | 

api_instance <- DeliveryAppointmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateDeliveryAppointment(var_delivery_appointment_createdata_file = "result.txt")
result <- api_instance$CreateDeliveryAppointment(var_delivery_appointment_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_appointment_create** | [**DeliveryAppointmentCreate**](DeliveryAppointmentCreate.md)|  | 

### Return type

[**DeliveryAppointment**](DeliveryAppointment.md)

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

# **DeleteDeliveryAppointment**
> DeleteDeliveryAppointment(appointment_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_appointment_id <- "appointment_id_example" # character | 

api_instance <- DeliveryAppointmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteDeliveryAppointment(var_appointment_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointment_id** | **character**|  | 

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

# **GetDeliveryAppointment**
> DeliveryAppointment GetDeliveryAppointment(appointment_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_appointment_id <- "appointment_id_example" # character | 

api_instance <- DeliveryAppointmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDeliveryAppointment(var_appointment_iddata_file = "result.txt")
result <- api_instance$GetDeliveryAppointment(var_appointment_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointment_id** | **character**|  | 

### Return type

[**DeliveryAppointment**](DeliveryAppointment.md)

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

# **GetPublicDeliveryAppointmentStatus**
> PublicDeliveryAppointmentStatusResponse GetPublicDeliveryAppointmentStatus(appointment_id, email, token)

Supplier/carrier checks appointment status (public, no auth). The appointment is only revealed when email AND token match.

### Example
```R
library(openapi)

# Supplier/carrier checks appointment status (public, no auth). The appointment is only revealed when email AND token match.
#
# prepare function argument(s)
var_appointment_id <- "appointment_id_example" # character | 
var_email <- "email_example" # character | 
var_token <- "token_example" # character | 

api_instance <- DeliveryAppointmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPublicDeliveryAppointmentStatus(var_appointment_id, var_email, var_tokendata_file = "result.txt")
result <- api_instance$GetPublicDeliveryAppointmentStatus(var_appointment_id, var_email, var_token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointment_id** | **character**|  | 
 **email** | **character**|  | 
 **token** | **character**|  | 

### Return type

[**PublicDeliveryAppointmentStatusResponse**](PublicDeliveryAppointmentStatusResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Appointment status |  -  |
| **404** | Appointment not found or credentials mismatch |  -  |
| **500** | Internal server error |  -  |

# **ListDeliveryAppointments**
> array[DeliveryAppointment] ListDeliveryAppointments(page = var.page, page_size = var.page_size, status = var.status, warehouse_id = var.warehouse_id, from = var.from, to = var.to)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_warehouse_id <- "warehouse_id_example" # character |  (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)

api_instance <- DeliveryAppointmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListDeliveryAppointments(page = var_page, page_size = var_page_size, status = var_status, warehouse_id = var_warehouse_id, from = var_from, to = var_todata_file = "result.txt")
result <- api_instance$ListDeliveryAppointments(page = var_page, page_size = var_page_size, status = var_status, warehouse_id = var_warehouse_id, from = var_from, to = var_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **page_size** | **integer**|  | [optional] 
 **status** | **character**|  | [optional] 
 **warehouse_id** | **character**|  | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 

### Return type

[**array[DeliveryAppointment]**](DeliveryAppointment.md)

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

# **RequestPublicDeliveryAppointment**
> PublicDeliveryAppointmentResponse RequestPublicDeliveryAppointment(public_delivery_appointment_request)

Supplier/carrier requests an inbound delivery slot (public, no auth). The tenant is derived from the warehouse found by `code` — never from the request.

### Example
```R
library(openapi)

# Supplier/carrier requests an inbound delivery slot (public, no auth). The tenant is derived from the warehouse found by `code` — never from the request.
#
# prepare function argument(s)
var_public_delivery_appointment_request <- PublicDeliveryAppointmentRequest$new("email_example", "requestedDate_example", "supplierName_example", "warehouseCode_example", "notes_example", "timeSlot_example") # PublicDeliveryAppointmentRequest | 

api_instance <- DeliveryAppointmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RequestPublicDeliveryAppointment(var_public_delivery_appointment_requestdata_file = "result.txt")
result <- api_instance$RequestPublicDeliveryAppointment(var_public_delivery_appointment_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_delivery_appointment_request** | [**PublicDeliveryAppointmentRequest**](PublicDeliveryAppointmentRequest.md)|  | 

### Return type

[**PublicDeliveryAppointmentResponse**](PublicDeliveryAppointmentResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Appointment requested |  -  |
| **404** | Warehouse not found |  -  |
| **500** | Internal server error |  -  |

# **UpdateDeliveryAppointment**
> DeliveryAppointment UpdateDeliveryAppointment(appointment_id, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_appointment_id <- "appointment_id_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- DeliveryAppointmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateDeliveryAppointment(var_appointment_id, var_bodydata_file = "result.txt")
result <- api_instance$UpdateDeliveryAppointment(var_appointment_id, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointment_id** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**DeliveryAppointment**](DeliveryAppointment.md)

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

# **UpdateDeliveryAppointmentStatus**
> DeliveryAppointment UpdateDeliveryAppointmentStatus(appointment_id, appointment_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_appointment_id <- "appointment_id_example" # character | 
var_appointment_status_update <- AppointmentStatusUpdate$new("status_example") # AppointmentStatusUpdate | 

api_instance <- DeliveryAppointmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateDeliveryAppointmentStatus(var_appointment_id, var_appointment_status_updatedata_file = "result.txt")
result <- api_instance$UpdateDeliveryAppointmentStatus(var_appointment_id, var_appointment_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointment_id** | **character**|  | 
 **appointment_status_update** | [**AppointmentStatusUpdate**](AppointmentStatusUpdate.md)|  | 

### Return type

[**DeliveryAppointment**](DeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad request / invalid transition |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

