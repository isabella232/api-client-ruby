# LaunchDarklyApi::UserSegmentsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user_segment**](UserSegmentsApi.md#delete_user_segment) | **DELETE** /segments/{projectKey}/{environmentKey}/{userSegmentKey} | Delete a user segment.
[**get_expiring_user_targets_on_segment**](UserSegmentsApi.md#get_expiring_user_targets_on_segment) | **GET** /segments/{projectKey}/{userSegmentKey}/expiring-user-targets/{environmentKey} | Get expiring user targets for user segment
[**get_user_segment**](UserSegmentsApi.md#get_user_segment) | **GET** /segments/{projectKey}/{environmentKey}/{userSegmentKey} | Get a single user segment by key.
[**get_user_segments**](UserSegmentsApi.md#get_user_segments) | **GET** /segments/{projectKey}/{environmentKey} | Get a list of all user segments in the given project.
[**patch_expiring_user_targets_on_segment**](UserSegmentsApi.md#patch_expiring_user_targets_on_segment) | **PATCH** /segments/{projectKey}/{userSegmentKey}/expiring-user-targets/{environmentKey} | Update, add, or delete expiring user targets on user segment
[**patch_user_segment**](UserSegmentsApi.md#patch_user_segment) | **PATCH** /segments/{projectKey}/{environmentKey}/{userSegmentKey} | Perform a partial update to a user segment.
[**post_user_segment**](UserSegmentsApi.md#post_user_segment) | **POST** /segments/{projectKey}/{environmentKey} | Creates a new user segment.
[**updated_unbounded_segment_targets**](UserSegmentsApi.md#updated_unbounded_segment_targets) | **POST** /segments/{projectKey}/{environmentKey}/{userSegmentKey}/unbounded-users | Update targets included or excluded in an unbounded segment


# **delete_user_segment**
> delete_user_segment(project_key, environment_key, user_segment_key, )

Delete a user segment.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSegmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_segment_key = 'user_segment_key_example' # String | The user segment's key. The key identifies the user segment in your code.


begin
  #Delete a user segment.
  api_instance.delete_user_segment(project_key, environment_key, user_segment_key, )
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSegmentsApi->delete_user_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_segment_key** | **String**| The user segment&#39;s key. The key identifies the user segment in your code. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_expiring_user_targets_on_segment**
> UserTargetingExpirationForSegment get_expiring_user_targets_on_segment(project_key, environment_key, user_segment_key, )

Get expiring user targets for user segment

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSegmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_segment_key = 'user_segment_key_example' # String | The user segment's key. The key identifies the user segment in your code.


begin
  #Get expiring user targets for user segment
  result = api_instance.get_expiring_user_targets_on_segment(project_key, environment_key, user_segment_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSegmentsApi->get_expiring_user_targets_on_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_segment_key** | **String**| The user segment&#39;s key. The key identifies the user segment in your code. | 

### Return type

[**UserTargetingExpirationForSegment**](UserTargetingExpirationForSegment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_segment**
> UserSegment get_user_segment(project_key, environment_key, user_segment_key, )

Get a single user segment by key.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSegmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_segment_key = 'user_segment_key_example' # String | The user segment's key. The key identifies the user segment in your code.


begin
  #Get a single user segment by key.
  result = api_instance.get_user_segment(project_key, environment_key, user_segment_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSegmentsApi->get_user_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_segment_key** | **String**| The user segment&#39;s key. The key identifies the user segment in your code. | 

### Return type

[**UserSegment**](UserSegment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_segments**
> UserSegments get_user_segments(project_key, environment_key, , opts)

Get a list of all user segments in the given project.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSegmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

opts = { 
  tag: 'tag_example' # String | Filter by tag. A tag can be used to group flags across projects.
}

begin
  #Get a list of all user segments in the given project.
  result = api_instance.get_user_segments(project_key, environment_key, , opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSegmentsApi->get_user_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **tag** | **String**| Filter by tag. A tag can be used to group flags across projects. | [optional] 

### Return type

[**UserSegments**](UserSegments.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_expiring_user_targets_on_segment**
> UserTargetingExpirationForSegment patch_expiring_user_targets_on_segment(project_key, environment_key, user_segment_key, semantic_patch_with_comment)

Update, add, or delete expiring user targets on user segment

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSegmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_segment_key = 'user_segment_key_example' # String | The user segment's key. The key identifies the user segment in your code.

semantic_patch_with_comment = nil # Object | Requires a Semantic Patch representation of the desired changes to the resource. 'https://apidocs.launchdarkly.com/reference#updates-via-semantic-patches'. The addition of comments is also supported.


begin
  #Update, add, or delete expiring user targets on user segment
  result = api_instance.patch_expiring_user_targets_on_segment(project_key, environment_key, user_segment_key, semantic_patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSegmentsApi->patch_expiring_user_targets_on_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_segment_key** | **String**| The user segment&#39;s key. The key identifies the user segment in your code. | 
 **semantic_patch_with_comment** | **Object**| Requires a Semantic Patch representation of the desired changes to the resource. &#39;https://apidocs.launchdarkly.com/reference#updates-via-semantic-patches&#39;. The addition of comments is also supported. | 

### Return type

[**UserTargetingExpirationForSegment**](UserTargetingExpirationForSegment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_user_segment**
> UserSegment patch_user_segment(project_key, environment_key, user_segment_key, patch_only)

Perform a partial update to a user segment.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSegmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_segment_key = 'user_segment_key_example' # String | The user segment's key. The key identifies the user segment in your code.

patch_only = [LaunchDarklyApi::PatchOperation.new] # Array<PatchOperation> | Requires a JSON Patch representation of the desired changes to the project. 'http://jsonpatch.com/' Feature flag patches also support JSON Merge Patch format. 'https://tools.ietf.org/html/rfc7386' The addition of comments is also supported.


begin
  #Perform a partial update to a user segment.
  result = api_instance.patch_user_segment(project_key, environment_key, user_segment_key, patch_only)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSegmentsApi->patch_user_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_segment_key** | **String**| The user segment&#39;s key. The key identifies the user segment in your code. | 
 **patch_only** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)| Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; Feature flag patches also support JSON Merge Patch format. &#39;https://tools.ietf.org/html/rfc7386&#39; The addition of comments is also supported. | 

### Return type

[**UserSegment**](UserSegment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_user_segment**
> UserSegment post_user_segment(project_key, environment_key, user_segment_body)

Creates a new user segment.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSegmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_segment_body = LaunchDarklyApi::UserSegmentBody.new # UserSegmentBody | Create a new user segment.


begin
  #Creates a new user segment.
  result = api_instance.post_user_segment(project_key, environment_key, user_segment_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSegmentsApi->post_user_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_segment_body** | [**UserSegmentBody**](UserSegmentBody.md)| Create a new user segment. | 

### Return type

[**UserSegment**](UserSegment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **updated_unbounded_segment_targets**
> updated_unbounded_segment_targets(project_key, environment_key, user_segment_key, unbounded_segment_targets_body)

Update targets included or excluded in an unbounded segment

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSegmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_segment_key = 'user_segment_key_example' # String | The user segment's key. The key identifies the user segment in your code.

unbounded_segment_targets_body = LaunchDarklyApi::UnboundedSegmentTargetsBody.new # UnboundedSegmentTargetsBody | Add or remove user targets to the included or excluded lists on an unbounded segment


begin
  #Update targets included or excluded in an unbounded segment
  api_instance.updated_unbounded_segment_targets(project_key, environment_key, user_segment_key, unbounded_segment_targets_body)
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSegmentsApi->updated_unbounded_segment_targets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_segment_key** | **String**| The user segment&#39;s key. The key identifies the user segment in your code. | 
 **unbounded_segment_targets_body** | [**UnboundedSegmentTargetsBody**](UnboundedSegmentTargetsBody.md)| Add or remove user targets to the included or excluded lists on an unbounded segment | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



