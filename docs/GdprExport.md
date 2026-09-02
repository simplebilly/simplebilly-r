# openapi::GdprExport


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityLog** | [**array[GdprActivity]**](GdprActivity.md) |  | 
**apiKeys** | [**array[GdprApiKey]**](GdprApiKey.md) | Key identifiers and names only — never a usable credential. | 
**billing** | [**array[GdprBillingInfo]**](GdprBillingInfo.md) |  | 
**exportedAt** | **character** |  | 
**generatedByAi** | **character** | Honesty field: this document is a plain data dump, never AI-generated. | 
**notifications** | [**array[GdprNotification]**](GdprNotification.md) |  | 
**refreshTokens** | [**array[GdprRefreshToken]**](GdprRefreshToken.md) | Session records: metadata only, never the token hash. | 
**tenants** | [**array[GdprTenant]**](GdprTenant.md) |  | 
**usageEvents** | [**array[GdprUsageEvent]**](GdprUsageEvent.md) |  | 
**user** | [**GdprUser**](GdprUser.md) |  | 


