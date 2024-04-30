# MaerskClient::EventsApi

All URIs are relative to *https://api.maersk.com/track-and-trace-private*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**events_get**](EventsApi.md#events_get) | **GET** /events | Find events. |


## events_get

> <Events> events_get(opts)

Find events.

Returns all events filtered by the queryParameters.  This endpoint requires **at least one** of the following input parameters:  * carrierBookingReference * transportDocumentReference * equipmentReference  Note:  It is possible to combine queryParameters. When combining queryParameters be aware that it is also possible to make combinations that are mutually contradicting.\\ For example, shipmentEventTypeCode=DRFT and equipmentEventTypeCode=GTIN; since there is no event that can be a ShipmentEvent and an EquipmentEvent at the same time this will return an empty list. 

### Examples

```ruby
require 'time'
require 'maersk_client'
# setup authorization
MaerskClient.configure do |config|
  # Configure API key authorization: ApiKeyHeader
  config.api_key['ApiKeyHeader'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyHeader'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
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
  # Find events.
  result = api_instance.events_get(opts)
  p result
rescue MaerskClient::ApiError => e
  puts "Error when calling EventsApi->events_get: #{e}"
end
```

#### Using the events_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Events>, Integer, Hash)> events_get_with_http_info(opts)

```ruby
begin
  # Find events.
  data, status_code, headers = api_instance.events_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Events>
rescue MaerskClient::ApiError => e
  puts "Error when calling EventsApi->events_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **carrier_booking_reference** | **String** | A set of unique characters provided by carrier to identify a booking. Specifying this filter will only return events related to this particular carrierBookingReference.  | [optional] |
| **transport_document_reference** | **String** | A unique number reference allocated by the shipping line to the transport document and the main number used for the tracking of the status of the shipment. Specifying this filter will only return events related to this particular transportDocumentReference  | [optional] |
| **equipment_reference** | **String** | Will filter by the unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible. Specifying this filter will only return events related to this particular equipmentReference  | [optional] |
| **event_type** | [**Array&lt;String&gt;**](String.md) | The type of event(s) to filter by. Possible values are - SHIPMENT (Shipment events) - TRANSPORT (Transport events) - EQUIPMENT (Equipment events)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [eventType&#x3D;SHIPMENT,EQUIPMENT] matches both Shipment and Equipment events.\\ Default value is all event types.  | [optional] |
| **event_created_date_time** | **String** | Limit the result based on a UTC date. It is possible to use operators on this query parameter. This is done by adding an operator at the beginning of the value followed by a colon:\\ eventCreatedDateTime &#x3D; **gte**:2021-04-01T00:00:00Z\\ would result in all events created &gt;&#x3D; 2021-04-01T00:00:00Z\\ The following operators are supported - gte: (&gt;&#x3D; Greater than or equal) - gt: (&gt; Greater than) - lte: (&lt;&#x3D; Less than or equal) - lt: (&lt; Less than) - eq: (&#x3D; Equal to)  If no operator is provided, a **strictly equal** is used (this is equivalent to **eq:** operator).  | [optional] |
| **shipment_event_type_code** | [**Array&lt;String&gt;**](String.md) | The status of the document in the process to filter by. Possible values are - RECE (Received) - DRFT (Drafted) - PENA (Pending Approval) - PENU (Pending Update) - REJE (Rejected) - APPR (Approved) - ISSU (Issued) - SURR (Surrendered) - SUBM (Submitted) - VOID (Void) - CONF (Confirmed) - REQS (Requested) - CMPL (Completed) - HOLD (On Hold) - RELS (Released)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR-operator is used. For example, [shipmentEventTypeCode&#x3D;RECE,DRFT] matches **both** Received (RECE) and Drafted (DRFT) shipment events.\\ Default is all shipmentEventTypeCodes.\\ This filter is only relevant when filtering on ShipmentEvents  **Note: Version 1.1 replaces CONF (Confirmed) for RELS (Released) for documentTypeCode SRM (Shipment Release Message).**  | [optional] |
| **document_type_code** | [**Array&lt;String&gt;**](String.md) | The documentTypeCode to filter by. Possible values are - CBR (Carrier Booking Request Reference) - BKG (Booking) - SHI (Shipping Instruction) - SRM (Shipment Release Message) - TRD (Transport Document) - ARN (Arrival Notice) - VGM (Verified Gross Mass) - CAS (Cargo Survey) - CUS (Customs Inspection) - DGD (Dangerous Goods Declaration) - OOG (Out of Gauge)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example [documentTypeCode&#x3D;SHI,TRD] Matches **both** ShippingInstruction (SHI) and TransportDocument (TRD) shipment events.\\ Default is all documentTypeCodes. This filter is only relevant when filtering on ShipmentEvents  | [optional] |
| **transport_event_type_code** | [**Array&lt;String&gt;**](String.md) | Identifier for type of Transport event to filter by - ARRI (Arrived) - DEPA (Departed)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [transportEventTypeCode&#x3D;ARRI,DEPA} matches **both** Arrived (ARRI) and Departed (DEPA) transport events.\\ Default is all transportEventTypeCodes.\\ This filter is only relevant when filtering on TransportEvents  | [optional] |
| **vessel_imo_number** | **String** | The identifier of vessel for which schedule details are published. Depending on schedule type, this may not be available yet.  Specifying this filter will only return events related to this particular vesselIMONumber.  | [optional] |
| **export_voyage_number** | **String** | Filter on the vessel operator-specific identifier of the export Voyage.  Specifying this filter will only return events related to this particular exportVoyageNumber.  | [optional] |
| **carrier_service_code** | **String** | Filter on the carrier specific identifier of the service.  Specifying this filter will only return events related to this particular carrierServiceCode.  | [optional] |
| **un_location_code** | **String** | The UN Location code specifying where the place is located.  Specifying this filter will only return events related to this particular UN Location code.  | [optional] |
| **equipment_event_type_code** | [**Array&lt;String&gt;**](String.md) | Unique identifier for equipmentEventTypeCode. * LOAD (Loaded) * DISC (Discharged) * GTIN (Gated in) * GTOT (Gated out) * STUF (Stuffed) * STRP (Stripped) * PICK (Pick-up) * DROP (Drop-off) * RSEA (Resealed) * RMVD (Removed) * INSP (Inspected)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [equipmentEventTypeCode&#x3D;GTIN,GTOT] matches **both** Gated in (GTIN) and Gated out (GTOT) equipment events.\\ Default is all equipmentEventTypeCodes.\\ This filter is only relevant when filtering on EquipmentEvents  | [optional] |
| **limit** | **Integer** | Maximum number of items to return. | [optional][default to 100] |
| **cursor** | **String** | A server generated value to specify a specific point in a collection result, used for pagination.  The current, previous, next, first and last pages are available in the response headers.  For the initial request to the service, this parameter should be null or 1. | [optional] |
| **sort** | **String** | A comma-separated list of field names to define the sort order. Field names should be suffixed by a (:) followed by either the keyword ASC (for ascending order) or DESC (for descening order) to specify direction. **:ASC** may be omitted, in which case ascending order will be used.  The allowed sorting parameters are:   * eventType   * eventCreatedDateTime   * eventDateTime   * equipmentReference  | [optional] |
| **api_version** | **String** | An API-Version header MAY be added to the request (optional); if added it MUST only contain MAJOR version. API-Version header MUST be aligned with the URI version. | [optional] |

### Return type

[**Events**](Events.md)

### Authorization

[ApiKeyHeader](../README.md#ApiKeyHeader), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/stream+json, text/event-stream

