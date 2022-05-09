# CircleCi::UserApi

All URIs are relative to *https://circleci.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_collaborations**](UserApi.md#get_collaborations) | **GET** /me/collaborations | Collaborations
[**get_current_user**](UserApi.md#get_current_user) | **GET** /me | User Information
[**get_user**](UserApi.md#get_user) | **GET** /user/{id} | User Information

# **get_collaborations**
> Array&lt;Collaboration&gt; get_collaborations

Collaborations

Provides the set of organizations of which a user is a member or a collaborator.  The set of organizations that a user can collaborate on is composed of:  * Organizations that the current user belongs to across VCS types (e.g. BitBucket, GitHub) * The parent organization of repository that the user can collaborate on, but is not necessarily a member of * The organization of the current user's account

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

api_instance = CircleCi::UserApi.new

begin
  #Collaborations
  result = api_instance.get_collaborations
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling UserApi->get_collaborations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Collaboration&gt;**](Collaboration.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_current_user**
> User get_current_user

User Information

Provides information about the user that is currently signed in.

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

api_instance = CircleCi::UserApi.new

begin
  #User Information
  result = api_instance.get_current_user
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling UserApi->get_current_user: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user**
> User get_user(id)

User Information

Provides information about the user with the given ID.

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

api_instance = CircleCi::UserApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique ID of the user.


begin
  #User Information
  result = api_instance.get_user(id)
  p result
rescue CircleCi::ApiError => e
  puts "Exception when calling UserApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The unique ID of the user. | 

### Return type

[**User**](User.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



