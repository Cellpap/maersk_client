# MaerskClient::EventsEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique identifier for the Equipment Event ID/Transport Event ID/Shipment Event ID. | [optional] |
| **event_type** | **String** |  |  |
| **event_date_time** | **Time** | The local date and time, where the event took place or when the event will take place, in ISO 8601 format. For Shipment Event, it is the same as eventCreatedDateTime in UTC timezone. |  |
| **event_created_date_time** | **Time** | The UTC timestamp of when the event was created. |  |
| **event_classifier_code** | **String** | Code for the event classifier, either PLN, ACT or EST. * PLN - Planned * ACT - Actual * EST - Estimated  |  |
| **references** | [**Array&lt;EventReferencesInner&gt;**](EventReferencesInner.md) | References provided by the shipper or freight forwarder at the time of booking or at the time of providing shipping instruction. Carriers share it back when providing track and trace event updates, some are also printed on the B/L. Customers can use these references to track shipments in their internal systems. | [optional] |
| **shipment_event_type_code** | **String** | The status of the document in the process. Possible values are - RECE (Received) - DRFT (Drafted) - PENA (Pending Approval) - PENU (Pending Update) - REJE (Rejected) - APPR (Approved) - ISSU (Issued) - SURR (Surrendered) - SUBM (Submitted) - VOID (Void) - CONF (Confirmed) - REQS (Requested) - CMPL (Completed) - HOLD (On Hold) - RELS (Released)  Note: Version 1.1 replaces CONF (Confirmed) for RELS (Released) for documentTypeCode SRM (Shipment Release Message).  |  |
| **document_type_code** | **String** | The code to identify the type of information documentID points to. Can be one of the following values * CBR (Carrier Booking Request Reference) * BKG (Booking) * SHI (Shipping Instruction) * SRM (Shipment Release Message) * TRD (Transport Document) * ARN (Arrival Notice) * VGM (Verified Gross Mass) * CAS (Cargo Survey) * CUS (Customs Inspection) * DGD (Dangerous Goods Declaration) * OOG (Out of Gauge)  |  |
| **document_id** | **String** | The ID of the object defined by the Shipment Information Type. In some cases this is a UUID; in other cases this is a string.  |  |
| **reason** | **String** | Reason field in a Shipment event. This field can be used to explain why a specific event has been sent. | [optional] |
| **transport_event_type_code** | **String** | Identifier for type of Transport event - ARRI (Arrived) - DEPA (Departed)  | [optional] |
| **delay_reason_code** | **String** | Reason code for the delay. The SMDG-Delay-Reason-Codes are used for this attribute. The code list can be found at http://www.smdg.org/smdg-code-lists/  | [optional] |
| **change_remark** | **String** | Free text information provided by the vessel operator regarding the reasons for the change in schedule and/or plans to mitigate schedule slippage. | [optional] |
| **document_references** | [**Array&lt;DocumentReferencesInner&gt;**](DocumentReferencesInner.md) | An optional list of key-value (documentReferenceType-documentReferenceValue) pairs representing links to objects relevant to the event. The documentReferenceType-field is used to describe where the documentReferenceValue-field is pointing to. | [optional] |
| **transport_call** | [**TransportCall**](TransportCall.md) |  |  |
| **equipment_event_type_code** | **String** | Unique identifier for equipmentEventTypeCode. * LOAD (Loaded) * DISC (Discharged) * GTIN (Gated in) * GTOT (Gated out) * STUF (Stuffed) * STRP (Stripped) * PICK (Pick-up) * DROP (Drop-off) * RSEA (Resealed) * RMVD (Removed) * INSP (Inspected)  | [optional] |
| **equipment_reference** | **String** | The unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible. According to ISO 6346, a container identification code consists of a 4-letter prefix and a 7-digit number (composed of a 3-letter owner code, a category identifier, a serial number, and a check-digit). If a container does not comply with ISO 6346, it is suggested to follow Recommendation #2 “Container with non-ISO identification” from SMDG.  | [optional] |
| **iso_equipment_code** | **String** | Unique code for the different equipment size/type used for transporting commodities. The code is a concatenation of ISO Equipment Size Code and ISO Equipment Type Code A and follows the ISO 6346 standard. | [optional] |
| **empty_indicator_code** | **String** | Code to denote whether the equipment is empty or laden. |  |
| **event_location** | [**Location**](Location.md) |  | [optional] |
| **seals** | [**Array&lt;Seal&gt;**](Seal.md) |  | [optional] |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::EventsEventsInner.new(
  event_id: 6832920321,
  event_type: EQUIPMENT,
  event_date_time: 2019-11-12T07:41+08:00,
  event_created_date_time: 2021-01-09T14:12:56Z,
  event_classifier_code: ACT,
  references: null,
  shipment_event_type_code: DRFT,
  document_type_code: SHI,
  document_id: 205284917,
  reason: The following attributes are missing...,
  transport_event_type_code: ARRI,
  delay_reason_code: WEA,
  change_remark: Bad weather,
  document_references: [{&quot;documentReferenceType&quot;:&quot;BKG&quot;,&quot;documentReferenceValue&quot;:&quot;ABC123123123&quot;},{&quot;documentReferenceType&quot;:&quot;TRD&quot;,&quot;documentReferenceValue&quot;:&quot;85943567-eedb-98d3-f4ed-aed697474ed4&quot;}],
  transport_call: null,
  equipment_event_type_code: LOAD,
  equipment_reference: APZU4812090,
  iso_equipment_code: 42G1,
  empty_indicator_code: EMPTY,
  event_location: null,
  seals: null
)
```

