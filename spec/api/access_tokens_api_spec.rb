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

# Unit tests for LaunchDarklyApi::AccessTokensApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccessTokensApi' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::AccessTokensApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccessTokensApi' do
    it 'should create an instance of AccessTokensApi' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::AccessTokensApi)
    end
  end

  # unit tests for delete_token
  # Delete an access token by ID.
  # @param token_id The access token ID.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_token
  # Get a single access token by ID.
  # @param token_id The access token ID.
  # @param [Hash] opts the optional parameters
  # @return [Token]
  describe 'get_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tokens
  # Returns a list of tokens in the account.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :show_all If set to true, and the authentication access token has the \&quot;Admin\&quot; role, personal access tokens for all members will be retrieved.
  # @return [Tokens]
  describe 'get_tokens test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_token
  # Modify an access token by ID.
  # @param token_id The access token ID.
  # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
  # @param [Hash] opts the optional parameters
  # @return [Token]
  describe 'patch_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_token
  # Create a new token.
  # @param token_body Create a new access token.
  # @param [Hash] opts the optional parameters
  # @return [Token]
  describe 'post_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reset_token
  # Reset an access token&#39;s secret key with an optional expiry time for the old key.
  # @param token_id The access token ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :expiry An expiration time for the old token key, expressed as a Unix epoch time in milliseconds. By default, the token will expire immediately.
  # @return [Token]
  describe 'reset_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
