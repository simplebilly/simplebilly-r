# openapi::EmailTemplateCreate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **character** | E-mail body with optional placeholders. | [Min. length: 1] 
**name** | **character** | Human-readable template name, e.g. \&quot;Follow-up after quote\&quot;. | [Min. length: 1] 
**status** | [**EmailTemplateStatus**](EmailTemplateStatus.md) | One of: active | inactive | [Enum: ] 
**subject** | **character** | E-mail subject line with optional placeholders. | [Min. length: 1] 
**variables** | [**AnyType**](.md) | Placeholders used by this template, e.g. &#x60;[\&quot;contact.first_name\&quot;]&#x60;. | [optional] 


