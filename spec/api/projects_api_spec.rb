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

# Unit tests for LaunchDarklyApi::ProjectsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProjectsApi' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::ProjectsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProjectsApi' do
    it 'should create an instance of ProjectsApi' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::ProjectsApi)
    end
  end

  # unit tests for delete_project
  # Delete a project by key. Caution-- deleting a project will delete all associated environments and feature flags. You cannot delete the last project in an account.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_project test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_project
  # Fetch a single project by key.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @return [Project]
  describe 'get_project test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_projects
  # Returns a list of all projects in the account.
  # 
  # @param [Hash] opts the optional parameters
  # @return [Projects]
  describe 'get_projects test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_project
  # Modify a project by ID.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
  # @param [Hash] opts the optional parameters
  # @return [Project]
  describe 'patch_project test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_project
  # Create a new project with the given key and name.
  # 
  # @param project_body Project keys must be unique within an account.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'post_project test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
