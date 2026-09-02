# ShipmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateShipment**](ShipmentApi.md#CreateShipment) | **POST** /api/v1/shipments | 
[**CreateShipmentFromOrder**](ShipmentApi.md#CreateShipmentFromOrder) | **POST** /api/v1/orders/{order_number}/shipments | Create a real shipment for an order: calls the configured carrier&#39;s label API, stores the returned tracking/label on a new shipment row, and marks the order as shipped.
[**DeleteShipment**](ShipmentApi.md#DeleteShipment) | **DELETE** /api/v1/shipments/{shipment_id} | 
[**GetShipment**](ShipmentApi.md#GetShipment) | **GET** /api/v1/shipments/{shipment_id} | 
[**ListShipments**](ShipmentApi.md#ListShipments) | **GET** /api/v1/shipments | 
[**TrackOrderPublic**](ShipmentApi.md#TrackOrderPublic) | **POST** /api/v1/public/track | Customer-facing tracking lookup: order number + email → shipment status and live carrier events. No auth (public storefront API).
[**TrackShipmentApi**](ShipmentApi.md#TrackShipmentApi) | **GET** /api/v1/shipments/{shipment_id}/tracking | 
[**UpdateShipmentStatus**](ShipmentApi.md#UpdateShipmentStatus) | **PUT** /api/v1/shipments/{shipment_id}/status | 


# **CreateShipment**
> Shipment CreateShipment(shipment)



### Example
```R
library(openapi)

# prepare function argument(s)
var_shipment <- Shipment$new("orderId_example", "shipmentDate_example", "shippingCarrier_example", "status_example", "deliveredAt_example", "labelUrl_example", TODO, TODO, "shippingCost_example", "shippingMethod_example", "signedBy_example", TODO, "trackingNumber_example", "trackingUrl_example", 123) # Shipment | 

api_instance <- ShipmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateShipment(var_shipmentdata_file = "result.txt")
result <- api_instance$CreateShipment(var_shipment)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment** | [**Shipment**](Shipment.md)|  | 

### Return type

[**Shipment**](Shipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Shipment created |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **CreateShipmentFromOrder**
> Shipment CreateShipmentFromOrder(order_number, create_shipment_request)

Create a real shipment for an order: calls the configured carrier's label API, stores the returned tracking/label on a new shipment row, and marks the order as shipped.

### Example
```R
library(openapi)

# Create a real shipment for an order: calls the configured carrier's label API, stores the returned tracking/label on a new shipment row, and marks the order as shipped.
#
# prepare function argument(s)
var_order_number <- "order_number_example" # character | 
var_create_shipment_request <- CreateShipmentRequest$new("carrier_example", "service_example", 123) # CreateShipmentRequest | 

api_instance <- ShipmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateShipmentFromOrder(var_order_number, var_create_shipment_requestdata_file = "result.txt")
result <- api_instance$CreateShipmentFromOrder(var_order_number, var_create_shipment_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **character**|  | 
 **create_shipment_request** | [**CreateShipmentRequest**](CreateShipmentRequest.md)|  | 

### Return type

[**Shipment**](Shipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Shipment created via carrier API |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **DeleteShipment**
> DeleteShipment(shipment_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_shipment_id <- "shipment_id_example" # character | 

api_instance <- ShipmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteShipment(var_shipment_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **character**|  | 

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
| **204** | Shipment deleted |  -  |
| **404** | Shipment not found |  -  |
| **500** | Internal server error |  -  |

# **GetShipment**
> Shipment GetShipment(shipment_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_shipment_id <- "shipment_id_example" # character | 

api_instance <- ShipmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetShipment(var_shipment_iddata_file = "result.txt")
result <- api_instance$GetShipment(var_shipment_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **character**|  | 

### Return type

[**Shipment**](Shipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Shipment found |  -  |
| **404** | Shipment not found |  -  |
| **500** | Internal server error |  -  |

# **ListShipments**
> array[Shipment] ListShipments(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- ShipmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListShipments(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$ListShipments(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[Shipment]**](Shipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Shipments found |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **TrackOrderPublic**
> TrackOrderResponse TrackOrderPublic(track_order_request)

Customer-facing tracking lookup: order number + email → shipment status and live carrier events. No auth (public storefront API).

### Example
```R
library(openapi)

# Customer-facing tracking lookup: order number + email → shipment status and live carrier events. No auth (public storefront API).
#
# prepare function argument(s)
var_track_order_request <- TrackOrderRequest$new("email_example", "order_number_example") # TrackOrderRequest | 

api_instance <- ShipmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TrackOrderPublic(var_track_order_requestdata_file = "result.txt")
result <- api_instance$TrackOrderPublic(var_track_order_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **track_order_request** | [**TrackOrderRequest**](TrackOrderRequest.md)|  | 

### Return type

[**TrackOrderResponse**](TrackOrderResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order tracking info |  -  |
| **404** | Order not found or email mismatch |  -  |
| **500** | Internal server error |  -  |

# **TrackShipmentApi**
> TrackingInfo TrackShipmentApi(shipment_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_shipment_id <- "shipment_id_example" # character | 

api_instance <- ShipmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TrackShipmentApi(var_shipment_iddata_file = "result.txt")
result <- api_instance$TrackShipmentApi(var_shipment_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **character**|  | 

### Return type

[**TrackingInfo**](TrackingInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Live tracking info |  -  |
| **404** | Shipment not found |  -  |
| **500** | Internal server error |  -  |

# **UpdateShipmentStatus**
> Shipment UpdateShipmentStatus(shipment_id, shipment_status_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_shipment_id <- "shipment_id_example" # character | 
var_shipment_status_update <- ShipmentStatusUpdate$new("status_example", "delivered_at_example", "signed_by_example", "tracking_number_example") # ShipmentStatusUpdate | 

api_instance <- ShipmentApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateShipmentStatus(var_shipment_id, var_shipment_status_updatedata_file = "result.txt")
result <- api_instance$UpdateShipmentStatus(var_shipment_id, var_shipment_status_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **character**|  | 
 **shipment_status_update** | [**ShipmentStatusUpdate**](ShipmentStatusUpdate.md)|  | 

### Return type

[**Shipment**](Shipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Status updated |  -  |
| **404** | Shipment not found |  -  |
| **500** | Internal server error |  -  |

