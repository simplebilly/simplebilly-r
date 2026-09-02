# openapi::PosTable

A physical table at a restaurant/cafe POS. `current_order_number` links the open order occupying the table; `None` means free.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentOrderNumber** | **character** |  | [optional] 
**name** | **character** |  | [Max. length: 50] [Min. length: 1] 
**status** | [**PosTableStatus**](PosTableStatus.md) |  | [optional] [Enum: ] 


