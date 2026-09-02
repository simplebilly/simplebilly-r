# PosApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PosBilling**](PosApi.md#PosBilling) | **GET** /api/pos/billing | 
[**PosCreateOrder**](PosApi.md#PosCreateOrder) | **POST** /api/pos/orders | 
[**PosCreateRegister**](PosApi.md#PosCreateRegister) | **POST** /api/pos/registers | 
[**PosCreateTable**](PosApi.md#PosCreateTable) | **POST** /api/pos/tables | 
[**PosDisableRegister**](PosApi.md#PosDisableRegister) | **POST** /api/pos/registers/{id}/disable | 
[**PosFreeTable**](PosApi.md#PosFreeTable) | **POST** /api/pos/tables/{id}/free | 
[**PosKasseClosing**](PosApi.md#PosKasseClosing) | **POST** /api/pos/kasse/closing | 
[**PosKasseEntries**](PosApi.md#PosKasseEntries) | **GET** /api/pos/kasse/entries | 
[**PosKasseExport**](PosApi.md#PosKasseExport) | **GET** /api/pos/kasse/export | 
[**PosKassePayInOut**](PosApi.md#PosKassePayInOut) | **POST** /api/pos/kasse/pay-in-out | 
[**PosListOrders**](PosApi.md#PosListOrders) | **GET** /api/pos/orders | 
[**PosListProducts**](PosApi.md#PosListProducts) | **GET** /api/pos/products | 
[**PosListRegisters**](PosApi.md#PosListRegisters) | **GET** /api/pos/registers | 
[**PosListTables**](PosApi.md#PosListTables) | **GET** /api/pos/tables | 
[**PosOrderPrint**](PosApi.md#PosOrderPrint) | **GET** /api/pos/orders/{order_number}/print | 
[**PosOrderReceipt**](PosApi.md#PosOrderReceipt) | **GET** /api/pos/orders/{order_number}/receipt | 
[**PosPayOrder**](PosApi.md#PosPayOrder) | **POST** /api/pos/orders/{order_number}/pay | 
[**PosSumupCheckout**](PosApi.md#PosSumupCheckout) | **POST** /api/pos/sumup/checkout | 


# **PosBilling**
> AnyType PosBilling()



### Example
```R
library(openapi)


api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosBilling(data_file = "result.txt")
result <- api_instance$PosBilling()
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
| **200** |  |  -  |

# **PosCreateOrder**
> AnyType PosCreateOrder(body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosCreateOrder(var_bodydata_file = "result.txt")
result <- api_instance$PosCreateOrder(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

# **PosCreateRegister**
> PosRegister PosCreateRegister(pos_register_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_pos_register_create <- PosRegisterCreate$new("name_example", PosRegisterStatus$new()) # PosRegisterCreate | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosCreateRegister(var_pos_register_createdata_file = "result.txt")
result <- api_instance$PosCreateRegister(var_pos_register_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pos_register_create** | [**PosRegisterCreate**](PosRegisterCreate.md)|  | 

### Return type

[**PosRegister**](PosRegister.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

# **PosCreateTable**
> PosTable PosCreateTable(pos_table_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_pos_table_create <- PosTableCreate$new("name_example", "currentOrderNumber_example", PosTableStatus$new()) # PosTableCreate | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosCreateTable(var_pos_table_createdata_file = "result.txt")
result <- api_instance$PosCreateTable(var_pos_table_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pos_table_create** | [**PosTableCreate**](PosTableCreate.md)|  | 

### Return type

[**PosTable**](PosTable.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

# **PosDisableRegister**
> PosRegister PosDisableRegister(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosDisableRegister(var_iddata_file = "result.txt")
result <- api_instance$PosDisableRegister(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**PosRegister**](PosRegister.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PosFreeTable**
> PosTable PosFreeTable(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosFreeTable(var_iddata_file = "result.txt")
result <- api_instance$PosFreeTable(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**PosTable**](PosTable.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PosKasseClosing**
> AnyType PosKasseClosing(body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosKasseClosing(var_bodydata_file = "result.txt")
result <- api_instance$PosKasseClosing(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PosKasseEntries**
> AnyType PosKasseEntries()



### Example
```R
library(openapi)


api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosKasseEntries(data_file = "result.txt")
result <- api_instance$PosKasseEntries()
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
| **200** |  |  -  |

# **PosKasseExport**
> AnyType PosKasseExport()



### Example
```R
library(openapi)


api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosKasseExport(data_file = "result.txt")
result <- api_instance$PosKasseExport()
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
| **200** |  |  -  |

# **PosKassePayInOut**
> AnyType PosKassePayInOut(body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosKassePayInOut(var_bodydata_file = "result.txt")
result <- api_instance$PosKassePayInOut(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PosListOrders**
> AnyType PosListOrders(status = var.status)



### Example
```R
library(openapi)

# prepare function argument(s)
var_status <- "status_example" # character | Filter by order status (Optional)

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosListOrders(status = var_statusdata_file = "result.txt")
result <- api_instance$PosListOrders(status = var_status)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **character**| Filter by order status | [optional] 

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
| **200** |  |  -  |

# **PosListProducts**
> AnyType PosListProducts(q = var.q)



### Example
```R
library(openapi)

# prepare function argument(s)
var_q <- "q_example" # character | Product search (Optional)

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosListProducts(q = var_qdata_file = "result.txt")
result <- api_instance$PosListProducts(q = var_q)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| Product search | [optional] 

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
| **200** |  |  -  |

# **PosListRegisters**
> array[PosRegister] PosListRegisters()



### Example
```R
library(openapi)


api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosListRegisters(data_file = "result.txt")
result <- api_instance$PosListRegisters()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[PosRegister]**](PosRegister.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PosListTables**
> array[PosTable] PosListTables()



### Example
```R
library(openapi)


api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosListTables(data_file = "result.txt")
result <- api_instance$PosListTables()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[PosTable]**](PosTable.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PosOrderPrint**
> AnyType PosOrderPrint(order_number)



### Example
```R
library(openapi)

# prepare function argument(s)
var_order_number <- "order_number_example" # character | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosOrderPrint(var_order_numberdata_file = "result.txt")
result <- api_instance$PosOrderPrint(var_order_number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **character**|  | 

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
| **200** |  |  -  |

# **PosOrderReceipt**
> AnyType PosOrderReceipt(order_number)



### Example
```R
library(openapi)

# prepare function argument(s)
var_order_number <- "order_number_example" # character | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosOrderReceipt(var_order_numberdata_file = "result.txt")
result <- api_instance$PosOrderReceipt(var_order_number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **character**|  | 

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
| **200** |  |  -  |

# **PosPayOrder**
> AnyType PosPayOrder(order_number, body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_order_number <- "order_number_example" # character | 
var_body <- TODO # AnyType | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosPayOrder(var_order_number, var_bodydata_file = "result.txt")
result <- api_instance$PosPayOrder(var_order_number, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **character**|  | 
 **body** | **AnyType**|  | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **PosSumupCheckout**
> AnyType PosSumupCheckout(body)



### Example
```R
library(openapi)

# prepare function argument(s)
var_body <- TODO # AnyType | 

api_instance <- PosApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PosSumupCheckout(var_bodydata_file = "result.txt")
result <- api_instance$PosSumupCheckout(var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType**|  | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

