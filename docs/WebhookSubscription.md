# openapi::WebhookSubscription


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventType** | **character** | Event type to react to (e.g. \&quot;order.created\&quot;); \&quot;*\&quot; &#x3D; all events. | 
**isActive** | **character** |  | [optional] 
**name** | **character** | Human label (e.g. \&quot;Warehouse app\&quot;). | 
**secret** | **character** | Shared secret for HMAC-SHA256 signature, sent as X-Signature. | 
**url** | **character** |  | 


