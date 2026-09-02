# OnlineshopApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetSmtpConfigApi**](OnlineshopApi.md#GetSmtpConfigApi) | **GET** /api/v1/settings/smtp | 
[**SaveSmtpConfigApi**](OnlineshopApi.md#SaveSmtpConfigApi) | **PUT** /api/v1/settings/smtp | 


# **GetSmtpConfigApi**
> SmtpConfig GetSmtpConfigApi()



### Example
```R
library(openapi)


api_instance <- OnlineshopApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSmtpConfigApi(data_file = "result.txt")
result <- api_instance$GetSmtpConfigApi()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SmtpConfig**](SmtpConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tenant SMTP config (null if unset) |  -  |
| **500** | Internal server error |  -  |

# **SaveSmtpConfigApi**
> SmtpConfig SaveSmtpConfigApi(smtp_config = var.smtp_config)



### Example
```R
library(openapi)

# prepare function argument(s)
var_smtp_config <- SmtpConfig$new(SmtpEncryption$new(), "from_address_example", "host_example", "password_example", 123, "username_example", "from_name_example", 123) # SmtpConfig |  (Optional)

api_instance <- OnlineshopApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SaveSmtpConfigApi(smtp_config = var_smtp_configdata_file = "result.txt")
result <- api_instance$SaveSmtpConfigApi(smtp_config = var_smtp_config)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smtp_config** | [**SmtpConfig**](SmtpConfig.md)|  | [optional] 

### Return type

[**SmtpConfig**](SmtpConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tenant SMTP config saved |  -  |
| **500** | Internal server error |  -  |

