# openapi::SubscriptionOverview

Tenant subscription overview for the billing page: current plan, status, period end, trial state, effective limits, current usage and feature flags. Backed by Paddle Billing webhook data written into `billing_info` + `tenants.plan`, and by the canonical plans in `crate::saasy::plans`.  JSON contract (camelCase, matches the frontend): `plan`, `planName`, `priceEur`, `status`, `currentPeriodEnd`, `manageUrl`, `trialEndsAt`, `isTrialing`, `limits:{maxUsers,maxInvoicesPerMonth,maxConnectors}`, `usage:{users,invoicesThisMonth,connectors,overageSeats}`, `features:{taxAutomations,fancyReports,erp}`.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentPeriodEnd** | **character** |  | [optional] 
**features** | [**PlanFeatures**](PlanFeatures.md) |  | 
**isTrialing** | **character** |  | 
**limits** | [**PlanLimits**](PlanLimits.md) |  | 
**manageUrl** | **character** |  | [optional] 
**plan** | **character** | Resolved plan id (free/starter/business/enterprise, or a custom override id). | 
**planName** | **character** |  | 
**priceEur** | **numeric** | Monthly price in EUR; &#x60;-1.0&#x60; &#x3D; custom pricing (enterprise). | 
**quantity** | **integer** |  | [optional] 
**status** | **character** |  | [optional] 
**subscriptionId** | **character** |  | [optional] 
**trialEndsAt** | **character** |  | [optional] 
**usage** | [**UsageSnapshot**](UsageSnapshot.md) |  | 


