=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.9.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::FeatureFlagStatusForQueriedEnvironment
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeatureFlagStatusForQueriedEnvironment' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::FeatureFlagStatusForQueriedEnvironment.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureFlagStatusForQueriedEnvironment' do
    it 'should create an instance of FeatureFlagStatusForQueriedEnvironment' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::FeatureFlagStatusForQueriedEnvironment)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["new", "active", "inactive", "launched"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.name = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "last_requested"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "default"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
