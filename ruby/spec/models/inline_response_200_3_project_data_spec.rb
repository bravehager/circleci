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

# Unit tests for CircleCi::InlineResponse2003ProjectData
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse2003ProjectData' do
  before do
    # run before each test
    @instance = CircleCi::InlineResponse2003ProjectData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2003ProjectData' do
    it 'should create an instance of InlineResponse2003ProjectData' do
      expect(@instance).to be_instance_of(CircleCi::InlineResponse2003ProjectData)
    end
  end
  describe 'test attribute "metrics"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "trends"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
