=begin
#Kinde Management API

#Provides endpoints to manage your Kinde Businesses

The version of the OpenAPI document: 1
Contact: support@kinde.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for KindeSdk::OAuthApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OAuthApi' do
  before do
    # run before each test
    @api_instance = KindeSdk::OAuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OAuthApi' do
    it 'should create an instance of OAuthApi' do
      expect(@api_instance).to be_instance_of(KindeSdk::OAuthApi)
    end
  end

  # unit tests for get_user
  # Returns the details of the currently logged in user
  # Contains the id, names and email of the currently logged in user 
  # @param [Hash] opts the optional parameters
  # @return [UserProfile]
  describe 'get_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_profile_v2
  # Returns the details of the currently logged in user
  # Contains the id, names and email of the currently logged in user 
  # @param [Hash] opts the optional parameters
  # @return [UserProfileV2]
  describe 'get_user_profile_v2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
