# MaerskClient::TransportEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique identifier for the Equipment Event ID/Transport Event ID/Shipment Event ID. | [optional] |
| **event_type** | **String** |  |  |
| **event_date_time** | **Time** | The local date and time, where the event took place or when the event will take place, in ISO 8601 format. For Shipment Event, it is the same as eventCreatedDateTime in UTC timezone. |  |
| **event_created_date_time** | **Time** | The UTC timestamp of when the event was created. |  |
| **event_classifier_code** | **String** | Code for the event classifier, either PLN, ACT or EST. * PLN - Planned * ACT - Actual * EST - Estimated  |  |
| **references** | [**Array&lt;EventReferencesInner&gt;**](EventReferencesInner.md) | References provided by the shipper or freight forwarder at the time of booking or at the time of providing shipping instruction. Carriers share it back when providing track and trace event updates, some are also printed on the B/L. Customers can use these references to track shipments in their internal systems. | [optional] |
| **transport_event_type_code** | **String** | Identifier for type of Transport event - ARRI (Arrived) - DEPA (Departed)  | [optional] |
| **delay_reason_code** | **String** | Reason code for the delay. The SMDG-Delay-Reason-Codes are used for this attribute. The code list can be found at http://www.smdg.org/smdg-code-lists/  | [optional] |
| **change_remark** | **String** | Free text information provided by the vessel operator regarding the reasons for the change in schedule and/or plans to mitigate schedule slippage. | [optional] |
| **document_references** | [**Array&lt;DocumentReferencesInner&gt;**](DocumentReferencesInner.md) | An optional list of key-value (documentReferenceType-documentReferenceValue) pairs representing links to objects relevant to the event. The documentReferenceType-field is used to describe where the documentReferenceValue-field is pointing to. | [optional] |
| **transport_call** | [**TransportCall**](TransportCall.md) |  |  |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::TransportEvent.new(
  event_id: 6832920321,
  event_type: TRANSPORT,
  event_date_time: 2019-11-12T07:41+08:00,
  event_created_date_time: 2021-01-09T14:12:56Z,
  event_classifier_code: ACT,
  references: null,
  transport_event_type_code: ARRI,
  delay_reason_code: WEA,
  change_remark: Bad weather,
  document_references: [{&quot;documentReferenceType&quot;:&quot;BKG&quot;,&quot;documentReferenceValue&quot;:&quot;ABC123123123&quot;},{&quot;documentReferenceType&quot;:&quot;TRD&quot;,&quot;documentReferenceValue&quot;:&quot;85943567-eedb-98d3-f4ed-aed697474ed4&quot;}],
  transport_call: null
)
```

