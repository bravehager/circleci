# CircleCi::ScheduleApi

All URIs are relative to *https://circleci.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_schedule**](ScheduleApi.md#create_schedule) | **POST** /project/{project-slug}/schedule | Create a schedule
[**delete_schedule_by_id**](ScheduleApi.md#delete_schedule_by_id) | **DELETE** /schedule/{schedule-id} | Delete a schedule
[**get_schedule_by_id**](ScheduleApi.md#get_schedule_by_id) | **GET** /schedule/{schedule-id} | Get a schedule
[**list_schedules_for_project**](ScheduleApi.md#list_schedules_for_project) | **GET** /project/{project-slug}/schedule | Get all schedules
[**update_schedule**](ScheduleApi.md#update_schedule) | **PATCH** /schedule/{schedule-id} | Update a schedule

# **create_schedule**
> Schedule create_schedule(project_slug, opts)

Create a schedule

Creates a schedule and returns the created schedule.

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

api_instance = CircleCi::ScheduleApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  body: CircleCi::CreateScheduleParameters.new # CreateScheduleParameters | 
}

begin
  #Create a schedule
  result = api_instance.create_schedule(project_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ScheduleApi->create_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **body** | [**CreateScheduleParameters**](CreateScheduleParameters.md)|  | [optional] 

### Return type

[**Schedule**](Schedule.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_schedule_by_id**
> MessageResponse delete_schedule_by_id(schedule_id)

Delete a schedule

Deletes the schedule by id.

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

api_instance = CircleCi::ScheduleApi.new
schedule_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the schedule.


begin
  #Delete a schedule
  result = api_instance.delete_schedule_by_id(schedule_id)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ScheduleApi->delete_schedule_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule_id** | [**String**](.md)| The unique ID of the schedule. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_schedule_by_id**
> Schedule get_schedule_by_id(schedule_id)

Get a schedule

Get a schedule by id.

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

api_instance = CircleCi::ScheduleApi.new
schedule_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the schedule.


begin
  #Get a schedule
  result = api_instance.get_schedule_by_id(schedule_id)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ScheduleApi->get_schedule_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule_id** | [**String**](.md)| The unique ID of the schedule. | 

### Return type

[**Schedule**](Schedule.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_schedules_for_project**
> InlineResponse20013 list_schedules_for_project(project_slug, opts)

Get all schedules

Returns all schedules for this project.

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

api_instance = CircleCi::ScheduleApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  page_token: 'page_token_example' # String | A token to retrieve the next page of results.
}

begin
  #Get all schedules
  result = api_instance.list_schedules_for_project(project_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ScheduleApi->list_schedules_for_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **page_token** | **String**| A token to retrieve the next page of results. | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_schedule**
> Schedule update_schedule(schedule_id, opts)

Update a schedule

Updates a schedule and returns the updated schedule.

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

api_instance = CircleCi::ScheduleApi.new
schedule_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the schedule.
opts = { 
  body: CircleCi::UpdateScheduleParameters.new # UpdateScheduleParameters | 
}

begin
  #Update a schedule
  result = api_instance.update_schedule(schedule_id, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ScheduleApi->update_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule_id** | [**String**](.md)| The unique ID of the schedule. | 
 **body** | [**UpdateScheduleParameters**](UpdateScheduleParameters.md)|  | [optional] 

### Return type

[**Schedule**](Schedule.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



