# CircleCi::ProjectApi

All URIs are relative to *https://circleci.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_checkout_key**](ProjectApi.md#create_checkout_key) | **POST** /project/{project-slug}/checkout-key | Create a new checkout key
[**create_env_var**](ProjectApi.md#create_env_var) | **POST** /project/{project-slug}/envvar | Create an environment variable
[**delete_checkout_key**](ProjectApi.md#delete_checkout_key) | **DELETE** /project/{project-slug}/checkout-key/{fingerprint} | Delete a checkout key
[**delete_env_var**](ProjectApi.md#delete_env_var) | **DELETE** /project/{project-slug}/envvar/{name} | Delete an environment variable
[**get_checkout_key**](ProjectApi.md#get_checkout_key) | **GET** /project/{project-slug}/checkout-key/{fingerprint} | Get a checkout key
[**get_env_var**](ProjectApi.md#get_env_var) | **GET** /project/{project-slug}/envvar/{name} | Get a masked environment variable
[**get_project_by_slug**](ProjectApi.md#get_project_by_slug) | **GET** /project/{project-slug} | Get a project
[**list_checkout_keys**](ProjectApi.md#list_checkout_keys) | **GET** /project/{project-slug}/checkout-key | Get all checkout keys
[**list_env_vars**](ProjectApi.md#list_env_vars) | **GET** /project/{project-slug}/envvar | List all environment variables

# **create_checkout_key**
> CheckoutKey create_checkout_key(project_slug, opts)

Create a new checkout key

Creates a new checkout key. This API request is only usable with a user API token.

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

api_instance = CircleCi::ProjectApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  body: CircleCi::CheckoutKeyInput.new # CheckoutKeyInput | 
}

begin
  #Create a new checkout key
  result = api_instance.create_checkout_key(project_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ProjectApi->create_checkout_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **body** | [**CheckoutKeyInput**](CheckoutKeyInput.md)|  | [optional] 

### Return type

[**CheckoutKey**](CheckoutKey.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_env_var**
> EnvironmentVariablePair create_env_var(project_slug, opts)

Create an environment variable

Creates a new environment variable.

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

api_instance = CircleCi::ProjectApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = { 
  body: CircleCi::EnvironmentVariablePair.new # EnvironmentVariablePair | 
}

begin
  #Create an environment variable
  result = api_instance.create_env_var(project_slug, opts)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ProjectApi->create_env_var: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **body** | [**EnvironmentVariablePair**](EnvironmentVariablePair.md)|  | [optional] 

### Return type

[**EnvironmentVariablePair**](EnvironmentVariablePair.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_checkout_key**
> MessageResponse delete_checkout_key(project_slug, fingerprint)

Delete a checkout key

Deletes the checkout key.

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

api_instance = CircleCi::ProjectApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
fingerprint = 'fingerprint_example' # String | An SSH key fingerprint.


begin
  #Delete a checkout key
  result = api_instance.delete_checkout_key(project_slug, fingerprint)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ProjectApi->delete_checkout_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **fingerprint** | **String**| An SSH key fingerprint. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_env_var**
> MessageResponse delete_env_var(project_slug, name)

Delete an environment variable

Deletes the environment variable named :name.

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

api_instance = CircleCi::ProjectApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
name = 'name_example' # String | The name of the environment variable.


begin
  #Delete an environment variable
  result = api_instance.delete_env_var(project_slug, name)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ProjectApi->delete_env_var: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **name** | **String**| The name of the environment variable. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_checkout_key**
> CheckoutKey get_checkout_key(project_slug, fingerprint)

Get a checkout key

Returns an individual checkout key.

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

api_instance = CircleCi::ProjectApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
fingerprint = 'fingerprint_example' # String | An SSH key fingerprint.


begin
  #Get a checkout key
  result = api_instance.get_checkout_key(project_slug, fingerprint)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ProjectApi->get_checkout_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **fingerprint** | **String**| An SSH key fingerprint. | 

### Return type

[**CheckoutKey**](CheckoutKey.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_env_var**
> EnvironmentVariablePair get_env_var(project_slug, name)

Get a masked environment variable

Returns the masked value of environment variable :name.

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

api_instance = CircleCi::ProjectApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
name = 'name_example' # String | The name of the environment variable.


begin
  #Get a masked environment variable
  result = api_instance.get_env_var(project_slug, name)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ProjectApi->get_env_var: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 
 **name** | **String**| The name of the environment variable. | 

### Return type

[**EnvironmentVariablePair**](EnvironmentVariablePair.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_project_by_slug**
> Project get_project_by_slug(project_slug)

Get a project

Retrieves a project by project slug.

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

api_instance = CircleCi::ProjectApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.


begin
  #Get a project
  result = api_instance.get_project_by_slug(project_slug)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ProjectApi->get_project_by_slug: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 

### Return type

[**Project**](Project.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_checkout_keys**
> CheckoutKeyListResponse list_checkout_keys(project_slug)

Get all checkout keys

Returns a sequence of checkout keys for `:project`.

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

api_instance = CircleCi::ProjectApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.


begin
  #Get all checkout keys
  result = api_instance.list_checkout_keys(project_slug)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ProjectApi->list_checkout_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 

### Return type

[**CheckoutKeyListResponse**](CheckoutKeyListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_env_vars**
> EnvironmentVariableListResponse list_env_vars(project_slug)

List all environment variables

Returns four 'x' characters, in addition to the last four ASCII characters of the value, consistent with the display of environment variable values on the CircleCI website.

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

api_instance = CircleCi::ProjectApi.new
project_slug = 'project_slug_example' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.


begin
  #List all environment variables
  result = api_instance.list_env_vars(project_slug)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling ProjectApi->list_env_vars: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_slug** | **String**| Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. | 

### Return type

[**EnvironmentVariableListResponse**](EnvironmentVariableListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



