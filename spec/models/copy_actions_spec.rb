=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.19
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::CopyActions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CopyActions' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::CopyActions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CopyActions' do
    it 'should create an instance of CopyActions' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::CopyActions)
    end
  end
end
