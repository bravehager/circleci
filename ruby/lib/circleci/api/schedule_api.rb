=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

module CircleCi
  class ScheduleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a schedule
    # Creates a schedule and returns the created schedule.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateScheduleParameters] :body 
    # @return [Schedule]
    def create_schedule(project_slug, opts = {})
      data, _status_code, _headers = create_schedule_with_http_info(project_slug, opts)
      data
    end

    # Create a schedule
    # Creates a schedule and returns the created schedule.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateScheduleParameters] :body 
    # @return [Array<(Schedule, Integer, Hash)>] Schedule data, response status code and response headers
    def create_schedule_with_http_info(project_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScheduleApi.create_schedule ...'
      end
      # verify the required parameter 'project_slug' is set
      if @api_client.config.client_side_validation && project_slug.nil?
        fail ArgumentError, "Missing the required parameter 'project_slug' when calling ScheduleApi.create_schedule"
      end
      # resource path
      local_var_path = '/project/{project-slug}/schedule'.sub('{' + 'project-slug' + '}', project_slug.to_s)

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

      return_type = opts[:return_type] || 'Schedule' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduleApi#create_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a schedule
    # Deletes the schedule by id.
    # @param schedule_id The unique ID of the schedule.
    # @param [Hash] opts the optional parameters
    # @return [MessageResponse]
    def delete_schedule_by_id(schedule_id, opts = {})
      data, _status_code, _headers = delete_schedule_by_id_with_http_info(schedule_id, opts)
      data
    end

    # Delete a schedule
    # Deletes the schedule by id.
    # @param schedule_id The unique ID of the schedule.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageResponse, Integer, Hash)>] MessageResponse data, response status code and response headers
    def delete_schedule_by_id_with_http_info(schedule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScheduleApi.delete_schedule_by_id ...'
      end
      # verify the required parameter 'schedule_id' is set
      if @api_client.config.client_side_validation && schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'schedule_id' when calling ScheduleApi.delete_schedule_by_id"
      end
      # resource path
      local_var_path = '/schedule/{schedule-id}'.sub('{' + 'schedule-id' + '}', schedule_id.to_s)

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

      return_type = opts[:return_type] || 'MessageResponse' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduleApi#delete_schedule_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a schedule
    # Get a schedule by id.
    # @param schedule_id The unique ID of the schedule.
    # @param [Hash] opts the optional parameters
    # @return [Schedule]
    def get_schedule_by_id(schedule_id, opts = {})
      data, _status_code, _headers = get_schedule_by_id_with_http_info(schedule_id, opts)
      data
    end

    # Get a schedule
    # Get a schedule by id.
    # @param schedule_id The unique ID of the schedule.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Schedule, Integer, Hash)>] Schedule data, response status code and response headers
    def get_schedule_by_id_with_http_info(schedule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScheduleApi.get_schedule_by_id ...'
      end
      # verify the required parameter 'schedule_id' is set
      if @api_client.config.client_side_validation && schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'schedule_id' when calling ScheduleApi.get_schedule_by_id"
      end
      # resource path
      local_var_path = '/schedule/{schedule-id}'.sub('{' + 'schedule-id' + '}', schedule_id.to_s)

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

      return_type = opts[:return_type] || 'Schedule' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduleApi#get_schedule_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all schedules
    # Returns all schedules for this project.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token A token to retrieve the next page of results.
    # @return [InlineResponse20013]
    def list_schedules_for_project(project_slug, opts = {})
      data, _status_code, _headers = list_schedules_for_project_with_http_info(project_slug, opts)
      data
    end

    # Get all schedules
    # Returns all schedules for this project.
    # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token A token to retrieve the next page of results.
    # @return [Array<(InlineResponse20013, Integer, Hash)>] InlineResponse20013 data, response status code and response headers
    def list_schedules_for_project_with_http_info(project_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScheduleApi.list_schedules_for_project ...'
      end
      # verify the required parameter 'project_slug' is set
      if @api_client.config.client_side_validation && project_slug.nil?
        fail ArgumentError, "Missing the required parameter 'project_slug' when calling ScheduleApi.list_schedules_for_project"
      end
      # resource path
      local_var_path = '/project/{project-slug}/schedule'.sub('{' + 'project-slug' + '}', project_slug.to_s)

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

      return_type = opts[:return_type] || 'InlineResponse20013' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduleApi#list_schedules_for_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a schedule
    # Updates a schedule and returns the updated schedule.
    # @param schedule_id The unique ID of the schedule.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateScheduleParameters] :body 
    # @return [Schedule]
    def update_schedule(schedule_id, opts = {})
      data, _status_code, _headers = update_schedule_with_http_info(schedule_id, opts)
      data
    end

    # Update a schedule
    # Updates a schedule and returns the updated schedule.
    # @param schedule_id The unique ID of the schedule.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateScheduleParameters] :body 
    # @return [Array<(Schedule, Integer, Hash)>] Schedule data, response status code and response headers
    def update_schedule_with_http_info(schedule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScheduleApi.update_schedule ...'
      end
      # verify the required parameter 'schedule_id' is set
      if @api_client.config.client_side_validation && schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'schedule_id' when calling ScheduleApi.update_schedule"
      end
      # resource path
      local_var_path = '/schedule/{schedule-id}'.sub('{' + 'schedule-id' + '}', schedule_id.to_s)

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

      return_type = opts[:return_type] || 'Schedule' 

      auth_names = opts[:auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduleApi#update_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
