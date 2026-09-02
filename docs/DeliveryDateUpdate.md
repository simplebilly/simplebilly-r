# openapi::DeliveryDateUpdate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **character** | References the customer entity. | [optional] 
**fulfilledDate** | **character** | Date actually delivered (set on fulfillment). | [optional] 
**note** | **character** |  | [optional] 
**orderNumber** | **character** | Sales order number (&#x60;order.order_number&#x60;). | [optional] 
**originalDate** | **character** | Original date promised before rescheduling. | [optional] 
**productId** | **character** | Product line item this date applies to, if per-item. References the product entity. | [optional] 
**promisedDate** | **character** | Date promised to the customer. | [optional] 
**status** | [**DeliveryDateStatus**](DeliveryDateStatus.md) | One of: promised | confirmed | rescheduled | fulfilled | late | cancelled | [optional] [Enum: ] 


