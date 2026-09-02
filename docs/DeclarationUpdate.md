# openapi::DeclarationUpdate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**declarationType** | [**DeclarationType**](DeclarationType.md) | Art der Erklärung: \&quot;dcgk\&quot; (Entsprechenserklärung § 161 AktG) oder \&quot;unternehmensfuehrung\&quot; (Erklärung zur Unternehmensführung § 289f HGB). | [optional] [Enum: ] 
**isCurrent** | **character** | Kennzeichnet die aktuell gültige Fassung (max. eine je Mandant). | [optional] 
**text** | **character** | Inhalt der Erklärung als Markdown. | [optional] [Max. length: 20000] [Min. length: 1] 
**validFrom** | **character** | Datum, ab dem die Erklärung gilt. | [optional] 
**version** | **character** | Versionsbezeichnung der Erklärung (z.B. \&quot;2025-01\&quot;). | [optional] [Max. length: 50] [Min. length: 1] 


