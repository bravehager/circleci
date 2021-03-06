=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

module CircleCi
  class PipelineApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Continue a pipeline
    # Continue a pipeline from the setup phase.
    # @param [Hash] opts the optional parameters
    # @option opts [PipelineContinueBody] :body 
    # @return [MessageResponse]
    def continue_pipeline(opts = {})
      data, _status_code, _headers = continue_pipeline_with_http_info(opts)
      data
    end

    # Continue a pipeline
    # Continue a pipeline from the setup phase.
    # @param [Hash] opts the optional parameters
    # @option opts [PipelineContinueBody] :body 
    # @return [Array<(MessageResponse, Integer, Hash)>] MessageResponse data, response status code and response headers
    def continue_pipeline_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelineApi.continue_pipeline ...'
      end
      # resource path
      local_var_path = '/pipeline/continue'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'MessageResponse' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineApi#continue_pipeline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a pipeline
    # Returns a pipeline by ID.
    # @param pipeline_id The unique ID of the pipeline.
    # @param [Hash] opts the optional parameters
    # @return [Pipeline]
    def get_pipeline_by_id(pipeline_id, opts = {})
      data, _status_code, _headers = get_pipeline_by_id_with_http_info(pipeline_id, opts)
      data
    end

    # Get a pipeline
    # Returns a pipeline by ID.
    # @param pipeline_id The unique ID of the pipeline.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Pipeline, Integer, Hash)>] Pipeline data, response status code and response headers
    def get_pipeline_by_id_with_http_info(pipeline_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelineApi.get_pipeline_by_id ...'
      end
      # verify the required parameter 'pipeline_id' is set
      if @api_client.config.client_side_validation && pipeline_id.nil?
        fail ArgumentError, "Missing the required parameter 'pipeline_id' when calling PipelineApi.get_pipeline_by_id"
      end
      # resource path
      local_var_path = '/pipeline/{pipeline-id}'.sub('{' + 'pipeline-id' + '}', pipeline_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Pipeline' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineApi#get_pipeline_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a pipeline
    # Returns a pipeline by number.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param pipeline_number The number of the pipeline.
    # @param [Hash] opts the optional parameters
    # @return [Pipeline]
    def get_pipeline_by_number(project_slug, pipeline_number, opts = {})
      data, _status_code, _headers = get_pipeline_by_number_with_http_info(project_slug, pipeline_number, opts)
      data
    end

    # Get a pipeline
    # Returns a pipeline by number.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param pipeline_number The number of the pipeline.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Pipeline, Integer, Hash)>] Pipeline data, response status code and response headers
    def get_pipeline_by_number_with_http_info(project_slug, pipeline_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelineApi.get_pipeline_by_number ...'
      end
      # verify the required parameter 'project_slug' is set
      if @api_client.config.client_side_validation && project_slug.nil?
        fail ArgumentError, "Missing the required parameter 'project_slug' when calling PipelineApi.get_pipeline_by_number"
      end
      # verify the required parameter 'pipeline_number' is set
      if @api_client.config.client_side_validation && pipeline_number.nil?
        fail ArgumentError, "Missing the required parameter 'pipeline_number' when calling PipelineApi.get_pipeline_by_number"
      end
      # resource path
      local_var_path = '/project/{project-slug}/pipeline/{pipeline-number}'.sub('{' + 'project-slug' + '}', project_slug.to_s).sub('{' + 'pipeline-number' + '}', pipeline_number.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Pipeline' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineApi#get_pipeline_by_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a pipeline's configuration
    # Returns a pipeline's configuration by ID.
    # @param pipeline_id The unique ID of the pipeline.
    # @param [Hash] opts the optional parameters
    # @return [PipelineConfig]
    def get_pipeline_config_by_id(pipeline_id, opts = {})
      data, _status_code, _headers = get_pipeline_config_by_id_with_http_info(pipeline_id, opts)
      data
    end

    # Get a pipeline&#x27;s configuration
    # Returns a pipeline&#x27;s configuration by ID.
    # @param pipeline_id The unique ID of the pipeline.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PipelineConfig, Integer, Hash)>] PipelineConfig data, response status code and response headers
    def get_pipeline_config_by_id_with_http_info(pipeline_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelineApi.get_pipeline_config_by_id ...'
      end
      # verify the required parameter 'pipeline_id' is set
      if @api_client.config.client_side_validation && pipeline_id.nil?
        fail ArgumentError, "Missing the required parameter 'pipeline_id' when calling PipelineApi.get_pipeline_config_by_id"
      end
      # resource path
      local_var_path = '/pipeline/{pipeline-id}/config'.sub('{' + 'pipeline-id' + '}', pipeline_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'PipelineConfig' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineApi#get_pipeline_config_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get your pipelines
    # Returns a sequence of all pipelines for this project triggered by the user.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token A token to retrieve the next page of results.
    # @return [PipelineListResponse]
    def list_my_pipelines(project_slug, opts = {})
      data, _status_code, _headers = list_my_pipelines_with_http_info(project_slug, opts)
      data
    end

    # Get your pipelines
    # Returns a sequence of all pipelines for this project triggered by the user.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token A token to retrieve the next page of results.
    # @return [Array<(PipelineListResponse, Integer, Hash)>] PipelineListResponse data, response status code and response headers
    def list_my_pipelines_with_http_info(project_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelineApi.list_my_pipelines ...'
      end
      # verify the required parameter 'project_slug' is set
      if @api_client.config.client_side_validation && project_slug.nil?
        fail ArgumentError, "Missing the required parameter 'project_slug' when calling PipelineApi.list_my_pipelines"
      end
      # resource path
      local_var_path = '/project/{project-slug}/pipeline/mine'.sub('{' + 'project-slug' + '}', project_slug.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page-token'] = opts[:'page_token'] if !opts[:'page_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'PipelineListResponse' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineApi#list_my_pipelines\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of pipelines
    # Returns all pipelines for the most recently built projects (max 250) you follow in an organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :org_slug Org slug in the form &#x60;vcs-slug/org-name&#x60;
    # @option opts [String] :page_token A token to retrieve the next page of results.
    # @option opts [BOOLEAN] :mine Only include entries created by your user.
    # @return [PipelineListResponse]
    def list_pipelines(opts = {})
      data, _status_code, _headers = list_pipelines_with_http_info(opts)
      data
    end

    # Get a list of pipelines
    # Returns all pipelines for the most recently built projects (max 250) you follow in an organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :org_slug Org slug in the form &#x60;vcs-slug/org-name&#x60;
    # @option opts [String] :page_token A token to retrieve the next page of results.
    # @option opts [BOOLEAN] :mine Only include entries created by your user.
    # @return [Array<(PipelineListResponse, Integer, Hash)>] PipelineListResponse data, response status code and response headers
    def list_pipelines_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelineApi.list_pipelines ...'
      end
      # resource path
      local_var_path = '/pipeline'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'org-slug'] = opts[:'org_slug'] if !opts[:'org_slug'].nil?
      query_params[:'page-token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'mine'] = opts[:'mine'] if !opts[:'mine'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'PipelineListResponse' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineApi#list_pipelines\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all pipelines
    # Returns all pipelines for this project.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :branch The name of a vcs branch.
    # @option opts [String] :page_token A token to retrieve the next page of results.
    # @return [PipelineListResponse]
    def list_pipelines_for_project(project_slug, opts = {})
      data, _status_code, _headers = list_pipelines_for_project_with_http_info(project_slug, opts)
      data
    end

    # Get all pipelines
    # Returns all pipelines for this project.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :branch The name of a vcs branch.
    # @option opts [String] :page_token A token to retrieve the next page of results.
    # @return [Array<(PipelineListResponse, Integer, Hash)>] PipelineListResponse data, response status code and response headers
    def list_pipelines_for_project_with_http_info(project_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelineApi.list_pipelines_for_project ...'
      end
      # verify the required parameter 'project_slug' is set
      if @api_client.config.client_side_validation && project_slug.nil?
        fail ArgumentError, "Missing the required parameter 'project_slug' when calling PipelineApi.list_pipelines_for_project"
      end
      # resource path
      local_var_path = '/project/{project-slug}/pipeline'.sub('{' + 'project-slug' + '}', project_slug.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      query_params[:'page-token'] = opts[:'page_token'] if !opts[:'page_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'PipelineListResponse' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineApi#list_pipelines_for_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a pipeline's workflows
    # Returns a paginated list of workflows by pipeline ID.
    # @param pipeline_id The unique ID of the pipeline.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token A token to retrieve the next page of results.
    # @return [WorkflowListResponse]
    def list_workflows_by_pipeline_id(pipeline_id, opts = {})
      data, _status_code, _headers = list_workflows_by_pipeline_id_with_http_info(pipeline_id, opts)
      data
    end

    # Get a pipeline&#x27;s workflows
    # Returns a paginated list of workflows by pipeline ID.
    # @param pipeline_id The unique ID of the pipeline.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token A token to retrieve the next page of results.
    # @return [Array<(WorkflowListResponse, Integer, Hash)>] WorkflowListResponse data, response status code and response headers
    def list_workflows_by_pipeline_id_with_http_info(pipeline_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelineApi.list_workflows_by_pipeline_id ...'
      end
      # verify the required parameter 'pipeline_id' is set
      if @api_client.config.client_side_validation && pipeline_id.nil?
        fail ArgumentError, "Missing the required parameter 'pipeline_id' when calling PipelineApi.list_workflows_by_pipeline_id"
      end
      # resource path
      local_var_path = '/pipeline/{pipeline-id}/workflow'.sub('{' + 'pipeline-id' + '}', pipeline_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page-token'] = opts[:'page_token'] if !opts[:'page_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'WorkflowListResponse' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineApi#list_workflows_by_pipeline_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Trigger a new pipeline
    # Triggers a new pipeline on the project.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @option opts [TriggerPipelineParameters] :body 
    # @return [PipelineCreation]
    def trigger_pipeline(project_slug, opts = {})
      data, _status_code, _headers = trigger_pipeline_with_http_info(project_slug, opts)
      data
    end

    # Trigger a new pipeline
    # Triggers a new pipeline on the project.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @option opts [TriggerPipelineParameters] :body 
    # @return [Array<(PipelineCreation, Integer, Hash)>] PipelineCreation data, response status code and response headers
    def trigger_pipeline_with_http_info(project_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelineApi.trigger_pipeline ...'
      end
      # verify the required parameter 'project_slug' is set
      if @api_client.config.client_side_validation && project_slug.nil?
        fail ArgumentError, "Missing the required parameter 'project_slug' when calling PipelineApi.trigger_pipeline"
      end
      # resource path
      local_var_path = '/project/{project-slug}/pipeline'.sub('{' + 'project-slug' + '}', project_slug.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'PipelineCreation' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineApi#trigger_pipeline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
