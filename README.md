# maersk_client

MaerskClient - the Ruby gem for the Track &amp; Trace Events

Retrieve Track & Trace Events based on DCSA Interface standard v.2.2

This service provides visibility to Shipment, Equipment and Transport events for shipments booked with A.P. Moller-Maersk A/S
using standards set by the Digital Container Shipping Association.\\
<https://dcsa.org/>


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.2.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build maersk_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./maersk_client-1.0.0.gem
```

(for development, run `gem install --dev ./maersk_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'maersk_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'maersk_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'maersk_client'

# Setup authorization
MaerskClient.configure do |config|
  # Configure API key authorization: ApiKeyHeader
  config.api_key['ApiKeyHeader'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyHeader'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = MaerskClient::EventsApi.new
opts = {
  carrier_booking_reference: 'VAS000001', # String | A set of unique characters provided by carrier to identify a booking. Specifying this filter will only return events related to this particular carrierBookingReference. 
  transport_document_reference: '260029935', # String | A unique number reference allocated by the shipping line to the transport document and the main number used for the tracking of the status of the shipment. Specifying this filter will only return events related to this particular transportDocumentReference 
  equipment_reference: 'APZU4812090', # String | Will filter by the unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible. Specifying this filter will only return events related to this particular equipmentReference 
  event_type: ['SHIPMENT'], # Array<String> | The type of event(s) to filter by. Possible values are - SHIPMENT (Shipment events) - TRANSPORT (Transport events) - EQUIPMENT (Equipment events)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [eventType=SHIPMENT,EQUIPMENT] matches both Shipment and Equipment events.\\ Default value is all event types. 
  event_created_date_time: 'gte:2021-04-01T00:00:00Z', # String | Limit the result based on a UTC date. It is possible to use operators on this query parameter. This is done by adding an operator at the beginning of the value followed by a colon:\\ eventCreatedDateTime = **gte**:2021-04-01T00:00:00Z\\ would result in all events created >= 2021-04-01T00:00:00Z\\ The following operators are supported - gte: (>= Greater than or equal) - gt: (> Greater than) - lte: (<= Less than or equal) - lt: (< Less than) - eq: (= Equal to)  If no operator is provided, a **strictly equal** is used (this is equivalent to **eq:** operator). 
  shipment_event_type_code: ['RECE'], # Array<String> | The status of the document in the process to filter by. Possible values are - RECE (Received) - DRFT (Drafted) - PENA (Pending Approval) - PENU (Pending Update) - REJE (Rejected) - APPR (Approved) - ISSU (Issued) - SURR (Surrendered) - SUBM (Submitted) - VOID (Void) - CONF (Confirmed) - REQS (Requested) - CMPL (Completed) - HOLD (On Hold) - RELS (Released)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR-operator is used. For example, [shipmentEventTypeCode=RECE,DRFT] matches **both** Received (RECE) and Drafted (DRFT) shipment events.\\ Default is all shipmentEventTypeCodes.\\ This filter is only relevant when filtering on ShipmentEvents  **Note: Version 1.1 replaces CONF (Confirmed) for RELS (Released) for documentTypeCode SRM (Shipment Release Message).** 
  document_type_code: ['CBR'], # Array<String> | The documentTypeCode to filter by. Possible values are - CBR (Carrier Booking Request Reference) - BKG (Booking) - SHI (Shipping Instruction) - SRM (Shipment Release Message) - TRD (Transport Document) - ARN (Arrival Notice) - VGM (Verified Gross Mass) - CAS (Cargo Survey) - CUS (Customs Inspection) - DGD (Dangerous Goods Declaration) - OOG (Out of Gauge)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example [documentTypeCode=SHI,TRD] Matches **both** ShippingInstruction (SHI) and TransportDocument (TRD) shipment events.\\ Default is all documentTypeCodes. This filter is only relevant when filtering on ShipmentEvents 
  transport_event_type_code: ['ARRI'], # Array<String> | Identifier for type of Transport event to filter by - ARRI (Arrived) - DEPA (Departed)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [transportEventTypeCode=ARRI,DEPA} matches **both** Arrived (ARRI) and Departed (DEPA) transport events.\\ Default is all transportEventTypeCodes.\\ This filter is only relevant when filtering on TransportEvents 
  vessel_imo_number: '9321483', # String | The identifier of vessel for which schedule details are published. Depending on schedule type, this may not be available yet.  Specifying this filter will only return events related to this particular vesselIMONumber. 
  export_voyage_number: '2103S', # String | Filter on the vessel operator-specific identifier of the export Voyage.  Specifying this filter will only return events related to this particular exportVoyageNumber. 
  carrier_service_code: 'FE1', # String | Filter on the carrier specific identifier of the service.  Specifying this filter will only return events related to this particular carrierServiceCode. 
  un_location_code: 'FRPAR', # String | The UN Location code specifying where the place is located.  Specifying this filter will only return events related to this particular UN Location code. 
  equipment_event_type_code: ['LOAD'], # Array<String> | Unique identifier for equipmentEventTypeCode. * LOAD (Loaded) * DISC (Discharged) * GTIN (Gated in) * GTOT (Gated out) * STUF (Stuffed) * STRP (Stripped) * PICK (Pick-up) * DROP (Drop-off) * RSEA (Resealed) * RMVD (Removed) * INSP (Inspected)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [equipmentEventTypeCode=GTIN,GTOT] matches **both** Gated in (GTIN) and Gated out (GTOT) equipment events.\\ Default is all equipmentEventTypeCodes.\\ This filter is only relevant when filtering on EquipmentEvents 
  limit: 100, # Integer | Maximum number of items to return.
  cursor: '1', # String | A server generated value to specify a specific point in a collection result, used for pagination.  The current, previous, next, first and last pages are available in the response headers.  For the initial request to the service, this parameter should be null or 1.
  sort: 'eventType:DESC, equipmentReference:DESC, eventDateTime:ASC', # String | A comma-separated list of field names to define the sort order. Field names should be suffixed by a (:) followed by either the keyword ASC (for ascending order) or DESC (for descening order) to specify direction. **:ASC** may be omitted, in which case ascending order will be used.  The allowed sorting parameters are:   * eventType   * eventCreatedDateTime   * eventDateTime   * equipmentReference 
  api_version: '1' # String | An API-Version header MAY be added to the request (optional); if added it MUST only contain MAJOR version. API-Version header MUST be aligned with the URI version.
}

begin
  #Find events.
  result = api_instance.events_get(opts)
  p result
rescue MaerskClient::ApiError => e
  puts "Exception when calling EventsApi->events_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.maersk.com/track-and-trace-private*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MaerskClient::EventsApi* | [**events_get**](docs/EventsApi.md#events_get) | **GET** /events | Find events.


## Documentation for Models

 - [MaerskClient::Address](docs/Address.md)
 - [MaerskClient::ApiError](docs/ApiError.md)
 - [MaerskClient::ApiValidationError](docs/ApiValidationError.md)
 - [MaerskClient::DocumentReferencesInner](docs/DocumentReferencesInner.md)
 - [MaerskClient::EquipmentEvent](docs/EquipmentEvent.md)
 - [MaerskClient::Event](docs/Event.md)
 - [MaerskClient::EventReferencesInner](docs/EventReferencesInner.md)
 - [MaerskClient::Events](docs/Events.md)
 - [MaerskClient::EventsEventsInner](docs/EventsEventsInner.md)
 - [MaerskClient::Location](docs/Location.md)
 - [MaerskClient::Seal](docs/Seal.md)
 - [MaerskClient::ShipmentEvent](docs/ShipmentEvent.md)
 - [MaerskClient::TransportCall](docs/TransportCall.md)
 - [MaerskClient::TransportEvent](docs/TransportEvent.md)
 - [MaerskClient::Vessel](docs/Vessel.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### ApiKeyHeader


- **Type**: API key
- **API key parameter name**: Consumer-Key
- **Location**: HTTP header

### BearerAuth

- **Type**: Bearer authentication (JWT)

