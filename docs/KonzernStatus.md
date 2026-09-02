# openapi::KonzernStatus


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**groessenbefreit** | **character** |  | 
**kapitalmarktorientiert** | **character** |  | 
**konzernabschlusspflicht** | **character** |  | 
**missing_group_figures** | **character** | Keine group_figures-Zeile für das Jahr vorhanden → keine Größenbefreiung. | 
**mutterunternehmen** | **character** | Mutterunternehmen: mindestens eine beherrschte Beteiligung (§ 290 Abs. 1 HGB). | 
**parent_name** | **character** | Mutterunternehmen für die Zwischenholding-Befreiung (§ 291 HGB). | [optional] 
**parent_situs** | **character** |  | [optional] 
**participations** | [**array[KonzernBeteiligung]**](KonzernBeteiligung.md) |  | 
**thresholds** | [**KonzernThresholds**](KonzernThresholds.md) |  | 
**year** | **integer** |  | 
**zwischenholding_befreit** | **character** |  | 
**zwischenholding_hinweis** | **character** | Hinweis zu den § 291-Voraussetzungen (EU/EWR-Sitz, geprüfter Konzernabschluss). | [optional] 


