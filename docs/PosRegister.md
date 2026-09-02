# openapi::PosRegister

A point-of-sale register (Kasse). Registers are the billable unit of the POS feature: each active register costs a monthly fee per tenant, billed through Paddle. `status`: `active` | `disabled`.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** |  | [Max. length: 50] [Min. length: 1] 
**status** | [**PosRegisterStatus**](PosRegisterStatus.md) |  | [optional] [Enum: ] 


