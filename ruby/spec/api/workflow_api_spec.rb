=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'

# Unit tests for CircleCi::WorkflowApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WorkflowApi' do
  before do
    # run before each test
    @instance = CircleCi::WorkflowApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkflowApi' do
    it 'should create an instance of WorkflowApi' do
      expect(@instance).to be_instance_of(CircleCi::WorkflowApi)
    end
  end

  # unit tests for approve_pending_approval_job_by_id
  # Approve a job
  # Approves a pending approval job in a workflow.
  # @param approval_request_id The ID of the job being approved.
  # @param id The unique ID of the workflow.
  # @param [Hash] opts the optional parameters
  # @return [MessageResponse]
  describe 'approve_pending_approval_job_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_workflow
  # Cancel a workflow
  # Cancels a running workflow.
  # @param id The unique ID of the workflow.
  # @param [Hash] opts the optional parameters
  # @return [MessageResponse]
  describe 'cancel_workflow test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_workflow_by_id
  # Get a workflow
  # Returns summary fields of a workflow by ID.
  # @param id The unique ID of the workflow.
  # @param [Hash] opts the optional parameters
  # @return [Workflow]
  describe 'get_workflow_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_workflow_jobs
  # Get a workflow&#x27;s jobs
  # Returns a sequence of jobs for a workflow.
  # @param id The unique ID of the workflow.
  # @param [Hash] opts the optional parameters
  # @return [WorkflowJobListResponse]
  describe 'list_workflow_jobs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for rerun_workflow
  # Rerun a workflow
  # Reruns a workflow.
  # @param id The unique ID of the workflow.
  # @param [Hash] opts the optional parameters
  # @option opts [RerunWorkflowParameters] :body 
  # @return [InlineResponse202]
  describe 'rerun_workflow test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
