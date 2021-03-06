# LaunchDarklyApi::FeatureFlagBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | A human-friendly name for the feature flag. Remember to note if this flag is intended to be temporary or permanent. | 
**key** | **String** | A unique key that will be used to reference the flag in your code. | 
**description** | **String** | A description of the feature flag. | [optional] 
**variations** | [**Array&lt;Variation&gt;**](Variation.md) | An array of possible variations for the flag. | 
**temporary** | **BOOLEAN** | Whether or not the flag is a temporary flag. | [optional] 
**tags** | **Array&lt;String&gt;** | Tags for the feature flag. | [optional] 
**include_in_snippet** | **BOOLEAN** | Whether or not this flag should be made available to the client-side JavaScript SDK. | [optional] 
**client_side_availability** | [**ClientSideAvailability**](ClientSideAvailability.md) |  | [optional] 
**defaults** | [**Defaults**](Defaults.md) |  | [optional] 


