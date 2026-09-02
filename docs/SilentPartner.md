# openapi::SilentPartner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contractDate** | **character** | Datum des Vertragsabschlusses. | [optional] 
**einlage** | **character** | Einlage (§ 230 HGB). | [optional] 
**gewinnquotePct** | **character** | Gewinnbeteiligungsquote in Prozent (§ 231 HGB). | [optional] 
**gewinnvortrag** | **character** | Nicht erhobene Gewinne (§ 232 Abs. 3 HGB). | [optional] 
**instrumentType** | [**InstrumentType**](InstrumentType.md) | Instrument: \&quot;typisch\&quot; | \&quot;atypisch\&quot; | \&quot;partiarisches_darlehen\&quot; | \&quot;genussrecht\&quot;. | [Enum: ] 
**kestPflichtig** | **character** | 25 % Kapitalertragsteuer einbehalten (§ 43 Abs. 1 Nr. 3 EStG; typisch + partiarisches Darlehen). | [optional] 
**name** | **character** | Name des stillen Gesellschafters. | [optional] [Max. length: 200] [Min. length: 1] 
**notes** | **character** | Freitext-Notizen. | [optional] [Max. length: 500] 
**verlustVerrechnungskonto** | **character** | Kumulierte Verluste gegen die Einlage (§ 232 Abs. 2 HGB, ≤ Einlage). | [optional] 
**verlustbeteiligung** | **character** | Verlustbeteiligung (§ 231 Abs. 2 HGB; kann ausgeschlossen werden). | [optional] 


