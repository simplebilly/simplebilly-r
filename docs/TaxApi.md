# TaxApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateTaxRate**](TaxApi.md#CreateTaxRate) | **POST** /api/v1/tax-rates | Create a tax rate (&#x60;admin:settings&#x60;).
[**DeleteTaxRate**](TaxApi.md#DeleteTaxRate) | **DELETE** /api/v1/tax-rates/{id} | Delete a tax rate by id (&#x60;admin:settings&#x60;).
[**ListTaxRates**](TaxApi.md#ListTaxRates) | **GET** /api/v1/tax-rates | List the calling tenant&#39;s tax rates.
[**UpdateTaxRate**](TaxApi.md#UpdateTaxRate) | **PUT** /api/v1/tax-rates/{id} | Update a tax rate by id (&#x60;admin:settings&#x60;). Replaces all body fields.


# **CreateTaxRate**
> CreateTaxRate(tax_rate_create)

Create a tax rate (`admin:settings`).

### Example
```R
library(openapi)

# Create a tax rate (`admin:settings`).
#
# prepare function argument(s)
var_tax_rate_create <- TaxRateCreate$new("countryCode_example", "isDefault_example", "name_example", 123, "effectiveFrom_example") # TaxRateCreate | 

api_instance <- TaxApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$CreateTaxRate(var_tax_rate_create)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_rate_create** | [**TaxRateCreate**](TaxRateCreate.md)|  | 

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
| **200** | Tax rate created |  -  |
| **400** | Invalid body |  -  |
| **403** | Missing admin:settings permission |  -  |
| **409** | Default rate for the country already exists |  -  |

# **DeleteTaxRate**
> DeleteTaxRate(id)

Delete a tax rate by id (`admin:settings`).

### Example
```R
library(openapi)

# Delete a tax rate by id (`admin:settings`).
#
# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- TaxApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteTaxRate(var_id)
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
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tax rate deleted |  -  |
| **403** | Missing admin:settings permission |  -  |
| **404** | Tax rate not found |  -  |

# **ListTaxRates**
> ListTaxRates()

List the calling tenant's tax rates.

### Example
```R
library(openapi)

# List the calling tenant's tax rates.
#

api_instance <- TaxApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListTaxRates()
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
| **200** | Tenant&#39;s tax rates |  -  |

# **UpdateTaxRate**
> UpdateTaxRate(id, tax_rate_create)

Update a tax rate by id (`admin:settings`). Replaces all body fields.

### Example
```R
library(openapi)

# Update a tax rate by id (`admin:settings`). Replaces all body fields.
#
# prepare function argument(s)
var_id <- "id_example" # character | 
var_tax_rate_create <- TaxRateCreate$new("countryCode_example", "isDefault_example", "name_example", 123, "effectiveFrom_example") # TaxRateCreate | 

api_instance <- TaxApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$UpdateTaxRate(var_id, var_tax_rate_create)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **tax_rate_create** | [**TaxRateCreate**](TaxRateCreate.md)|  | 

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
| **200** | Tax rate updated |  -  |
| **400** | Invalid body |  -  |
| **403** | Missing admin:settings permission |  -  |
| **404** | Tax rate not found |  -  |
| **409** | Default rate for the country already exists |  -  |

