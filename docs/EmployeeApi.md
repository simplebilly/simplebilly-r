# EmployeeApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateEmployee**](EmployeeApi.md#CreateEmployee) | **POST** /api/v1/employees | 
[**DeleteEmployee**](EmployeeApi.md#DeleteEmployee) | **DELETE** /api/v1/employees/{id} | 
[**EmployeeRestore**](EmployeeApi.md#EmployeeRestore) | **POST** /api/v1/employees/{id}/restore | 
[**GetEmployee**](EmployeeApi.md#GetEmployee) | **GET** /api/v1/employees/{id} | 
[**GetEmployeePayrollSummary**](EmployeeApi.md#GetEmployeePayrollSummary) | **GET** /api/v1/employees/{id}/payroll-summary | 
[**GetEmployees**](EmployeeApi.md#GetEmployees) | **GET** /api/v1/employees/ | 
[**UpdateEmployee**](EmployeeApi.md#UpdateEmployee) | **PUT** /api/v1/employees/{id} | 


# **CreateEmployee**
> Employee CreateEmployee(employee_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_employee_create <- EmployeeCreate$new("address_example", "backupEmployeeId_example", "bic_example", "city_example", CountryCode$new(), "dateOfBirth_example", "departmentId_example", "email_example", "firstName_example", Gender$new(), "hireDate_example", "hourlyCost_example", "iban_example", "jobTitle_example", "lastLogin_example", "lastName_example", "lastUpdated_example", "monthlySalary_example", "phone_example", "state_example", EmployeeStatus$new(), "userId_example", "weeklyHours_example", "zip_example") # EmployeeCreate | 

api_instance <- EmployeeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateEmployee(var_employee_createdata_file = "result.txt")
result <- api_instance$CreateEmployee(var_employee_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_create** | [**EmployeeCreate**](EmployeeCreate.md)|  | 

### Return type

[**Employee**](Employee.md)

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

# **DeleteEmployee**
> DeleteEmployee(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- EmployeeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteEmployee(var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

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

# **EmployeeRestore**
> Employee EmployeeRestore(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- EmployeeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EmployeeRestore(var_iddata_file = "result.txt")
result <- api_instance$EmployeeRestore(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**Employee**](Employee.md)

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

# **GetEmployee**
> Employee GetEmployee(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- EmployeeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetEmployee(var_iddata_file = "result.txt")
result <- api_instance$GetEmployee(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**Employee**](Employee.md)

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

# **GetEmployeePayrollSummary**
> PayrollSummary GetEmployeePayrollSummary(id, year = var.year)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_year <- 56 # integer | Fiscal year for the breakdown; defaults to the current year. (Optional)

api_instance <- EmployeeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetEmployeePayrollSummary(var_id, year = var_yeardata_file = "result.txt")
result <- api_instance$GetEmployeePayrollSummary(var_id, year = var_year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **year** | **integer**| Fiscal year for the breakdown; defaults to the current year. | [optional] 

### Return type

[**PayrollSummary**](PayrollSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Payroll summary for the employee |  -  |
| **404** | Employee not found |  -  |
| **500** | Internal server error |  -  |

# **GetEmployees**
> array[Employee] GetEmployees(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- EmployeeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetEmployees(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetEmployees(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[Employee]**](Employee.md)

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

# **UpdateEmployee**
> Employee UpdateEmployee(id, employee_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_employee_update <- EmployeeUpdate$new("address_example", "backupEmployeeId_example", "bic_example", "city_example", CountryCode$new(), "dateOfBirth_example", "departmentId_example", "email_example", "firstName_example", Gender$new(), "hireDate_example", "hourlyCost_example", "iban_example", "jobTitle_example", "lastLogin_example", "lastName_example", "lastUpdated_example", "monthlySalary_example", "phone_example", "state_example", EmployeeStatus$new(), "userId_example", "weeklyHours_example", "zip_example") # EmployeeUpdate | 

api_instance <- EmployeeApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateEmployee(var_id, var_employee_updatedata_file = "result.txt")
result <- api_instance$UpdateEmployee(var_id, var_employee_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **employee_update** | [**EmployeeUpdate**](EmployeeUpdate.md)|  | 

### Return type

[**Employee**](Employee.md)

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

