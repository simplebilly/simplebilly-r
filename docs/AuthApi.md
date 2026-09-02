# AuthApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AcceptInvite**](AuthApi.md#AcceptInvite) | **POST** /auth/accept-invite | Accept an invite: create the account (or reuse an existing one) and join the inviting tenant. The invite token proves control of the mailbox.
[**ForgotPassword**](AuthApi.md#ForgotPassword) | **POST** /auth/forgot-password | Send a password reset email to the user
[**Login**](AuthApi.md#Login) | **POST** /auth/login | Authenticate a user with email + password (optional TOTP)
[**Logout**](AuthApi.md#Logout) | **POST** /auth/logout | Log out the current user (kills the assay session)
[**MagicLinkLogin**](AuthApi.md#MagicLinkLogin) | **POST** /auth/magic-link | Request a magic link login (sends an email with a one-time link)
[**MagicLinkVerify**](AuthApi.md#MagicLinkVerify) | **POST** /auth/magic-link/verify | Verify a magic link token and log the user in
[**Register**](AuthApi.md#Register) | **POST** /auth/register | Register a new user account
[**ResetPassword**](AuthApi.md#ResetPassword) | **POST** /auth/reset-password | Reset the user&#39;s password using a reset token
[**TotpEnable**](AuthApi.md#TotpEnable) | **POST** /auth/totp/enable | Enable TOTP two-factor authentication by verifying a code
[**TotpSetup**](AuthApi.md#TotpSetup) | **GET** /auth/totp/setup | Set up TOTP two-factor authentication (generates secret + backup codes)
[**VerifyEmail**](AuthApi.md#VerifyEmail) | **POST** /auth/verify-email | Verify a user&#39;s email address using a verification token


# **AcceptInvite**
> AcceptInvite(accept_invite_request)

Accept an invite: create the account (or reuse an existing one) and join the inviting tenant. The invite token proves control of the mailbox.

### Example
```R
library(openapi)

# Accept an invite: create the account (or reuse an existing one) and join the inviting tenant. The invite token proves control of the mailbox.
#
# prepare function argument(s)
var_accept_invite_request <- AcceptInviteRequest$new("first_name_example", "last_name_example", "password_example", "privacy_accepted_example", "token_example") # AcceptInviteRequest | 

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$AcceptInvite(var_accept_invite_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept_invite_request** | [**AcceptInviteRequest**](AcceptInviteRequest.md)|  | 

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
| **200** | Invitation accepted |  -  |
| **400** | Weak password or privacy policy not accepted |  -  |
| **401** | Invalid or expired invite token |  -  |

# **ForgotPassword**
> ForgotPassword(forgot_password_request)

Send a password reset email to the user

### Example
```R
library(openapi)

# Send a password reset email to the user
#
# prepare function argument(s)
var_forgot_password_request <- ForgotPasswordRequest$new("email_example") # ForgotPasswordRequest | 

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ForgotPassword(var_forgot_password_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgot_password_request** | [**ForgotPasswordRequest**](ForgotPasswordRequest.md)|  | 

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
| **200** | Password reset email sent if the account exists |  -  |
| **404** | User not found |  -  |

# **Login**
> AuthResponse Login(login_request)

Authenticate a user with email + password (optional TOTP)

### Example
```R
library(openapi)

# Authenticate a user with email + password (optional TOTP)
#
# prepare function argument(s)
var_login_request <- LoginRequest$new("email_example", "password_example", "totp_code_example") # LoginRequest | 

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Login(var_login_requestdata_file = "result.txt")
result <- api_instance$Login(var_login_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login_request** | [**LoginRequest**](LoginRequest.md)|  | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Login successful, returns JWT tokens |  -  |
| **401** | Invalid credentials |  -  |

# **Logout**
> Logout()

Log out the current user (kills the assay session)

### Example
```R
library(openapi)

# Log out the current user (kills the assay session)
#

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$Logout()
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
| **200** | Logged out successfully |  -  |

# **MagicLinkLogin**
> MagicLinkLogin(magic_link_request)

Request a magic link login (sends an email with a one-time link)

### Example
```R
library(openapi)

# Request a magic link login (sends an email with a one-time link)
#
# prepare function argument(s)
var_magic_link_request <- MagicLinkRequest$new("email_example") # MagicLinkRequest | 

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$MagicLinkLogin(var_magic_link_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **magic_link_request** | [**MagicLinkRequest**](MagicLinkRequest.md)|  | 

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
| **200** | Magic link email sent if the account exists |  -  |
| **404** | User not found |  -  |

# **MagicLinkVerify**
> AuthResponse MagicLinkVerify(magic_link_verify_request)

Verify a magic link token and log the user in

### Example
```R
library(openapi)

# Verify a magic link token and log the user in
#
# prepare function argument(s)
var_magic_link_verify_request <- MagicLinkVerifyRequest$new("token_example") # MagicLinkVerifyRequest | 

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MagicLinkVerify(var_magic_link_verify_requestdata_file = "result.txt")
result <- api_instance$MagicLinkVerify(var_magic_link_verify_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **magic_link_verify_request** | [**MagicLinkVerifyRequest**](MagicLinkVerifyRequest.md)|  | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Magic link verified, returns JWT tokens |  -  |
| **401** | Invalid or expired token |  -  |

# **Register**
> AuthResponse Register(register_request)

Register a new user account

### Example
```R
library(openapi)

# Register a new user account
#
# prepare function argument(s)
var_register_request <- RegisterRequest$new("company_name_example", "email_example", "first_name_example", "last_name_example", "password_example", "privacy_accepted_example") # RegisterRequest | 

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Register(var_register_requestdata_file = "result.txt")
result <- api_instance$Register(var_register_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **register_request** | [**RegisterRequest**](RegisterRequest.md)|  | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User registered, verification email sent |  -  |
| **409** | User already exists |  -  |

# **ResetPassword**
> ResetPassword(reset_password_request)

Reset the user's password using a reset token

### Example
```R
library(openapi)

# Reset the user's password using a reset token
#
# prepare function argument(s)
var_reset_password_request <- ResetPasswordRequest$new("new_password_example", "token_example") # ResetPasswordRequest | 

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ResetPassword(var_reset_password_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reset_password_request** | [**ResetPasswordRequest**](ResetPasswordRequest.md)|  | 

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
| **200** | Password reset successfully |  -  |
| **401** | Invalid or expired token |  -  |

# **TotpEnable**
> TotpEnable(totp_enable_request)

Enable TOTP two-factor authentication by verifying a code

### Example
```R
library(openapi)

# Enable TOTP two-factor authentication by verifying a code
#
# prepare function argument(s)
var_totp_enable_request <- TotpEnableRequest$new("code_example") # TotpEnableRequest | 

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$TotpEnable(var_totp_enable_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **totp_enable_request** | [**TotpEnableRequest**](TotpEnableRequest.md)|  | 

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
| **200** | TOTP enabled successfully |  -  |
| **401** | Invalid TOTP code |  -  |

# **TotpSetup**
> TotpSetupResponse TotpSetup()

Set up TOTP two-factor authentication (generates secret + backup codes)

### Example
```R
library(openapi)

# Set up TOTP two-factor authentication (generates secret + backup codes)
#

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TotpSetup(data_file = "result.txt")
result <- api_instance$TotpSetup()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TotpSetupResponse**](TotpSetupResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | TOTP setup data |  -  |
| **409** | TOTP already enabled |  -  |

# **VerifyEmail**
> VerifyEmail(verify_email_request)

Verify a user's email address using a verification token

### Example
```R
library(openapi)

# Verify a user's email address using a verification token
#
# prepare function argument(s)
var_verify_email_request <- VerifyEmailRequest$new("token_example") # VerifyEmailRequest | 

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearer_token
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$VerifyEmail(var_verify_email_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_email_request** | [**VerifyEmailRequest**](VerifyEmailRequest.md)|  | 

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
| **200** | Email verified successfully |  -  |
| **401** | Invalid or expired token |  -  |

