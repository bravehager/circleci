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

# Unit tests for CircleCi::AnyOfinlineResponse2002
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AnyOfinlineResponse2002' do
  before do
    # run before each test
    @instance = CircleCi::AnyOfinlineResponse2002.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AnyOfinlineResponse2002' do
    it 'should create an instance of AnyOfinlineResponse2002' do
      expect(@instance).to be_instance_of(CircleCi::AnyOfinlineResponse2002)
    end
  end
end
