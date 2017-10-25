=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SwaggerClient
  class EnvironmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete an environment by ID
    # 
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_environment(project_key, environment_key, opts = {})
      delete_environment_with_http_info(project_key, environment_key, opts)
      return nil
    end

    # Delete an environment by ID
    # 
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_environment_with_http_info(project_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EnvironmentsApi.delete_environment ..."
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling EnvironmentsApi.delete_environment"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling EnvironmentsApi.delete_environment"
      end
      # resource path
      local_var_path = "/environments/{projectKey}/{environmentKey}".sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#delete_environment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an environment given a project and key.
    # 
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key
    # @param [Hash] opts the optional parameters
    # @return [Environment]
    def get_environment(project_key, environment_key, opts = {})
      data, _status_code, _headers = get_environment_with_http_info(project_key, environment_key, opts)
      return data
    end

    # Get an environment given a project and key.
    # 
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Environment, Fixnum, Hash)>] Environment data, response status code and response headers
    def get_environment_with_http_info(project_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EnvironmentsApi.get_environment ..."
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling EnvironmentsApi.get_environment"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling EnvironmentsApi.get_environment"
      end
      # resource path
      local_var_path = "/environments/{projectKey}/{environmentKey}".sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Environment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#get_environment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify an environment by ID
    # 
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key
    # @param patch_delta http://jsonpatch.com/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_environment(project_key, environment_key, patch_delta, opts = {})
      patch_environment_with_http_info(project_key, environment_key, patch_delta, opts)
      return nil
    end

    # Modify an environment by ID
    # 
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key
    # @param patch_delta http://jsonpatch.com/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_environment_with_http_info(project_key, environment_key, patch_delta, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EnvironmentsApi.patch_environment ..."
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling EnvironmentsApi.patch_environment"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling EnvironmentsApi.patch_environment"
      end
      # verify the required parameter 'patch_delta' is set
      if @api_client.config.client_side_validation && patch_delta.nil?
        fail ArgumentError, "Missing the required parameter 'patch_delta' when calling EnvironmentsApi.patch_environment"
      end
      # resource path
      local_var_path = "/environments/{projectKey}/{environmentKey}".sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(patch_delta)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#patch_environment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new environment in a specified project with a given name, key, and swatch color.
    # 
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_body New environment
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_environment(project_key, environment_body, opts = {})
      post_environment_with_http_info(project_key, environment_body, opts)
      return nil
    end

    # Create a new environment in a specified project with a given name, key, and swatch color.
    # 
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_body New environment
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_environment_with_http_info(project_key, environment_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EnvironmentsApi.post_environment ..."
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling EnvironmentsApi.post_environment"
      end
      # verify the required parameter 'environment_body' is set
      if @api_client.config.client_side_validation && environment_body.nil?
        fail ArgumentError, "Missing the required parameter 'environment_body' when calling EnvironmentsApi.post_environment"
      end
      # resource path
      local_var_path = "/environments/{projectKey}".sub('{' + 'projectKey' + '}', project_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(environment_body)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#post_environment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
