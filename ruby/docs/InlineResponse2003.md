# CircleCi::InlineResponse2003

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**org_id** | [****](.md) | The unique ID of the organization | [optional] 
**project_id** | [****](.md) | The unique ID of the project | [optional] 
**project_data** | [**InlineResponse2003ProjectData**](InlineResponse2003ProjectData.md) |  | [optional] 
**project_workflow_data** | [**Array&lt;InlineResponse2003ProjectWorkflowData&gt;**](InlineResponse2003ProjectWorkflowData.md) | A list of metrics and trends data for workflows for a given project. | [optional] 
**project_workflow_branch_data** | [**Array&lt;InlineResponse2003ProjectWorkflowBranchData&gt;**](InlineResponse2003ProjectWorkflowBranchData.md) | A list of metrics and trends data for branches for a given project. | [optional] 
**all_branches** | **Array&lt;String&gt;** | A list of all the branches for a given project. | [optional] 
**all_workflows** | **Array&lt;String&gt;** | A list of all the workflows for a given project. | [optional] 

