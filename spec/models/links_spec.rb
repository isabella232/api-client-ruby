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

# Unit tests for LaunchDarklyApi::Links
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Links' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::Links.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Links' do
    it 'should create an instance of Links' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::Links)
    end
  end
  describe 'test attribute "_self"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "_next"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
