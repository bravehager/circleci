# CircleCi::Job

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canceled_by** | **String** | The unique ID of the user. | [optional] 
**dependencies** | **Array&lt;String&gt;** | A sequence of the unique job IDs for the jobs that this job depends upon in the workflow. | 
**job_number** | **Integer** | The number of the job. | [optional] 
**id** | **String** | The unique ID of the job. | 
**started_at** | **DateTime** | The date and time the job started. | 
**name** | **String** | The name of the job. | 
**approved_by** | **String** | The unique ID of the user. | [optional] 
**project_slug** | **String** | The project-slug for the job. | 
**status** | [****](.md) | The current status of the job. | 
**type** | **String** | The type of job. | 
**stopped_at** | **DateTime** | The time when the job stopped. | [optional] 
**approval_request_id** | **String** | The unique ID of the job. | [optional] 

