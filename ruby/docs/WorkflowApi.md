# CircleCi::WorkflowApi

All URIs are relative to *https://circleci.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approve_pending_approval_job_by_id**](WorkflowApi.md#approve_pending_approval_job_by_id) | **POST** /workflow/{id}/approve/{approval_request_id} | Approve a job
[**cancel_workflow**](WorkflowApi.md#cancel_workflow) | **POST** /workflow/{id}/cancel | Cancel a workflow
[**get_workflow_by_id**](WorkflowApi.md#get_workflow_by_id) | **GET** /workflow/{id} | Get a workflow
[**list_workflow_jobs**](WorkflowApi.md#list_workflow_jobs) | **GET** /workflow/{id}/job | Get a workflow&#x27;s jobs
[**rerun_workflow**](WorkflowApi.md#rerun_workflow) | **POST** /workflow/{id}/rerun | Rerun a workflow

# **approve_pending_approval_job_by_id**
> MessageResponse approve_pending_approval_job_by_id(approval_request_id, id)

Approve a job

Approves a pending approval job in a workflow.

### Example
```ruby
# load the gem
require 'circleci'
# setup authorization
CircleCi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['Circle-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Circle-Token'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['circle-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['circle-token'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleCi::WorkflowApi.new
approval_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the job being approved.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the workflow.


begin
  #Approve a job
  result = api_instance.approve_pending_approval_job_by_id(approval_request_id, id)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling WorkflowApi->approve_pending_approval_job_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approval_request_id** | [**String**](.md)| The ID of the job being approved. | 
 **id** | [**String**](.md)| The unique ID of the workflow. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cancel_workflow**
> MessageResponse cancel_workflow(id)

Cancel a workflow

Cancels a running workflow.

### Example
```ruby
# load the gem
require 'circleci'
# setup authorization
CircleCi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['Circle-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Circle-Token'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['circle-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['circle-token'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleCi::WorkflowApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the workflow.


begin
  #Cancel a workflow
  result = api_instance.cancel_workflow(id)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling WorkflowApi->cancel_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The unique ID of the workflow. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_workflow_by_id**
> Workflow get_workflow_by_id(id)

Get a workflow

Returns summary fields of a workflow by ID.

### Example
```ruby
# load the gem
require 'circleci'
# setup authorization
CircleCi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['Circle-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Circle-Token'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['circle-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['circle-token'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleCi::WorkflowApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the workflow.


begin
  #Get a workflow
  result = api_instance.get_workflow_by_id(id)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling WorkflowApi->get_workflow_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The unique ID of the workflow. | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_workflow_jobs**
> WorkflowJobListResponse list_workflow_jobs(id)

Get a workflow's jobs

Returns a sequence of jobs for a workflow.

### Example
```ruby
# load the gem
require 'circleci'
# setup authorization
CircleCi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['Circle-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Circle-Token'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['circle-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['circle-token'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleCi::WorkflowApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the workflow.


begin
  #Get a workflow's jobs
  result = api_instance.list_workflow_jobs(id)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling WorkflowApi->list_workflow_jobs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The unique ID of the workflow. | 

### Return type

[**WorkflowJobListResponse**](WorkflowJobListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **rerun_workflow**
> InlineResponse202 rerun_workflow(id, opts)

Rerun a workflow

Reruns a workflow.

### Example
```ruby
# load the gem
require 'circleci'
# setup authorization
CircleCi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['Circle-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Circle-Token'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['circle-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['circle-token'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleCi::WorkflowApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the workflow.
opts = { 
  body: CircleCi::RerunWorkflowParameters.new # RerunWorkflowParameters | 
}

begin
  #Rerun a workflow
  result = api_instance.rerun_workflow(id, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling WorkflowApi->rerun_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The unique ID of the workflow. | 
 **body** | [**RerunWorkflowParameters**](RerunWorkflowParameters.md)|  | [optional] 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



