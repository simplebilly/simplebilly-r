# TimeEntriesApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ClockInTimeEntry**](TimeEntriesApi.md#ClockInTimeEntry) | **POST** /api/v1/time-entries | Clock in for the authenticated user (resolved via their employee profile).
[**ClockOutTimeEntry**](TimeEntriesApi.md#ClockOutTimeEntry) | **PATCH** /api/v1/time-entries/{id} | Clock out an entry: the entry&#39;s owner, or anyone with &#x60;time_entries:write&#x60;.
[**GetLaborCosts**](TimeEntriesApi.md#GetLaborCosts) | **GET** /api/v1/labor-costs | Labor-cost report: worked hours aggregated per employee / order / day, valued at the employee&#39;s hourly cost rate.
[**ListTimeEntries**](TimeEntriesApi.md#ListTimeEntries) | **GET** /api/v1/time-entries | List time entries with optional date-range / active / employee filters.


# **ClockInTimeEntry**
> TimeEntryDto ClockInTimeEntry(time_entry_clock_in)

Clock in for the authenticated user (resolved via their employee profile).

### Example
```R
library(openapi)

# Clock in for the authenticated user (resolved via their employee profile).
#
# prepare function argument(s)
var_time_entry_clock_in <- TimeEntryClockIn$new("notes_example") # TimeEntryClockIn | 

api_instance <- TimeEntriesApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ClockInTimeEntry(var_time_entry_clock_indata_file = "result.txt")
result <- api_instance$ClockInTimeEntry(var_time_entry_clock_in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_entry_clock_in** | [**TimeEntryClockIn**](TimeEntryClockIn.md)|  | 

### Return type

[**TimeEntryDto**](TimeEntryDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **400** | No employee profile for this user |  -  |
| **500** | Internal server error |  -  |

# **ClockOutTimeEntry**
> TimeEntryDto ClockOutTimeEntry(id, time_entry_clock_out)

Clock out an entry: the entry's owner, or anyone with `time_entries:write`.

### Example
```R
library(openapi)

# Clock out an entry: the entry's owner, or anyone with `time_entries:write`.
#
# prepare function argument(s)
var_id <- "id_example" # character | 
var_time_entry_clock_out <- TimeEntryClockOut$new("clock_out_example", "hours_example") # TimeEntryClockOut | 

api_instance <- TimeEntriesApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ClockOutTimeEntry(var_id, var_time_entry_clock_outdata_file = "result.txt")
result <- api_instance$ClockOutTimeEntry(var_id, var_time_entry_clock_out)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **time_entry_clock_out** | [**TimeEntryClockOut**](TimeEntryClockOut.md)|  | 

### Return type

[**TimeEntryDto**](TimeEntryDto.md)

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
| **403** | Forbidden |  -  |
| **404** | Not found |  -  |
| **500** | Internal server error |  -  |

# **GetLaborCosts**
> array[LaborCostRow] GetLaborCosts(from, to, group_by)

Labor-cost report: worked hours aggregated per employee / order / day, valued at the employee's hourly cost rate.

### Example
```R
library(openapi)

# Labor-cost report: worked hours aggregated per employee / order / day, valued at the employee's hourly cost rate.
#
# prepare function argument(s)
var_from <- "from_example" # character | 
var_to <- "to_example" # character | 
var_group_by <- "group_by_example" # character | One of \"employee\", \"order\" or \"day\".

api_instance <- TimeEntriesApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetLaborCosts(var_from, var_to, var_group_bydata_file = "result.txt")
result <- api_instance$GetLaborCosts(var_from, var_to, var_group_by)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **character**|  | 
 **to** | **character**|  | 
 **group_by** | **character**| One of \&quot;employee\&quot;, \&quot;order\&quot; or \&quot;day\&quot;. | 

### Return type

[**array[LaborCostRow]**](LaborCostRow.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **ListTimeEntries**
> array[TimeEntryDto] ListTimeEntries(from = var.from, to = var.to, active = var.active, employee_id = var.employee_id)

List time entries with optional date-range / active / employee filters.

### Example
```R
library(openapi)

# List time entries with optional date-range / active / employee filters.
#
# prepare function argument(s)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_active <- "active_example" # character | Only currently running shifts (clock_in set, clock_out null). (Optional)
var_employee_id <- "employee_id_example" # character |  (Optional)

api_instance <- TimeEntriesApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListTimeEntries(from = var_from, to = var_to, active = var_active, employee_id = var_employee_iddata_file = "result.txt")
result <- api_instance$ListTimeEntries(from = var_from, to = var_to, active = var_active, employee_id = var_employee_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **active** | **character**| Only currently running shifts (clock_in set, clock_out null). | [optional] 
 **employee_id** | **character**|  | [optional] 

### Return type

[**array[TimeEntryDto]**](TimeEntryDto.md)

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

