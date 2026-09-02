# openapi::TimelineEvent

Single timeline entry aggregated from the contact's activity across all related modules (communications, quotations, orders, invoices, documents).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **character** | RFC3339 UTC timestamp for sorting. | 
**detail** | **character** |  | [optional] 
**id** | **character** | Source record id (stringified). | 
**status** | **character** |  | [optional] 
**title** | **character** |  | 
**type** | **character** | Source module: communication | quotation | order | invoice | attachment. | 


