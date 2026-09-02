# openapi::SubmitResultDto


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**answers** | **array[integer]** | Selected answer indices (required for scored builtin trainings). | 
**assignmentId** | **character** |  | [optional] 
**score** | **integer** | Score 0–100. Only trusted for plugin trainings without server-side scoring; builtin trainings are always re-scored from &#x60;answers&#x60;. | 
**trainingCode** | **character** |  | 


