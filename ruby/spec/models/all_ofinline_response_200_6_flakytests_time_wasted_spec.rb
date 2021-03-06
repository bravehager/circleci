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

# Unit tests for CircleCi::AllOfinlineResponse2006FlakytestsTimeWasted
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AllOfinlineResponse2006FlakytestsTimeWasted' do
  before do
    # run before each test
    @instance = CircleCi::AllOfinlineResponse2006FlakytestsTimeWasted.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AllOfinlineResponse2006FlakytestsTimeWasted' do
    it 'should create an instance of AllOfinlineResponse2006FlakytestsTimeWasted' do
      expect(@instance).to be_instance_of(CircleCi::AllOfinlineResponse2006FlakytestsTimeWasted)
    end
  end
end
