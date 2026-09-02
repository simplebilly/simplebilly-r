# openapi::ShippingCredentials

Per-tenant credentials for real shipping provider APIs (stored in the `shipping` key of the settings JSON blob). Auth is either OAuth client credentials (UPS) or a user-supplied API key (DHL).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dhl** | [**DhlCredentials**](DhlCredentials.md) |  | [optional] 
**ups** | [**UpsCredentials**](UpsCredentials.md) |  | [optional] 


