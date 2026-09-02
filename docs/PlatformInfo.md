# openapi::PlatformInfo

Public metadata for one registered plugin (admin UI). Maps 1:1 from [`plugin_core::PluginInfo`] (same field shape as before).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | **character** |  | 
**changelog** | [**array[ChangelogEntry]**](ChangelogEntry.md) |  | 
**config_field_names** | **array[character]** |  | 
**config_fields** | [**array[ConfigFieldInfo]**](ConfigFieldInfo.md) |  | 
**display_name** | **character** |  | 
**platform** | **character** |  | 
**pricing** | [**PluginPricing**](PluginPricing.md) |  | 
**supported_entities** | **array[character]** |  | 
**supports_export** | **character** |  | 
**supports_import** | **character** |  | 
**supports_oauth** | **character** |  | 
**version** | **character** |  | 


