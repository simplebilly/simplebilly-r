# DeclarationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateDeclaration**](DeclarationApi.md#CreateDeclaration) | **POST** /api/v1/declarations | 
[**DeclarationRestore**](DeclarationApi.md#DeclarationRestore) | **POST** /api/v1/declarations/{id}/restore | 
[**DeleteDeclaration**](DeclarationApi.md#DeleteDeclaration) | **DELETE** /api/v1/declarations/{id} | 
[**GetDeclaration**](DeclarationApi.md#GetDeclaration) | **GET** /api/v1/declarations/{id} | 
[**GetDeclarations**](DeclarationApi.md#GetDeclarations) | **GET** /api/v1/declarations/ | 
[**UpdateDeclaration**](DeclarationApi.md#UpdateDeclaration) | **PUT** /api/v1/declarations/{id} | 


# **CreateDeclaration**
> Declaration CreateDeclaration(declaration_create)



### Example
```R
library(openapi)

# prepare function argument(s)
var_declaration_create <- DeclarationCreate$new(DeclarationType$new(), "isCurrent_example", "text_example", "validFrom_example", "version_example") # DeclarationCreate | 

api_instance <- DeclarationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateDeclaration(var_declaration_createdata_file = "result.txt")
result <- api_instance$CreateDeclaration(var_declaration_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **declaration_create** | [**DeclarationCreate**](DeclarationCreate.md)|  | 

### Return type

[**Declaration**](Declaration.md)

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

# **DeclarationRestore**
> Declaration DeclarationRestore(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- DeclarationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeclarationRestore(var_iddata_file = "result.txt")
result <- api_instance$DeclarationRestore(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**Declaration**](Declaration.md)

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

# **DeleteDeclaration**
> DeleteDeclaration(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- DeclarationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteDeclaration(var_id)
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

# **GetDeclaration**
> Declaration GetDeclaration(id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- DeclarationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDeclaration(var_iddata_file = "result.txt")
result <- api_instance$GetDeclaration(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

[**Declaration**](Declaration.md)

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

# **GetDeclarations**
> array[Declaration] GetDeclarations(page = var.page, page_size = var.page_size, search = var.search, include_deleted = var.include_deleted)



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_page_size <- 56 # integer |  (Optional)
var_search <- "search_example" # character |  (Optional)
var_include_deleted <- "include_deleted_example" # character | Soft-delete entities: set true to include rows with `deleted_at` set. (Optional)

api_instance <- DeclarationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDeclarations(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleteddata_file = "result.txt")
result <- api_instance$GetDeclarations(page = var_page, page_size = var_page_size, search = var_search, include_deleted = var_include_deleted)
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

[**array[Declaration]**](Declaration.md)

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

# **UpdateDeclaration**
> Declaration UpdateDeclaration(id, declaration_update)



### Example
```R
library(openapi)

# prepare function argument(s)
var_id <- "id_example" # character | 
var_declaration_update <- DeclarationUpdate$new(DeclarationType$new(), "isCurrent_example", "text_example", "validFrom_example", "version_example") # DeclarationUpdate | 

api_instance <- DeclarationApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateDeclaration(var_id, var_declaration_updatedata_file = "result.txt")
result <- api_instance$UpdateDeclaration(var_id, var_declaration_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **declaration_update** | [**DeclarationUpdate**](DeclarationUpdate.md)|  | 

### Return type

[**Declaration**](Declaration.md)

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

