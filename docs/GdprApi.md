# GdprApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AcceptDpa**](GdprApi.md#AcceptDpa) | **PUT** /api/v1/gdpr/dpa | Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant settings row (created with company-type defaults if missing).
[**AccountErasure**](GdprApi.md#AccountErasure) | **POST** /api/v1/gdpr/account-erasure | Erase ALL personal data of the tenant (TOS §11: deletion 90 days after termination).
[**ErasureContact**](GdprApi.md#ErasureContact) | **POST** /api/v1/gdpr/erasure/{contact_id} | Anonymize + soft-delete a contact: personal attributes are cleared, the record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit trigger on &#x60;contacts&#x60; already records who/when.
[**ExportContactData**](GdprApi.md#ExportContactData) | **GET** /api/v1/gdpr/export/{contact_id} | Art. 15 data-subject access export for a contact.
[**ExportGdpr**](GdprApi.md#ExportGdpr) | **GET** /api/v1/gdpr/export | Export the current user&#39;s personal data (GDPR Art. 15/20).
[**GetDpa**](GdprApi.md#GetDpa) | **GET** /api/v1/gdpr/dpa | Current DPA acceptance status (from tenant_settings).


# **AcceptDpa**
> DpaStatus AcceptDpa(dpa_accept_request)

Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant settings row (created with company-type defaults if missing).

### Example
```R
library(openapi)

# Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant settings row (created with company-type defaults if missing).
#
# prepare function argument(s)
var_dpa_accept_request <- DpaAcceptRequest$new("acceptedByName_example", "version_example") # DpaAcceptRequest | 

api_instance <- GdprApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AcceptDpa(var_dpa_accept_requestdata_file = "result.txt")
result <- api_instance$AcceptDpa(var_dpa_accept_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dpa_accept_request** | [**DpaAcceptRequest**](DpaAcceptRequest.md)|  | 

### Return type

[**DpaStatus**](DpaStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | DPA acceptance recorded |  -  |
| **500** | Internal server error |  -  |

# **AccountErasure**
> AnyType AccountErasure()

Erase ALL personal data of the tenant (TOS §11: deletion 90 days after termination).

Anonymizes every contact, anonymizes personal fields on bookkeeping records (orders/invoices/payments keep amounts and dates for GoBD), removes the tenant linkage of the (global, saasy-framework) users and marks the erasure on `tenant_settings.gdpr_erased_at`. No row is physically deleted. The audit triggers on the touched tables record who/when.

### Example
```R
library(openapi)

# Erase ALL personal data of the tenant (TOS §11: deletion 90 days after termination).
#

api_instance <- GdprApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AccountErasure(data_file = "result.txt")
result <- api_instance$AccountErasure()
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
| **200** | Tenant personal data anonymized |  -  |
| **500** | Internal server error |  -  |

# **ErasureContact**
> AnyType ErasureContact(contact_id)

Anonymize + soft-delete a contact: personal attributes are cleared, the record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit trigger on `contacts` already records who/when.

### Example
```R
library(openapi)

# Anonymize + soft-delete a contact: personal attributes are cleared, the record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit trigger on `contacts` already records who/when.
#
# prepare function argument(s)
var_contact_id <- "contact_id_example" # character | 

api_instance <- GdprApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ErasureContact(var_contact_iddata_file = "result.txt")
result <- api_instance$ErasureContact(var_contact_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **character**|  | 

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
| **200** | Contact anonymized |  -  |
| **404** | Contact not found |  -  |

# **ExportContactData**
> AnyType ExportContactData(contact_id)

Art. 15 data-subject access export for a contact.

Returns the contact itself plus the tenant-scoped rows linked to it.  ## Relations The `customers`/`orders`/`invoices`/`payments` tables have no FK to `contacts`; they are linked through the `customer_id` column, which per the app's conventions holds one of: - the admin customer's `customer_id` (a UUID, often the same value as   the contact's `contact_id`/`customer_number`), - the buyer's email for shop orders, or - the marketplace's external customer id for plugin orders.  The export therefore matches the contact's identifiers (`contact_id`, `customer_number`, `external_id`, `email`) plus any resolved customer ids against `customer_id`. `delivery_notes` and `customer_communications` reference contacts directly via `contact_id`. Soft-deleted rows are included (their data is still processed and retained for GoBD). Relations that genuinely do not exist for a contact stay empty but the key is always present.

### Example
```R
library(openapi)

# Art. 15 data-subject access export for a contact.
#
# prepare function argument(s)
var_contact_id <- "contact_id_example" # character | 

api_instance <- GdprApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ExportContactData(var_contact_iddata_file = "result.txt")
result <- api_instance$ExportContactData(var_contact_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **character**|  | 

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
| **200** | Art. 15 data-subject export |  -  |
| **404** | Contact not found |  -  |

# **ExportGdpr**
> ApiResponseGdprExport ExportGdpr()

Export the current user's personal data (GDPR Art. 15/20).

No admin permission required: a user always exports their own data.

### Example
```R
library(openapi)

# Export the current user's personal data (GDPR Art. 15/20).
#

api_instance <- GdprApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ExportGdpr(data_file = "result.txt")
result <- api_instance$ExportGdpr()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiResponseGdprExport**](ApiResponse_GdprExport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Personal data export |  -  |
| **404** | User not found |  -  |

# **GetDpa**
> DpaStatus GetDpa()

Current DPA acceptance status (from tenant_settings).

### Example
```R
library(openapi)

# Current DPA acceptance status (from tenant_settings).
#

api_instance <- GdprApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDpa(data_file = "result.txt")
result <- api_instance$GetDpa()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DpaStatus**](DpaStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | DPA acceptance status |  -  |
| **500** | Internal server error |  -  |

