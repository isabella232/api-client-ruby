=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.10
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::Rollout
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Rollout' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::Rollout.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Rollout' do
    it 'should create an instance of Rollout' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::Rollout)
    end
  end
  describe 'test attribute "variations"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

