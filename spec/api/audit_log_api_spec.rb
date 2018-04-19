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

# Unit tests for SwaggerClient::AuditLogApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuditLogApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AuditLogApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuditLogApi' do
    it 'should create an instance of AuditLogApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AuditLogApi)
    end
  end

  # unit tests for get_audit_log_entries
  # Get a list of all audit log entries. The query parameters allow you to restrict the returned results by date ranges, resource specifiers, or a full-text search query.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :before A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have before this timestamp.
  # @option opts [Float] :after A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occured after this timestamp.
  # @option opts [String] :q Text to search for. You can search for the full or partial name of the resource involved or fullpartial email address of the member who made the change.
  # @option opts [Float] :limit A limit on the number of audit log entries to be returned, between 1 and 20.
  # @option opts [String] :spec A resource specifier, allowing you to filter audit log listings by resource.
  # @return [AuditLogEntries]
  describe 'get_audit_log_entries test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_audit_log_entry
  # Use this endpoint to fetch a single audit log entry by its resouce ID.
  # 
  # @param resource_id The resource ID.
  # @param [Hash] opts the optional parameters
  # @return [AuditLogEntry]
  describe 'get_audit_log_entry test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
