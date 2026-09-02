# ListOpenItemsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ListOpenItemsApi**](ListOpenItemsApi.md#ListOpenItemsApi) | **GET** /api/v1/bookkeeping/open-items | 


# **ListOpenItemsApi**
> array[OpenItem] ListOpenItemsApi(reminder_level1_days = var.reminder_level1_days, reminder_level2_days = var.reminder_level2_days, reminder_level3_days = var.reminder_level3_days, customer_id = var.customer_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_reminder_level1_days <- 56 # integer |  (Optional)
var_reminder_level2_days <- 56 # integer |  (Optional)
var_reminder_level3_days <- 56 # integer |  (Optional)
var_customer_id <- "customer_id_example" # character |  (Optional)

api_instance <- ListOpenItemsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListOpenItemsApi(reminder_level1_days = var_reminder_level1_days, reminder_level2_days = var_reminder_level2_days, reminder_level3_days = var_reminder_level3_days, customer_id = var_customer_iddata_file = "result.txt")
result <- api_instance$ListOpenItemsApi(reminder_level1_days = var_reminder_level1_days, reminder_level2_days = var_reminder_level2_days, reminder_level3_days = var_reminder_level3_days, customer_id = var_customer_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminder_level1_days** | **integer**|  | [optional] 
 **reminder_level2_days** | **integer**|  | [optional] 
 **reminder_level3_days** | **integer**|  | [optional] 
 **customer_id** | **character**|  | [optional] 

### Return type

[**array[OpenItem]**](OpenItem.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of open invoices |  -  |
| **500** | Internal server error |  -  |

