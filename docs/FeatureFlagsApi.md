# SwaggerClient::FeatureFlagsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_feature_flag**](FeatureFlagsApi.md#delete_feature_flag) | **DELETE** /flags/{projectKey}/{featureFlagKey} | Delete a feature flag in all environments. Be careful-- only delete feature flags that are no longer being used by your application.
[**get_feature_flag**](FeatureFlagsApi.md#get_feature_flag) | **GET** /flags/{projectKey}/{featureFlagKey} | Get a single feature flag by key.
[**get_feature_flag_status**](FeatureFlagsApi.md#get_feature_flag_status) | **GET** /flag-statuses/{projectKey}/{environmentKey}/{featureFlagKey} | Get the status for a particular feature flag.
[**get_feature_flag_statuses**](FeatureFlagsApi.md#get_feature_flag_statuses) | **GET** /flag-statuses/{projectKey}/{environmentKey} | Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as the state of the flag.
[**get_feature_flags**](FeatureFlagsApi.md#get_feature_flags) | **GET** /flags/{projectKey} | Get a list of all features in the given project.
[**patch_feature_flag**](FeatureFlagsApi.md#patch_feature_flag) | **PATCH** /flags/{projectKey}/{featureFlagKey} | Perform a partial update to a feature.
[**post_feature_flag**](FeatureFlagsApi.md#post_feature_flag) | **POST** /flags/{projectKey} | Creates a new feature flag.


# **delete_feature_flag**
> delete_feature_flag(project_key, feature_flag_key, )

Delete a feature flag in all environments. Be careful-- only delete feature flags that are no longer being used by your application.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::FeatureFlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = "feature_flag_key_example" # String | The feature flag's key. The key identifies the flag in your code.


begin
  #Delete a feature flag in all environments. Be careful-- only delete feature flags that are no longer being used by your application.
  api_instance.delete_feature_flag(project_key, feature_flag_key, )
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeatureFlagsApi->delete_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flag**
> FeatureFlag get_feature_flag(project_key, feature_flag_key, , opts)

Get a single feature flag by key.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::FeatureFlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = "feature_flag_key_example" # String | The feature flag's key. The key identifies the flag in your code.

opts = { 
  env: "env_example" # String | By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env=production will restrict the returned configurations to just your production environment.
}

begin
  #Get a single feature flag by key.
  result = api_instance.get_feature_flag(project_key, feature_flag_key, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **env** | **String**| By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env&#x3D;production will restrict the returned configurations to just your production environment. | [optional] 

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flag_status**
> FeatureFlagStatus get_feature_flag_status(project_key, environment_key, feature_flag_key, )

Get the status for a particular feature flag.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::FeatureFlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

feature_flag_key = "feature_flag_key_example" # String | The feature flag's key. The key identifies the flag in your code.


begin
  #Get the status for a particular feature flag.
  result = api_instance.get_feature_flag_status(project_key, environment_key, feature_flag_key, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_feature_flag_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 

### Return type

[**FeatureFlagStatus**](FeatureFlagStatus.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flag_statuses**
> FeatureFlagStatuses get_feature_flag_statuses(project_key, environment_key, )

Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as the state of the flag.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::FeatureFlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.


begin
  #Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as the state of the flag.
  result = api_instance.get_feature_flag_statuses(project_key, environment_key, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_feature_flag_statuses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 

### Return type

[**FeatureFlagStatuses**](FeatureFlagStatuses.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flags**
> FeatureFlags get_feature_flags(project_key, , opts)

Get a list of all features in the given project.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::FeatureFlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

opts = { 
  env: "env_example" # String | By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env=production will restrict the returned configurations to just your production environment.
  tag: "tag_example" # String | Filter by tag. A tag can be used to group flags across projects.
}

begin
  #Get a list of all features in the given project.
  result = api_instance.get_feature_flags(project_key, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_feature_flags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **env** | **String**| By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env&#x3D;production will restrict the returned configurations to just your production environment. | [optional] 
 **tag** | **String**| Filter by tag. A tag can be used to group flags across projects. | [optional] 

### Return type

[**FeatureFlags**](FeatureFlags.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_feature_flag**
> FeatureFlag patch_feature_flag(project_key, feature_flag_key, patch_comment)

Perform a partial update to a feature.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::FeatureFlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = "feature_flag_key_example" # String | The feature flag's key. The key identifies the flag in your code.

patch_comment = SwaggerClient::PatchComment.new # PatchComment | Requires a JSON Patch representation of the desired changes to the project, and an optional comment. 'http://jsonpatch.com/' Feature flag patches also support JSON Merge Patch format. 'https://tools.ietf.org/html/rfc7386' The addition of comments is also supported.


begin
  #Perform a partial update to a feature.
  result = api_instance.patch_feature_flag(project_key, feature_flag_key, patch_comment)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeatureFlagsApi->patch_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **patch_comment** | [**PatchComment**](PatchComment.md)| Requires a JSON Patch representation of the desired changes to the project, and an optional comment. &#39;http://jsonpatch.com/&#39; Feature flag patches also support JSON Merge Patch format. &#39;https://tools.ietf.org/html/rfc7386&#39; The addition of comments is also supported. | 

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_feature_flag**
> post_feature_flag(project_key, feature_flag_body)

Creates a new feature flag.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::FeatureFlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_body = SwaggerClient::FeatureFlagBody.new # FeatureFlagBody | Create a new feature flag.


begin
  #Creates a new feature flag.
  api_instance.post_feature_flag(project_key, feature_flag_body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeatureFlagsApi->post_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_body** | [**FeatureFlagBody**](FeatureFlagBody.md)| Create a new feature flag. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


