=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'

# Unit tests for CircleCi::ScheduleApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ScheduleApi' do
  before do
    # run before each test
    @instance = CircleCi::ScheduleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ScheduleApi' do
    it 'should create an instance of ScheduleApi' do
      expect(@instance).to be_instance_of(CircleCi::ScheduleApi)
    end
  end

  # unit tests for create_schedule
  # Create a schedule
  # Creates a schedule and returns the created schedule.
  # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateScheduleParameters] :body 
  # @return [Schedule]
  describe 'create_schedule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_schedule_by_id
  # Delete a schedule
  # Deletes the schedule by id.
  # @param schedule_id The unique ID of the schedule.
  # @param [Hash] opts the optional parameters
  # @return [MessageResponse]
  describe 'delete_schedule_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_schedule_by_id
  # Get a schedule
  # Get a schedule by id.
  # @param schedule_id The unique ID of the schedule.
  # @param [Hash] opts the optional parameters
  # @return [Schedule]
  describe 'get_schedule_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_schedules_for_project
  # Get all schedules
  # Returns all schedules for this project.
  # @param project_slug Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page_token A token to retrieve the next page of results.
  # @return [InlineResponse20013]
  describe 'list_schedules_for_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_schedule
  # Update a schedule
  # Updates a schedule and returns the updated schedule.
  # @param schedule_id The unique ID of the schedule.
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateScheduleParameters] :body 
  # @return [Schedule]
  describe 'update_schedule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
