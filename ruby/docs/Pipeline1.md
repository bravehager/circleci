# CircleCi::Pipeline1

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the pipeline. | 
**errors** | [**Array&lt;PipelineListResponseErrors&gt;**](PipelineListResponseErrors.md) | A sequence of errors that have occurred within the pipeline. | 
**project_slug** | **String** | The project-slug for the pipeline. | 
**updated_at** | **DateTime** | The date and time the pipeline was last updated. | [optional] 
**number** | **Integer** | The number of the pipeline. | 
**trigger_parameters** | [**Hash&lt;String, null&gt;**](.md) |  | [optional] 
**state** | **String** | The current state of the pipeline. | 
**created_at** | **DateTime** | The date and time the pipeline was created. | 
**trigger** | [**PipelineListResponseTrigger**](PipelineListResponseTrigger.md) |  | 
**vcs** | [**PipelineListResponseVcs**](PipelineListResponseVcs.md) |  | [optional] 

