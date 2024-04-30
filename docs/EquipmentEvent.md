# MaerskClient::EquipmentEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique identifier for the Equipment Event ID/Transport Event ID/Shipment Event ID. | [optional] |
| **event_type** | **String** |  |  |
| **event_date_time** | **Time** | The local date and time, where the event took place or when the event will take place, in ISO 8601 format. For Shipment Event, it is the same as eventCreatedDateTime in UTC timezone. |  |
| **event_created_date_time** | **Time** | The UTC timestamp of when the event was created. |  |
| **event_classifier_code** | **String** | Code for the event classifier, either PLN, ACT or EST. * PLN - Planned * ACT - Actual * EST - Estimated  |  |
| **references** | [**Array&lt;EventReferencesInner&gt;**](EventReferencesInner.md) | References provided by the shipper or freight forwarder at the time of booking or at the time of providing shipping instruction. Carriers share it back when providing track and trace event updates, some are also printed on the B/L. Customers can use these references to track shipments in their internal systems. | [optional] |
| **equipment_event_type_code** | **String** | Unique identifier for equipmentEventTypeCode. * LOAD (Loaded) * DISC (Discharged) * GTIN (Gated in) * GTOT (Gated out) * STUF (Stuffed) * STRP (Stripped) * PICK (Pick-up) * DROP (Drop-off) * RSEA (Resealed) * RMVD (Removed) * INSP (Inspected)  | [optional] |
| **equipment_reference** | **String** | The unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible. According to ISO 6346, a container identification code consists of a 4-letter prefix and a 7-digit number (composed of a 3-letter owner code, a category identifier, a serial number, and a check-digit). If a container does not comply with ISO 6346, it is suggested to follow Recommendation #2 “Container with non-ISO identification” from SMDG.  | [optional] |
| **iso_equipment_code** | **String** | Unique code for the different equipment size/type used for transporting commodities. The code is a concatenation of ISO Equipment Size Code and ISO Equipment Type Code A and follows the ISO 6346 standard. | [optional] |
| **empty_indicator_code** | **String** | Code to denote whether the equipment is empty or laden. |  |
| **document_references** | [**Array&lt;DocumentReferencesInner&gt;**](DocumentReferencesInner.md) | An optional list of key-value (documentReferenceType-documentReferenceValue) pairs representing links to objects relevant to the event. The documentReferenceType-field is used to describe where the documentReferenceValue-field is pointing to. | [optional] |
| **event_location** | [**Location**](Location.md) |  | [optional] |
| **transport_call** | [**TransportCall**](TransportCall.md) |  |  |
| **seals** | [**Array&lt;Seal&gt;**](Seal.md) |  | [optional] |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::EquipmentEvent.new(
  event_id: 6832920321,
  event_type: EQUIPMENT,
  event_date_time: 2019-11-12T07:41+08:00,
  event_created_date_time: 2021-01-09T14:12:56Z,
  event_classifier_code: ACT,
  references: null,
  equipment_event_type_code: LOAD,
  equipment_reference: APZU4812090,
  iso_equipment_code: 42G1,
  empty_indicator_code: EMPTY,
  document_references: [{&quot;documentReferenceType&quot;:&quot;BKG&quot;,&quot;documentReferenceValue&quot;:&quot;ABC123123123&quot;},{&quot;documentReferenceType&quot;:&quot;TRD&quot;,&quot;documentReferenceValue&quot;:&quot;85943567-eedb-98d3-f4ed-aed697474ed4&quot;}],
  event_location: null,
  transport_call: null,
  seals: null
)
```

