# MaerskClient::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique identifier for the Equipment Event ID/Transport Event ID/Shipment Event ID. | [optional] |
| **event_type** | **String** | The Event Type of the object. |  |
| **event_date_time** | **Time** | The local date and time, where the event took place or when the event will take place, in ISO 8601 format. For Shipment Event, it is the same as eventCreatedDateTime in UTC timezone. |  |
| **event_created_date_time** | **Time** | The UTC timestamp of when the event was created. |  |
| **event_classifier_code** | **String** | Code for the event classifier, either PLN, ACT or EST. * PLN - Planned * ACT - Actual * EST - Estimated  |  |
| **references** | [**Array&lt;EventReferencesInner&gt;**](EventReferencesInner.md) | References provided by the shipper or freight forwarder at the time of booking or at the time of providing shipping instruction. Carriers share it back when providing track and trace event updates, some are also printed on the B/L. Customers can use these references to track shipments in their internal systems. | [optional] |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::Event.new(
  event_id: 6832920321,
  event_type: null,
  event_date_time: 2019-11-12T07:41+08:00,
  event_created_date_time: 2021-01-09T14:12:56Z,
  event_classifier_code: ACT,
  references: null
)
```

