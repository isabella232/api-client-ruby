=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.9.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module LaunchDarklyApi
  class IntegrationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an integration subscription by ID.
    # @param integration_key The key used to specify the integration kind.
    # @param integration_id The integration ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_integration_subscription(integration_key, integration_id, opts = {})
      delete_integration_subscription_with_http_info(integration_key, integration_id, opts)
      nil
    end

    # Delete an integration subscription by ID.
    # @param integration_key The key used to specify the integration kind.
    # @param integration_id The integration ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_integration_subscription_with_http_info(integration_key, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.delete_integration_subscription ...'
      end
      # verify the required parameter 'integration_key' is set
      if @api_client.config.client_side_validation && integration_key.nil?
        fail ArgumentError, "Missing the required parameter 'integration_key' when calling IntegrationsApi.delete_integration_subscription"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.delete_integration_subscription"
      end
      # resource path
      local_var_path = '/integrations/{integrationKey}/{integrationId}'.sub('{' + 'integrationKey' + '}', integration_key.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        @api_client.config.logger.debug "API called: IntegrationsApi#delete_integration_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a single integration subscription by ID.
    # @param integration_key The key used to specify the integration kind.
    # @param integration_id The integration ID.
    # @param [Hash] opts the optional parameters
    # @return [IntegrationSubscription]
    def get_integration_subscription(integration_key, integration_id, opts = {})
      data, _status_code, _headers = get_integration_subscription_with_http_info(integration_key, integration_id, opts)
      data
    end

    # Get a single integration subscription by ID.
    # @param integration_key The key used to specify the integration kind.
    # @param integration_id The integration ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationSubscription, Fixnum, Hash)>] IntegrationSubscription data, response status code and response headers
    def get_integration_subscription_with_http_info(integration_key, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.get_integration_subscription ...'
      end
      # verify the required parameter 'integration_key' is set
      if @api_client.config.client_side_validation && integration_key.nil?
        fail ArgumentError, "Missing the required parameter 'integration_key' when calling IntegrationsApi.get_integration_subscription"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.get_integration_subscription"
      end
      # resource path
      local_var_path = '/integrations/{integrationKey}/{integrationId}'.sub('{' + 'integrationKey' + '}', integration_key.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        :return_type => 'IntegrationSubscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#get_integration_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of all configured integrations of a given kind.
    # @param integration_key The key used to specify the integration kind.
    # @param [Hash] opts the optional parameters
    # @return [Integration]
    def get_integration_subscriptions(integration_key, opts = {})
      data, _status_code, _headers = get_integration_subscriptions_with_http_info(integration_key, opts)
      data
    end

    # Get a list of all configured integrations of a given kind.
    # @param integration_key The key used to specify the integration kind.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integration, Fixnum, Hash)>] Integration data, response status code and response headers
    def get_integration_subscriptions_with_http_info(integration_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.get_integration_subscriptions ...'
      end
      # verify the required parameter 'integration_key' is set
      if @api_client.config.client_side_validation && integration_key.nil?
        fail ArgumentError, "Missing the required parameter 'integration_key' when calling IntegrationsApi.get_integration_subscriptions"
      end
      # resource path
      local_var_path = '/integrations/{integrationKey}'.sub('{' + 'integrationKey' + '}', integration_key.to_s)

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
        :return_type => 'Integration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#get_integration_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of all configured audit log event integrations associated with this account.
    # @param [Hash] opts the optional parameters
    # @return [Integrations]
    def get_integrations(opts = {})
      data, _status_code, _headers = get_integrations_with_http_info(opts)
      data
    end

    # Get a list of all configured audit log event integrations associated with this account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integrations, Fixnum, Hash)>] Integrations data, response status code and response headers
    def get_integrations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.get_integrations ...'
      end
      # resource path
      local_var_path = '/integrations'

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
        :return_type => 'Integrations')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#get_integrations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modify an integration subscription by ID.
    # @param integration_key The key used to specify the integration kind.
    # @param integration_id The integration ID.
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [IntegrationSubscription]
    def patch_integration_subscription(integration_key, integration_id, patch_delta, opts = {})
      data, _status_code, _headers = patch_integration_subscription_with_http_info(integration_key, integration_id, patch_delta, opts)
      data
    end

    # Modify an integration subscription by ID.
    # @param integration_key The key used to specify the integration kind.
    # @param integration_id The integration ID.
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationSubscription, Fixnum, Hash)>] IntegrationSubscription data, response status code and response headers
    def patch_integration_subscription_with_http_info(integration_key, integration_id, patch_delta, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.patch_integration_subscription ...'
      end
      # verify the required parameter 'integration_key' is set
      if @api_client.config.client_side_validation && integration_key.nil?
        fail ArgumentError, "Missing the required parameter 'integration_key' when calling IntegrationsApi.patch_integration_subscription"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.patch_integration_subscription"
      end
      # verify the required parameter 'patch_delta' is set
      if @api_client.config.client_side_validation && patch_delta.nil?
        fail ArgumentError, "Missing the required parameter 'patch_delta' when calling IntegrationsApi.patch_integration_subscription"
      end
      # resource path
      local_var_path = '/integrations/{integrationKey}/{integrationId}'.sub('{' + 'integrationKey' + '}', integration_key.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'IntegrationSubscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#patch_integration_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new integration subscription of a given kind.
    # @param integration_key The key used to specify the integration kind.
    # @param subscription_body Create a new integration subscription.
    # @param [Hash] opts the optional parameters
    # @return [IntegrationSubscription]
    def post_integration_subscription(integration_key, subscription_body, opts = {})
      data, _status_code, _headers = post_integration_subscription_with_http_info(integration_key, subscription_body, opts)
      data
    end

    # Create a new integration subscription of a given kind.
    # @param integration_key The key used to specify the integration kind.
    # @param subscription_body Create a new integration subscription.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationSubscription, Fixnum, Hash)>] IntegrationSubscription data, response status code and response headers
    def post_integration_subscription_with_http_info(integration_key, subscription_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.post_integration_subscription ...'
      end
      # verify the required parameter 'integration_key' is set
      if @api_client.config.client_side_validation && integration_key.nil?
        fail ArgumentError, "Missing the required parameter 'integration_key' when calling IntegrationsApi.post_integration_subscription"
      end
      # verify the required parameter 'subscription_body' is set
      if @api_client.config.client_side_validation && subscription_body.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_body' when calling IntegrationsApi.post_integration_subscription"
      end
      # resource path
      local_var_path = '/integrations/{integrationKey}'.sub('{' + 'integrationKey' + '}', integration_key.to_s)

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
      post_body = @api_client.object_to_http_body(subscription_body)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationSubscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#post_integration_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
