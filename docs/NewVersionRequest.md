# openapi::NewVersionRequest

Body for uploading a new version. Bytes must already be stored under `file_name` via the object storage API.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fileName** | **character** | Storage key of the already-uploaded bytes. | 
**fileSize** | **integer** |  | [optional] 
**mimeType** | **character** |  | [optional] 
**originalName** | **character** |  | [optional] 
**sha256Hash** | **character** |  | [optional] 


