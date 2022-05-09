# CircleCi::PipelineApi

All URIs are relative to *https://circleci.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**continue_pipeline**](PipelineApi.md#continue_pipeline) | **POST** /pipeline/continue | Continue a pipeline
[**get_pipeline_by_id**](PipelineApi.md#get_pipeline_by_id) | **GET** /pipeline/{pipeline-id} | Get a pipeline
[**get_pipeline_by_number**](PipelineApi.md#get_pipeline_by_number) | **GET** /project/{project-slug}/pipeline/{pipeline-number} | Get a pipeline
[**get_pipeline_config_by_id**](PipelineApi.md#get_pipeline_config_by_id) | **GET** /pipeline/{pipeline-id}/config | Get a pipeline&#x27;s configuration
[**list_my_pipelines**](PipelineApi.md#list_my_pipelines) | **GET** /project/{project-slug}/pipeline/mine | Get your pipelines
[**list_pipelines**](PipelineApi.md#list_pipelines) | **GET** /pipeline | Get a list of pipelines
[**list_pipelines_for_project**](PipelineApi.md#list_pipelines_for_project) | **GET** /project/{project-slug}/pipeline | Get all pipelines
[**list_workflows_by_pipeline_id**](PipelineApi.md#list_workflows_by_pipeline_id) | **GET** /pipeline/{pipeline-id}/workflow | Get a pipeline&#x27;s workflows
[**trigger_pipeline**](PipelineApi.md#trigger_pipeline) | **POST** /project/{project-slug}/pipeline | Trigger a new pipeline

# **continue_pipeline**
> MessageResponse continue_pipeline(opts)

Continue a pipeline

Continue a pipeline from the setup phase.

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

api_instance = CircleCi::PipelineApi.new
opts = { 
  body: CircleCi::PipelineContinueBody.new # PipelineContinueBody | 
}

begin
  #Continue a pipeline
  result = api_instance.continue_pipeline(opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling PipelineApi->continue_pipeline: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PipelineContinueBody**](PipelineContinueBody.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_pipeline_by_id**
> Pipeline get_pipeline_by_id(pipeline_id)

Get a pipeline

Returns a pipeline by ID.

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

api_instance = CircleCi::PipelineApi.new
pipeline_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the pipeline.


begin
  #Get a pipeline
  result = api_instance.get_pipeline_by_id(pipeline_id)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling PipelineApi->get_pipeline_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pipeline_id** | [**String**](.md)| The unique ID of the pipeline. | 

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_by_number**
> Pipeline get_pipeline_by_number(project_slug, pipeline_number)

Get a pipeline

Returns a pipeline by number.

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

api_instance = CircleCi::PipelineApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
pipeline_number = CircleCi::null.new #  | The number of the pipeline.


begin
  #Get a pipeline
  result = api_instance.get_pipeline_by_number(project_slug, pipeline_number)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling PipelineApi->get_pipeline_by_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **pipeline_number** | [****](.md)| The number of the pipeline. | 

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_config_by_id**
> PipelineConfig get_pipeline_config_by_id(pipeline_id)

Get a pipeline's configuration

Returns a pipeline's configuration by ID.

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

api_instance = CircleCi::PipelineApi.new
pipeline_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the pipeline.


begin
  #Get a pipeline's configuration
  result = api_instance.get_pipeline_config_by_id(pipeline_id)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling PipelineApi->get_pipeline_config_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pipeline_id** | [**String**](.md)| The unique ID of the pipeline. | 

### Return type

[**PipelineConfig**](PipelineConfig.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_my_pipelines**
> PipelineListResponse list_my_pipelines(project_slug, opts)

Get your pipelines

Returns a sequence of all pipelines for this project triggered by the user.

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

api_instance = CircleCi::PipelineApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  page_token: 'page_token_example' # String | A token to retrieve the next page of results.
}

begin
  #Get your pipelines
  result = api_instance.list_my_pipelines(project_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling PipelineApi->list_my_pipelines: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **page_token** | **String**| A token to retrieve the next page of results. | [optional] 

### Return type

[**PipelineListResponse**](PipelineListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_pipelines**
> PipelineListResponse list_pipelines(opts)

Get a list of pipelines

Returns all pipelines for the most recently built projects (max 250) you follow in an organization.

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

api_instance = CircleCi::PipelineApi.new
opts = { 
  org_slug: 'org_slug_example', # String | Org slug in the form `vcs-slug/org-name`
  page_token: 'page_token_example', # String | A token to retrieve the next page of results.
  mine: true # BOOLEAN | Only include entries created by your user.
}

begin
  #Get a list of pipelines
  result = api_instance.list_pipelines(opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling PipelineApi->list_pipelines: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_slug** | **String**| Org slug in the form &#x60;vcs-slug/org-name&#x60; | [optional] 
 **page_token** | **String**| A token to retrieve the next page of results. | [optional] 
 **mine** | **BOOLEAN**| Only include entries created by your user. | [optional] 

### Return type

[**PipelineListResponse**](PipelineListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_pipelines_for_project**
> PipelineListResponse list_pipelines_for_project(project_slug, opts)

Get all pipelines

Returns all pipelines for this project.

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

api_instance = CircleCi::PipelineApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  branch: 'branch_example', # String | The name of a vcs branch.
  page_token: 'page_token_example' # String | A token to retrieve the next page of results.
}

begin
  #Get all pipelines
  result = api_instance.list_pipelines_for_project(project_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling PipelineApi->list_pipelines_for_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **branch** | **String**| The name of a vcs branch. | [optional] 
 **page_token** | **String**| A token to retrieve the next page of results. | [optional] 

### Return type

[**PipelineListResponse**](PipelineListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_workflows_by_pipeline_id**
> WorkflowListResponse list_workflows_by_pipeline_id(pipeline_id, opts)

Get a pipeline's workflows

Returns a paginated list of workflows by pipeline ID.

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

api_instance = CircleCi::PipelineApi.new
pipeline_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the pipeline.
opts = { 
  page_token: 'page_token_example' # String | A token to retrieve the next page of results.
}

begin
  #Get a pipeline's workflows
  result = api_instance.list_workflows_by_pipeline_id(pipeline_id, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling PipelineApi->list_workflows_by_pipeline_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pipeline_id** | [**String**](.md)| The unique ID of the pipeline. | 
 **page_token** | **String**| A token to retrieve the next page of results. | [optional] 

### Return type

[**WorkflowListResponse**](WorkflowListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **trigger_pipeline**
> PipelineCreation trigger_pipeline(project_slug, opts)

Trigger a new pipeline

Triggers a new pipeline on the project.

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

api_instance = CircleCi::PipelineApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  body: CircleCi::TriggerPipelineParameters.new # TriggerPipelineParameters | 
}

begin
  #Trigger a new pipeline
  result = api_instance.trigger_pipeline(project_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling PipelineApi->trigger_pipeline: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **body** | [**TriggerPipelineParameters**](TriggerPipelineParameters.md)|  | [optional] 

### Return type

[**PipelineCreation**](PipelineCreation.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



