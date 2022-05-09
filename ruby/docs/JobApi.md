# CircleCi::JobApi

All URIs are relative to *https://circleci.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_job**](JobApi.md#cancel_job) | **POST** /project/{project-slug}/job/{job-number}/cancel | Cancel job
[**get_job_artifacts**](JobApi.md#get_job_artifacts) | **GET** /project/{project-slug}/{job-number}/artifacts | Get a job&#x27;s artifacts
[**get_job_details**](JobApi.md#get_job_details) | **GET** /project/{project-slug}/job/{job-number} | Get job details
[**get_tests**](JobApi.md#get_tests) | **GET** /project/{project-slug}/{job-number}/tests | Get test metadata

# **cancel_job**
> MessageResponse cancel_job(job_number, project_slug)

Cancel job

Cancel job with a given job number.

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

api_instance = CircleCi::JobApi.new
job_number = CircleCi::null.new #  | The number of the job.
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.


begin
  #Cancel job
  result = api_instance.cancel_job(job_number, project_slug)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling JobApi->cancel_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_number** | [****](.md)| The number of the job. | 
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_job_artifacts**
> ArtifactListResponse get_job_artifacts(job_number, project_slug)

Get a job's artifacts

Returns a job's artifacts.

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

api_instance = CircleCi::JobApi.new
job_number = CircleCi::null.new #  | The number of the job.
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.


begin
  #Get a job's artifacts
  result = api_instance.get_job_artifacts(job_number, project_slug)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling JobApi->get_job_artifacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_number** | [****](.md)| The number of the job. | 
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 

### Return type

[**ArtifactListResponse**](ArtifactListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_job_details**
> JobDetails get_job_details(job_number, project_slug)

Get job details

Returns job details.

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

api_instance = CircleCi::JobApi.new
job_number = CircleCi::null.new #  | The number of the job.
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.


begin
  #Get job details
  result = api_instance.get_job_details(job_number, project_slug)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling JobApi->get_job_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_number** | [****](.md)| The number of the job. | 
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 

### Return type

[**JobDetails**](JobDetails.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tests**
> TestsResponse get_tests(job_number, project_slug)

Get test metadata

Get test metadata for a build. In the rare case where there is more than 250MB of test data on the job, no results will be returned.

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

api_instance = CircleCi::JobApi.new
job_number = CircleCi::null.new #  | The number of the job.
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.


begin
  #Get test metadata
  result = api_instance.get_tests(job_number, project_slug)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling JobApi->get_tests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_number** | [****](.md)| The number of the job. | 
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 

### Return type

[**TestsResponse**](TestsResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



