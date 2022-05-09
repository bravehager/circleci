# CircleCi::RerunWorkflowParameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable_ssh** | **BOOLEAN** | Whether to enable SSH access for the triggering user on the newly-rerun job. Requires the jobs parameter to be used and so is mutually exclusive with the from_failed parameter. | [optional] 
**from_failed** | **BOOLEAN** | Whether to rerun the workflow from the failed job. Mutually exclusive with the jobs parameter. | [optional] 
**jobs** | **Array&lt;String&gt;** | A list of job IDs to rerun. | [optional] 
**sparse_tree** | **BOOLEAN** | Completes rerun using sparse trees logic, an optimization for workflows that have disconnected subgraphs. Requires jobs parameter and so is mutually exclusive with the from_failed parameter. | [optional] 

