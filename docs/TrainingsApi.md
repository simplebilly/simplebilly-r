# TrainingsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetMyTrainings**](TrainingsApi.md#GetMyTrainings) | **GET** /api/v1/trainings/me | 
[**GetTrainingContent**](TrainingsApi.md#GetTrainingContent) | **GET** /api/v1/trainings/content/{code} | 
[**GetTrainingOverview**](TrainingsApi.md#GetTrainingOverview) | **GET** /api/v1/trainings/overview | 
[**SubmitTrainingResult**](TrainingsApi.md#SubmitTrainingResult) | **POST** /api/v1/trainings/submit-result | 


# **GetMyTrainings**
> array[MyTrainingItem] GetMyTrainings()



### Example
```R
library(openapi)


api_instance <- TrainingsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetMyTrainings(data_file = "result.txt")
result <- api_instance$GetMyTrainings()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[MyTrainingItem]**](MyTrainingItem.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Required trainings for the current employee |  -  |
| **404** | No employee linked to user |  -  |

# **GetTrainingContent**
> TrainingContent GetTrainingContent(code)



### Example
```R
library(openapi)

# prepare function argument(s)
var_code <- "code_example" # character | Training code, e.g. data_privacy

api_instance <- TrainingsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTrainingContent(var_codedata_file = "result.txt")
result <- api_instance$GetTrainingContent(var_code)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **character**| Training code, e.g. data_privacy | 

### Return type

[**TrainingContent**](TrainingContent.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Interactive training content for the frontend player |  -  |
| **404** | Unknown training code |  -  |

# **GetTrainingOverview**
> array[HrTrainingOverview] GetTrainingOverview()



### Example
```R
library(openapi)


api_instance <- TrainingsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTrainingOverview(data_file = "result.txt")
result <- api_instance$GetTrainingOverview()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[HrTrainingOverview]**](HrTrainingOverview.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HR overview of assigned trainings |  -  |

# **SubmitTrainingResult**
> SubmitResultResponse SubmitTrainingResult(submit_result_dto)



### Example
```R
library(openapi)

# prepare function argument(s)
var_submit_result_dto <- SubmitResultDto$new(c(123), 123, "trainingCode_example", "assignmentId_example") # SubmitResultDto | 

api_instance <- TrainingsApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SubmitTrainingResult(var_submit_result_dtodata_file = "result.txt")
result <- api_instance$SubmitTrainingResult(var_submit_result_dto)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submit_result_dto** | [**SubmitResultDto**](SubmitResultDto.md)|  | 

### Return type

[**SubmitResultResponse**](SubmitResultResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Result recorded |  -  |
| **400** | Invalid score or training |  -  |

