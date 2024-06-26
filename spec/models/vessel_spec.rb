=begin
#Track & Trace Events

#Retrieve Track & Trace Events based on DCSA Interface standard v.2.2  This service provides visibility to Shipment, Equipment and Transport events for shipments booked with A.P. Moller-Maersk A/S using standards set by the Digital Container Shipping Association.\\ <https://dcsa.org/> 

The version of the OpenAPI document: 1.2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for MaerskClient::Vessel
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe MaerskClient::Vessel do
  let(:instance) { MaerskClient::Vessel.new }

  describe 'test an instance of Vessel' do
    it 'should create an instance of Vessel' do
      expect(instance).to be_instance_of(MaerskClient::Vessel)
    end
  end
  describe 'test attribute "vessel_imo_number"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "vessel_name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "vessel_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "vessel_call_sign_number"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "vessel_operator_carrier_code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "vessel_operator_carrier_code_list_provider"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SMDG", "NMFTA"])
      # validator.allowable_values.each do |value|
      #   expect { instance.vessel_operator_carrier_code_list_provider = value }.not_to raise_error
      # end
    end
  end

end
