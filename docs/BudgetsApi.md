# BudgetsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BudgetsApi**](BudgetsApi.md#BudgetsApi) | **GET** /api/v1/bookkeeping/budgets | 
[**UpsertBudgetGoalApi**](BudgetsApi.md#UpsertBudgetGoalApi) | **PUT** /api/v1/bookkeeping/budgets/goals/{category} | 


# **BudgetsApi**
> BudgetErgebnis BudgetsApi(year, month)



### Example
```R
library(openapi)

# prepare function argument(s)
var_year <- 56 # integer | 
var_month <- 56 # integer | 

api_instance <- BudgetsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$BudgetsApi(var_year, var_monthdata_file = "result.txt")
result <- api_instance$BudgetsApi(var_year, var_month)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer**|  | 
 **month** | **integer**|  | 

### Return type

[**BudgetErgebnis**](BudgetErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Monats-Budget + Prognose |  -  |

# **UpsertBudgetGoalApi**
> Budget UpsertBudgetGoalApi(category, budget_goal_request)



### Example
```R
library(openapi)

# prepare function argument(s)
var_category <- "category_example" # character | 
var_budget_goal_request <- BudgetGoalRequest$new("monthly_goal_example", 123) # BudgetGoalRequest | 

api_instance <- BudgetsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpsertBudgetGoalApi(var_category, var_budget_goal_requestdata_file = "result.txt")
result <- api_instance$UpsertBudgetGoalApi(var_category, var_budget_goal_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **character**|  | 
 **budget_goal_request** | [**BudgetGoalRequest**](BudgetGoalRequest.md)|  | 

### Return type

[**Budget**](Budget.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Budget goal saved (upsert) |  -  |
| **400** | Negative goal |  -  |

