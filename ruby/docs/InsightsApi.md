# CircleCi::InsightsApi

All URIs are relative to *https://circleci.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_insights_branches**](InsightsApi.md#get_all_insights_branches) | **GET** /insights/{project-slug}/branches | Get all branches for a project
[**get_flaky_tests**](InsightsApi.md#get_flaky_tests) | **GET** /insights/{project-slug}/flaky-tests | Get flaky tests for a project
[**get_job_timeseries**](InsightsApi.md#get_job_timeseries) | **GET** /insights/time-series/{project-slug}/workflows/{workflow-name}/jobs | Job timeseries data
[**get_org_summary_data**](InsightsApi.md#get_org_summary_data) | **GET** /insights/{org-slug}/summary | Get summary metrics with trends for the entire org, and for each project.
[**get_project_job_runs**](InsightsApi.md#get_project_job_runs) | **GET** /insights/{project-slug}/workflows/{workflow-name}/jobs/{job-name} | Get recent runs of a workflow job
[**get_project_workflow_job_metrics**](InsightsApi.md#get_project_workflow_job_metrics) | **GET** /insights/{project-slug}/workflows/{workflow-name}/jobs | Get summary metrics for a project workflow&#x27;s jobs.
[**get_project_workflow_metrics**](InsightsApi.md#get_project_workflow_metrics) | **GET** /insights/{project-slug}/workflows | Get summary metrics for a project&#x27;s workflows
[**get_project_workflow_runs**](InsightsApi.md#get_project_workflow_runs) | **GET** /insights/{project-slug}/workflows/{workflow-name} | Get recent runs of a workflow
[**get_project_workflow_test_metrics**](InsightsApi.md#get_project_workflow_test_metrics) | **GET** /insights/{project-slug}/workflows/{workflow-name}/test-metrics | Get test metrics for a project&#x27;s workflows
[**get_project_workflows_page_data**](InsightsApi.md#get_project_workflows_page_data) | **GET** /insights/pages/{project-slug}/summary | Get summary metrics and trends for a project across it&#x27;s workflows and branches
[**get_workflow_summary**](InsightsApi.md#get_workflow_summary) | **GET** /insights/{project-slug}/workflows/{workflow-name}/summary | Get metrics and trends for workflows
[**get_workflow_timeseries**](InsightsApi.md#get_workflow_timeseries) | **GET** /insights/time-series/{project-slug}/workflows | Workflow timeseries data

# **get_all_insights_branches**
> get_all_insights_branches(project_slug, opts)

Get all branches for a project

Get a list of all branches for a specified project. The list will only contain branches currently available within Insights.

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  workflow_name: 'workflow_name_example' # String | The name of a workflow. If not passed we will scope the API call to the project.
}

begin
  #Get all branches for a project
  api_instance.get_all_insights_branches(project_slug, opts)
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_all_insights_branches: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **workflow_name** | **String**| The name of a workflow. If not passed we will scope the API call to the project. | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_flaky_tests**
> InlineResponse2006 get_flaky_tests(project_slug)

Get flaky tests for a project

Get a list of flaky tests for a given project. Flaky tests are branch agnostic.               A flaky test is a test that passed and faliled in the same commit.

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.


begin
  #Get flaky tests for a project
  result = api_instance.get_flaky_tests(project_slug)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_flaky_tests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_job_timeseries**
> InlineResponse2004 get_job_timeseries(project_slug, workflow_name, opts)

Job timeseries data

Get timeseries data for all jobs within a workflow.

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
workflow_name = 'workflow_name_example' # String | The name of the workflow.
opts = { 
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.
  timeseries_granularity: 'timeseries_granularity_example', # String | The granularity for which to query timeseries data.
  start_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Include only executions that started at or after this date. This must be specified if an end-date is provided.
  end_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Include only executions that started before this date. This date can be at most 90 days after the start-date.
}

begin
  #Job timeseries data
  result = api_instance.get_job_timeseries(project_slug, workflow_name, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_job_timeseries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **workflow_name** | **String**| The name of the workflow. | 
 **branch** | **String**| The name of a vcs branch. If not passed we will scope the API call to the default branch. | [optional] 
 **timeseries_granularity** | **String**| The granularity for which to query timeseries data. | [optional] 
 **start_date** | **DateTime**| Include only executions that started at or after this date. This must be specified if an end-date is provided. | [optional] 
 **end_date** | **DateTime**| Include only executions that started before this date. This date can be at most 90 days after the start-date. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_org_summary_data**
> InlineResponse2005 get_org_summary_data(org_slug, opts)

Get summary metrics with trends for the entire org, and for each project.

Gets aggregated summary metrics with trends for the entire org.                Also gets aggregated metrics and trends for each project belonging to the org.

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

api_instance = CircleCi::InsightsApi.new
org_slug = 'org_slug_example' # String | Org slug in the form `vcs-slug/org-name`. The `/` characters may be URL-escaped.
opts = { 
  reporting_window: 'reporting_window_example', # String | The time window used to calculate summary metrics.
  project_names: nil # Object | List of project names.
}

begin
  #Get summary metrics with trends for the entire org, and for each project.
  result = api_instance.get_org_summary_data(org_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_org_summary_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_slug** | **String**| Org slug in the form &#x60;vcs-slug/org-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **reporting_window** | **String**| The time window used to calculate summary metrics. | [optional] 
 **project_names** | [**Object**](.md)| List of project names. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_project_job_runs**
> InlineResponse20010 get_project_job_runs(project_slug, workflow_name, job_name, opts)

Get recent runs of a workflow job

Get recent runs of a job within a workflow. Runs going back at most 90 days are returned. Please note that Insights is not a real time financial reporting tool and should not be used for credit reporting. The most up to date credit information can be found in Plan Overview in the CircleCI UI.

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
workflow_name = 'workflow_name_example' # String | The name of the workflow.
job_name = 'job_name_example' # String | The name of the job.
opts = { 
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.     Note - Querying all branches is not supported yet.
  page_token: 'page_token_example', # String | A token to retrieve the next page of results.
  start_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Include only executions that started at or after this date. This must be specified if an end-date is provided.
  end_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Include only executions that started before this date. This date can be at most 90 days after the start-date.
}

begin
  #Get recent runs of a workflow job
  result = api_instance.get_project_job_runs(project_slug, workflow_name, job_name, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_project_job_runs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **workflow_name** | **String**| The name of the workflow. | 
 **job_name** | **String**| The name of the job. | 
 **branch** | **String**| The name of a vcs branch. If not passed we will scope the API call to the default branch.     Note - Querying all branches is not supported yet. | [optional] 
 **page_token** | **String**| A token to retrieve the next page of results. | [optional] 
 **start_date** | **DateTime**| Include only executions that started at or after this date. This must be specified if an end-date is provided. | [optional] 
 **end_date** | **DateTime**| Include only executions that started before this date. This date can be at most 90 days after the start-date. | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_project_workflow_job_metrics**
> InlineResponse2009 get_project_workflow_job_metrics(project_slug, workflow_name, opts)

Get summary metrics for a project workflow's jobs.

Get summary metrics for a project workflow's jobs. Job runs going back at most 90 days are included in the aggregation window. Metrics are refreshed daily, and thus may not include executions from the last 24 hours. Please note that Insights is not a real time financial reporting tool and should not be used for credit reporting. The most up to date credit information can be found in Plan Overview in the CircleCI UI.

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
workflow_name = 'workflow_name_example' # String | The name of the workflow.
opts = { 
  page_token: 'page_token_example', # String | A token to retrieve the next page of results.
  all_branches: true, # BOOLEAN | Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter.
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.
  reporting_window: 'reporting_window_example' # String | The time window used to calculate summary metrics.
}

begin
  #Get summary metrics for a project workflow's jobs.
  result = api_instance.get_project_workflow_job_metrics(project_slug, workflow_name, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_project_workflow_job_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **workflow_name** | **String**| The name of the workflow. | 
 **page_token** | **String**| A token to retrieve the next page of results. | [optional] 
 **all_branches** | **BOOLEAN**| Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter. | [optional] 
 **branch** | **String**| The name of a vcs branch. If not passed we will scope the API call to the default branch. | [optional] 
 **reporting_window** | **String**| The time window used to calculate summary metrics. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_project_workflow_metrics**
> InlineResponse2007 get_project_workflow_metrics(project_slug, opts)

Get summary metrics for a project's workflows

Get summary metrics for a project's workflows. Workflow runs going back at most 90 days are included in the aggregation window. Metrics are refreshed daily, and thus may not include executions from the last 24 hours. Please note that Insights is not a real time financial reporting tool and should not be used for credit reporting. The most up to date credit information can be found in Plan Overview in the CircleCI UI.

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  page_token: 'page_token_example', # String | A token to retrieve the next page of results.
  all_branches: true, # BOOLEAN | Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter.
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.
  reporting_window: 'reporting_window_example' # String | The time window used to calculate summary metrics.
}

begin
  #Get summary metrics for a project's workflows
  result = api_instance.get_project_workflow_metrics(project_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_project_workflow_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **page_token** | **String**| A token to retrieve the next page of results. | [optional] 
 **all_branches** | **BOOLEAN**| Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter. | [optional] 
 **branch** | **String**| The name of a vcs branch. If not passed we will scope the API call to the default branch. | [optional] 
 **reporting_window** | **String**| The time window used to calculate summary metrics. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_project_workflow_runs**
> InlineResponse2008 get_project_workflow_runs(project_slug, workflow_name, opts)

Get recent runs of a workflow

Get recent runs of a workflow. Runs going back at most 90 days are returned. Please note that Insights is not a real time financial reporting tool and should not be used for credit reporting. The most up to date credit information can be found in Plan Overview in the CircleCI UI.

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
workflow_name = 'workflow_name_example' # String | The name of the workflow.
opts = { 
  all_branches: true, # BOOLEAN | Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter.
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.
  page_token: 'page_token_example', # String | A token to retrieve the next page of results.
  start_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Include only executions that started at or after this date. This must be specified if an end-date is provided.
  end_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Include only executions that started before this date. This date can be at most 90 days after the start-date.
}

begin
  #Get recent runs of a workflow
  result = api_instance.get_project_workflow_runs(project_slug, workflow_name, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_project_workflow_runs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **workflow_name** | **String**| The name of the workflow. | 
 **all_branches** | **BOOLEAN**| Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter. | [optional] 
 **branch** | **String**| The name of a vcs branch. If not passed we will scope the API call to the default branch. | [optional] 
 **page_token** | **String**| A token to retrieve the next page of results. | [optional] 
 **start_date** | **DateTime**| Include only executions that started at or after this date. This must be specified if an end-date is provided. | [optional] 
 **end_date** | **DateTime**| Include only executions that started before this date. This date can be at most 90 days after the start-date. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_project_workflow_test_metrics**
> InlineResponse20012 get_project_workflow_test_metrics(project_slug, workflow_name, opts)

Get test metrics for a project's workflows

Get test metrics for a project's workflows. Currently tests metrics are calculated based on 10 most recent workflow runs.

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
workflow_name = 'workflow_name_example' # String | The name of the workflow.
opts = { 
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.
  all_branches: true # BOOLEAN | Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter.
}

begin
  #Get test metrics for a project's workflows
  result = api_instance.get_project_workflow_test_metrics(project_slug, workflow_name, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_project_workflow_test_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **workflow_name** | **String**| The name of the workflow. | 
 **branch** | **String**| The name of a vcs branch. If not passed we will scope the API call to the default branch. | [optional] 
 **all_branches** | **BOOLEAN**| Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter. | [optional] 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_project_workflows_page_data**
> InlineResponse2003 get_project_workflows_page_data(project_slug, opts)

Get summary metrics and trends for a project across it's workflows and branches

Get summary metrics and trends for a project at workflow and branch level.               Workflow runs going back at most 90 days are included in the aggregation window.               Trends are only supported upto last 30 days.               Metrics are refreshed daily, and thus may not include executions from the last 24 hours.               Please note that Insights is not a real time financial reporting tool and should not be used for credit reporting.               The most up to date credit information can be found in Plan Overview in the CircleCI UI.

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  reporting_window: 'reporting_window_example', # String | The time window used to calculate summary metrics.
  branches: nil, # Object | The names of VCS branches to include in branch-level workflow metrics.
  workflow_names: nil # Object | The names of workflows to include in workflow-level metrics.
}

begin
  #Get summary metrics and trends for a project across it's workflows and branches
  result = api_instance.get_project_workflows_page_data(project_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_project_workflows_page_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **reporting_window** | **String**| The time window used to calculate summary metrics. | [optional] 
 **branches** | [**Object**](.md)| The names of VCS branches to include in branch-level workflow metrics. | [optional] 
 **workflow_names** | [**Object**](.md)| The names of workflows to include in workflow-level metrics. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_workflow_summary**
> InlineResponse20011 get_workflow_summary(project_slug, workflow_name, opts)

Get metrics and trends for workflows

Get the metrics and trends for a particular workflow on a single branch or all branches

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
workflow_name = 'workflow_name_example' # String | The name of the workflow.
opts = { 
  all_branches: true, # BOOLEAN | Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter.
  branches: nil # Object | The names of VCS branches to include in branch-level workflow metrics.
}

begin
  #Get metrics and trends for workflows
  result = api_instance.get_workflow_summary(project_slug, workflow_name, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_workflow_summary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **workflow_name** | **String**| The name of the workflow. | 
 **all_branches** | **BOOLEAN**| Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter. | [optional] 
 **branches** | [**Object**](.md)| The names of VCS branches to include in branch-level workflow metrics. | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_workflow_timeseries**
> InlineResponse2004 get_workflow_timeseries(project_slug, opts)

Workflow timeseries data

If no query parameters are supplied, will return timeseries data for all workflows that have ran on the default branch.                                          When granularity is `hourly`, up to 48 hours of timeseries data will be returned. When granularity is `daily`, up to 90 days of timeseries data will be returned.                                         Different combinations of branches and workflow-names can narrow the query further:                * All workflows, default branch (default, no query parameters)                           * All workflows, all branches: `all-branches=true`              * All workflows on specific branch: `branch=feature-branch`              * A specified workflow, all branches: `workflow-name=build&all-branches=true`,               * A specified branch on a specified workflow: `workflow-name=build&branch=feature-branch`

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

api_instance = CircleCi::InsightsApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.
  all_branches: true, # BOOLEAN | Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter.
  timeseries_granularity: 'timeseries_granularity_example', # String | The granularity for which to query timeseries data.
  workflow_name: 'workflow_name_example', # String | The name of a workflow. If not passed we will scope the API call to the project.
  start_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Include only executions that started at or after this date. This must be specified if an end-date is provided.
  end_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Include only executions that started before this date. This date can be at most 90 days after the start-date.
}

begin
  #Workflow timeseries data
  result = api_instance.get_workflow_timeseries(project_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling InsightsApi->get_workflow_timeseries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **branch** | **String**| The name of a vcs branch. If not passed we will scope the API call to the default branch. | [optional] 
 **all_branches** | **BOOLEAN**| Whether to retrieve data for all branches combined. Use either this parameter OR the branch name parameter. | [optional] 
 **timeseries_granularity** | **String**| The granularity for which to query timeseries data. | [optional] 
 **workflow_name** | **String**| The name of a workflow. If not passed we will scope the API call to the project. | [optional] 
 **start_date** | **DateTime**| Include only executions that started at or after this date. This must be specified if an end-date is provided. | [optional] 
 **end_date** | **DateTime**| Include only executions that started before this date. This date can be at most 90 days after the start-date. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



