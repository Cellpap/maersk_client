=begin
#Track & Trace Events

#Retrieve Track & Trace Events based on DCSA Interface standard v.2.2  This service provides visibility to Shipment, Equipment and Transport events for shipments booked with A.P. Moller-Maersk A/S using standards set by the Digital Container Shipping Association.\\ <https://dcsa.org/> 

The version of the OpenAPI document: 1.2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'

describe MaerskClient::Configuration do
  let(:config) { MaerskClient::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.maersk.com/track-and-trace-private")
    # MaerskClient.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.maersk.com/track-and-trace-private")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.maersk.com/track-and-trace-private")
      end
    end
  end
end
