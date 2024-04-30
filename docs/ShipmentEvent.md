# MaerskClient::ShipmentEvent

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

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::ShipmentEvent.new(
  event_id: 6832920321,
  event_type: SHIPMENT,
  event_date_time: 2019-11-12T07:41+08:00,
  event_created_date_time: 2021-01-09T14:12:56Z,
  event_classifier_code: ACT,
  references: null,
  shipment_event_type_code: DRFT,
  document_type_code: SHI,
  document_id: 205284917,
  reason: The following attributes are missing...
)
```

