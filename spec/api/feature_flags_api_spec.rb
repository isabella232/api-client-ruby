=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.1
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::FeatureFlagsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeatureFlagsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::FeatureFlagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureFlagsApi' do
    it 'should create an instance of FeatureFlagsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::FeatureFlagsApi)
    end
  end

  # unit tests for delete_feature_flag
  # Delete a feature flag in all environments. Be careful-- only delete feature flags that are no longer being used by your application.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_feature_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_flag
  # Get a single feature flag by key.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :env By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env&#x3D;production will restrict the returned configurations to just your production environment.
  # @return [FeatureFlag]
  describe 'get_feature_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_flag_status
  # Get the status for a particular feature flag.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param [Hash] opts the optional parameters
  # @return [FeatureFlagStatus]
  describe 'get_feature_flag_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_flag_statuses
  # Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as the state of the flag.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @return [FeatureFlagStatuses]
  describe 'get_feature_flag_statuses test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_flags
  # Get a list of all features in the given project.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :env By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env&#x3D;production will restrict the returned configurations to just your production environment.
  # @option opts [String] :tag Filter by tag. A tag can be used to group flags across projects.
  # @return [FeatureFlags]
  describe 'get_feature_flags test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_feature_flag
  # Perform a partial update to a feature.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param patch_comment Requires a JSON Patch representation of the desired changes to the project, and an optional comment. &#39;http://jsonpatch.com/&#39; Feature flag patches also support JSON Merge Patch format. &#39;https://tools.ietf.org/html/rfc7386&#39; The addition of comments is also supported.
  # @param [Hash] opts the optional parameters
  # @return [FeatureFlag]
  describe 'patch_feature_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_feature_flag
  # Creates a new feature flag.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param feature_flag_body Create a new feature flag.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'post_feature_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end