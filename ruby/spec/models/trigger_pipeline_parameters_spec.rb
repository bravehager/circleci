=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CircleCi::TriggerPipelineParameters
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TriggerPipelineParameters' do
  before do
    # run before each test
    @instance = CircleCi::TriggerPipelineParameters.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TriggerPipelineParameters' do
    it 'should create an instance of TriggerPipelineParameters' do
      expect(@instance).to be_instance_of(CircleCi::TriggerPipelineParameters)
    end
  end
  describe 'test attribute "branch"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tag"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "parameters"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end