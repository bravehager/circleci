# CircleCi::JobDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**web_url** | **String** | URL of the job in CircleCI Web UI. | 
**project** | [**JobDetailsProject**](JobDetailsProject.md) |  | 
**parallel_runs** | [**Array&lt;JobDetailsParallelRuns&gt;**](JobDetailsParallelRuns.md) | Info about parallels runs and their status. | 
**started_at** | **DateTime** | The date and time the job started. | 
**latest_workflow** | [**JobDetailsLatestWorkflow**](JobDetailsLatestWorkflow.md) |  | 
**name** | **String** | The name of the job. | 
**executor** | [**JobDetailsExecutor**](JobDetailsExecutor.md) |  | 
**parallelism** | **Integer** | A number of parallel runs the job has. | 
**status** | [****](.md) | The current status of the job. | 
**number** | **Integer** | The number of the job. | 
**pipeline** | [**JobDetailsPipeline**](JobDetailsPipeline.md) |  | 
**duration** | **Integer** | Duration of a job in milliseconds. | 
**created_at** | **DateTime** | The time when the job was created. | 
**messages** | [**Array&lt;JobDetailsMessages&gt;**](JobDetailsMessages.md) | Messages from CircleCI execution platform. | 
**contexts** | [**Array&lt;JobDetailsContexts&gt;**](JobDetailsContexts.md) | List of contexts used by the job. | 
**organization** | [**JobDetailsOrganization**](JobDetailsOrganization.md) |  | 
**queued_at** | **DateTime** | The time when the job was placed in a queue. | 
**stopped_at** | **DateTime** | The time when the job stopped. | [optional] 

