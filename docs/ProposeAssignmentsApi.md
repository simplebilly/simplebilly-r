# ProposeAssignmentsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ProposeAssignmentsApi**](ProposeAssignmentsApi.md#ProposeAssignmentsApi) | **GET** /api/v1/bookkeeping/propose-assignments | 


# **ProposeAssignmentsApi**
> array[ProposedAssignment] ProposeAssignmentsApi(min_confidence = var.min_confidence, customer_id = var.customer_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_min_confidence <- 3.4 # numeric |  (Optional)
var_customer_id <- "customer_id_example" # character |  (Optional)

api_instance <- ProposeAssignmentsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ProposeAssignmentsApi(min_confidence = var_min_confidence, customer_id = var_customer_iddata_file = "result.txt")
result <- api_instance$ProposeAssignmentsApi(min_confidence = var_min_confidence, customer_id = var_customer_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_confidence** | **numeric**|  | [optional] 
 **customer_id** | **character**|  | [optional] 

### Return type

[**array[ProposedAssignment]**](ProposedAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Proposed payment to invoice assignments |  -  |
| **500** | Internal server error |  -  |

