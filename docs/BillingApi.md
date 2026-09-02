# BillingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetPlans**](BillingApi.md#GetPlans) | **GET** /api/v1/plans | All canonical plans (free/starter/business/enterprise) — the single source of truth lives in &#x60;crate::saasy::plans&#x60;, matching marketing.
[**GetQuotaApi**](BillingApi.md#GetQuotaApi) | **GET** /api/v1/quota | Effective limits + current usage for the calling tenant.
[**GetSubscriptionApi**](BillingApi.md#GetSubscriptionApi) | **GET** /api/v1/subscription | 
[**GetUsageApi**](BillingApi.md#GetUsageApi) | **GET** /api/v1/usage | 
[**PaddleSubscriptionWebhook**](BillingApi.md#PaddleSubscriptionWebhook) | **POST** /api/webhooks/paddle/subscription | Paddle Billing subscription webhook. Verifies the &#x60;Paddle-Signature&#x60; header (HMAC-SHA256 over &#x60;\&quot;{ts}:{raw_body}\&quot;&#x60; with the webhook secret), then updates &#x60;billing_info&#x60; and &#x60;tenants.plan&#x60; for the tenant identified by the subscription &#x60;custom_data&#x60; (JSON &#x60;{\&quot;tenant_id\&quot;: \&quot;...\&quot;}&#x60; or a bare tenant UUID).
[**PutQuotaApi**](BillingApi.md#PutQuotaApi) | **PUT** /api/v1/quota | Write the per-tenant quota override (&#x60;admin:settings&#x60;). An empty object clears the override.


# **GetPlans**
> ApiResponseVecPlan GetPlans()

All canonical plans (free/starter/business/enterprise) — the single source of truth lives in `crate::saasy::plans`, matching marketing.

### Example
```R
library(openapi)

# All canonical plans (free/starter/business/enterprise) — the single source of truth lives in `crate::saasy::plans`, matching marketing.
#

api_instance <- BillingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPlans(data_file = "result.txt")
result <- api_instance$GetPlans()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiResponseVecPlan**](ApiResponse_Vec_Plan.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | All subscription plans |  -  |

# **GetQuotaApi**
> GetQuotaApi()

Effective limits + current usage for the calling tenant.

### Example
```R
library(openapi)

# Effective limits + current usage for the calling tenant.
#

api_instance <- BillingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetQuotaApi()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Effective limits and current usage |  -  |
| **404** | Tenant not found |  -  |

# **GetSubscriptionApi**
> ApiResponseSubscriptionOverview GetSubscriptionApi()



### Example
```R
library(openapi)


api_instance <- BillingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSubscriptionApi(data_file = "result.txt")
result <- api_instance$GetSubscriptionApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiResponseSubscriptionOverview**](ApiResponse_SubscriptionOverview.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tenant subscription overview |  -  |
| **404** | Tenant not found |  -  |

# **GetUsageApi**
> GetUsageApi(meter = var.meter)



### Example
```R
library(openapi)

# prepare function argument(s)
var_meter <- "meter_example" # character |  (Optional)

api_instance <- BillingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetUsageApi(meter = var_meter)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meter** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Metered usage this period |  -  |

# **PaddleSubscriptionWebhook**
> PaddleSubscriptionWebhook()

Paddle Billing subscription webhook. Verifies the `Paddle-Signature` header (HMAC-SHA256 over `\"{ts}:{raw_body}\"` with the webhook secret), then updates `billing_info` and `tenants.plan` for the tenant identified by the subscription `custom_data` (JSON `{\"tenant_id\": \"...\"}` or a bare tenant UUID).

### Example
```R
library(openapi)

# Paddle Billing subscription webhook. Verifies the `Paddle-Signature` header (HMAC-SHA256 over `\"{ts}:{raw_body}\"` with the webhook secret), then updates `billing_info` and `tenants.plan` for the tenant identified by the subscription `custom_data` (JSON `{\"tenant_id\": \"...\"}` or a bare tenant UUID).
#

api_instance <- BillingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$PaddleSubscriptionWebhook()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Webhook processed |  -  |
| **401** | Signature verification failed |  -  |

# **PutQuotaApi**
> PutQuotaApi(quota_override)

Write the per-tenant quota override (`admin:settings`). An empty object clears the override.

### Example
```R
library(openapi)

# Write the per-tenant quota override (`admin:settings`). An empty object clears the override.
#
# prepare function argument(s)
var_quota_override <- QuotaOverride$new(QuotaOverrideFeatures$new("erp_example", "fancy_reports_example", "tax_automations_example"), 123, 123, 123, c(key = 123), "plan_example") # QuotaOverride | 

api_instance <- BillingApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$PutQuotaApi(var_quota_override)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quota_override** | [**QuotaOverride**](QuotaOverride.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Override saved, effective limits returned |  -  |
| **403** | Missing admin:settings permission |  -  |
| **404** | Tenant not found |  -  |

