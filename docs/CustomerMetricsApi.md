# LaunchDarklyApi::CustomerMetricsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_evaluations**](CustomerMetricsApi.md#get_evaluations) | **GET** /usage/evaluations/{envId}/{flagKey} | Get events usage by event id and the feature flag key.
[**get_event**](CustomerMetricsApi.md#get_event) | **GET** /usage/events/{type} | Get events usage by event type.
[**get_events**](CustomerMetricsApi.md#get_events) | **GET** /usage/events | Get events usage endpoints.
[**get_mau**](CustomerMetricsApi.md#get_mau) | **GET** /usage/mau | Get monthly active user data.
[**get_mau_by_category**](CustomerMetricsApi.md#get_mau_by_category) | **GET** /usage/mau/bycategory | Get monthly active user data by category.
[**get_stream**](CustomerMetricsApi.md#get_stream) | **GET** /usage/streams/{source} | Get a stream endpoint and return timeseries data.
[**get_stream_by_sdk**](CustomerMetricsApi.md#get_stream_by_sdk) | **GET** /usage/streams/{source}/bysdkversion | Get a stream timeseries data by source show sdk version metadata.
[**get_stream_sdk_version**](CustomerMetricsApi.md#get_stream_sdk_version) | **GET** /usage/streams/{source}/sdkversions | Get a stream timeseries data by source and show all sdk version associated.
[**get_streams**](CustomerMetricsApi.md#get_streams) | **GET** /usage/streams | Returns a list of all streams.
[**get_usage**](CustomerMetricsApi.md#get_usage) | **GET** /usage | Returns of the usage endpoints available.


# **get_evaluations**
> StreamSDKVersion get_evaluations(env_id, flag_key)

Get events usage by event id and the feature flag key.

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

api_instance = LaunchDarklyApi::CustomerMetricsApi.new

env_id = 'env_id_example' # String | The environment id for the flag evaluations in question.

flag_key = 'flag_key_example' # String | The key of the flag we want metrics for.


begin
  #Get events usage by event id and the feature flag key.
  result = api_instance.get_evaluations(env_id, flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling CustomerMetricsApi->get_evaluations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **env_id** | **String**| The environment id for the flag evaluations in question. | 
 **flag_key** | **String**| The key of the flag we want metrics for. | 

### Return type

[**StreamSDKVersion**](StreamSDKVersion.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_event**
> StreamSDKVersion get_event(type)

Get events usage by event type.

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

api_instance = LaunchDarklyApi::CustomerMetricsApi.new

type = 'type_example' # String | The type of event we would like to track.


begin
  #Get events usage by event type.
  result = api_instance.get_event(type)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling CustomerMetricsApi->get_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The type of event we would like to track. | 

### Return type

[**StreamSDKVersion**](StreamSDKVersion.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_events**
> Events get_events

Get events usage endpoints.

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

api_instance = LaunchDarklyApi::CustomerMetricsApi.new

begin
  #Get events usage endpoints.
  result = api_instance.get_events
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling CustomerMetricsApi->get_events: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Events**](Events.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_mau**
> MAU get_mau

Get monthly active user data.

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

api_instance = LaunchDarklyApi::CustomerMetricsApi.new

begin
  #Get monthly active user data.
  result = api_instance.get_mau
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling CustomerMetricsApi->get_mau: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MAU**](MAU.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_mau_by_category**
> MAUbyCategory get_mau_by_category

Get monthly active user data by category.

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

api_instance = LaunchDarklyApi::CustomerMetricsApi.new

begin
  #Get monthly active user data by category.
  result = api_instance.get_mau_by_category
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling CustomerMetricsApi->get_mau_by_category: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MAUbyCategory**](MAUbyCategory.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_stream**
> Stream get_stream(source)

Get a stream endpoint and return timeseries data.

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

api_instance = LaunchDarklyApi::CustomerMetricsApi.new

source = 'source_example' # String | The source of where the stream comes from.


begin
  #Get a stream endpoint and return timeseries data.
  result = api_instance.get_stream(source)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling CustomerMetricsApi->get_stream: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **String**| The source of where the stream comes from. | 

### Return type

[**Stream**](Stream.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_stream_by_sdk**
> StreamBySDK get_stream_by_sdk(source)

Get a stream timeseries data by source show sdk version metadata.

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

api_instance = LaunchDarklyApi::CustomerMetricsApi.new

source = 'source_example' # String | The source of where the stream comes from.


begin
  #Get a stream timeseries data by source show sdk version metadata.
  result = api_instance.get_stream_by_sdk(source)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling CustomerMetricsApi->get_stream_by_sdk: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **String**| The source of where the stream comes from. | 

### Return type

[**StreamBySDK**](StreamBySDK.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_stream_sdk_version**
> StreamSDKVersion get_stream_sdk_version(source)

Get a stream timeseries data by source and show all sdk version associated.

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

api_instance = LaunchDarklyApi::CustomerMetricsApi.new

source = 'source_example' # String | The source of where the stream comes from.


begin
  #Get a stream timeseries data by source and show all sdk version associated.
  result = api_instance.get_stream_sdk_version(source)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling CustomerMetricsApi->get_stream_sdk_version: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **String**| The source of where the stream comes from. | 

### Return type

[**StreamSDKVersion**](StreamSDKVersion.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_streams**
> Streams get_streams

Returns a list of all streams.

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

api_instance = LaunchDarklyApi::CustomerMetricsApi.new

begin
  #Returns a list of all streams.
  result = api_instance.get_streams
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling CustomerMetricsApi->get_streams: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Streams**](Streams.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage**
> Usage get_usage

Returns of the usage endpoints available.

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

api_instance = LaunchDarklyApi::CustomerMetricsApi.new

begin
  #Returns of the usage endpoints available.
  result = api_instance.get_usage
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling CustomerMetricsApi->get_usage: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Usage**](Usage.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



