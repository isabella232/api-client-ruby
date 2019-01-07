=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.12
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for LaunchDarklyApi::UserSettingsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserSettingsApi' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::UserSettingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserSettingsApi' do
    it 'should create an instance of UserSettingsApi' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::UserSettingsApi)
    end
  end

  # unit tests for get_user_flag_setting
  # Fetch a single flag setting for a user by key.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param user_key The user&#39;s key.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param [Hash] opts the optional parameters
  # @return [UserFlagSetting]
  describe 'get_user_flag_setting test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_flag_settings
  # Fetch a single flag setting for a user by key.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param user_key The user&#39;s key.
  # @param [Hash] opts the optional parameters
  # @return [UserFlagSettings]
  describe 'get_user_flag_settings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_flag_setting
  # Specifically enable or disable a feature flag for a user based on their key.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param user_key The user&#39;s key.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param user_settings_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'put_flag_setting test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
