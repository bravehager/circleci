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

# Unit tests for CircleCi::InlineResponse2005OrgDataMetrics
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse2005OrgDataMetrics' do
  before do
    # run before each test
    @instance = CircleCi::InlineResponse2005OrgDataMetrics.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2005OrgDataMetrics' do
    it 'should create an instance of InlineResponse2005OrgDataMetrics' do
      expect(@instance).to be_instance_of(CircleCi::InlineResponse2005OrgDataMetrics)
    end
  end
  describe 'test attribute "total_runs"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total_duration_secs"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total_credits_used"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "success_rate"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "throughput"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
