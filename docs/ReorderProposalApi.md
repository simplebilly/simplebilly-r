# ReorderProposalApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApplyReorderProposal**](ReorderProposalApi.md#ApplyReorderProposal) | **POST** /api/v1/reorder-proposals/apply | Convert a reorder proposal into a draft purchase order.
[**GetReorderProposal**](ReorderProposalApi.md#GetReorderProposal) | **GET** /api/v1/reorder-proposals | 


# **ApplyReorderProposal**
> AnyType ApplyReorderProposal(configured_only = var.configured_only, warehouse_id = var.warehouse_id)

Convert a reorder proposal into a draft purchase order.

Returns the created purchase order id. Suggested line items are generated with the current reorder quantity per product.

### Example
```R
library(openapi)

# Convert a reorder proposal into a draft purchase order.
#
# prepare function argument(s)
var_configured_only <- "configured_only_example" # character | Only include products with a reorder point configured (`min_stock`). (Optional)
var_warehouse_id <- "warehouse_id_example" # character | Limit to a single warehouse id. (Optional)

api_instance <- ReorderProposalApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ApplyReorderProposal(configured_only = var_configured_only, warehouse_id = var_warehouse_iddata_file = "result.txt")
result <- api_instance$ApplyReorderProposal(configured_only = var_configured_only, warehouse_id = var_warehouse_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configured_only** | **character**| Only include products with a reorder point configured (&#x60;min_stock&#x60;). | [optional] 
 **warehouse_id** | **character**| Limit to a single warehouse id. | [optional] 

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
| **201** | Created |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **GetReorderProposal**
> ReorderProposalResponse GetReorderProposal(configured_only = var.configured_only, warehouse_id = var.warehouse_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_configured_only <- "configured_only_example" # character | Only include products with a reorder point configured (`min_stock`). (Optional)
var_warehouse_id <- "warehouse_id_example" # character | Limit to a single warehouse id. (Optional)

api_instance <- ReorderProposalApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetReorderProposal(configured_only = var_configured_only, warehouse_id = var_warehouse_iddata_file = "result.txt")
result <- api_instance$GetReorderProposal(configured_only = var_configured_only, warehouse_id = var_warehouse_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configured_only** | **character**| Only include products with a reorder point configured (&#x60;min_stock&#x60;). | [optional] 
 **warehouse_id** | **character**| Limit to a single warehouse id. | [optional] 

### Return type

[**ReorderProposalResponse**](ReorderProposalResponse.md)

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

