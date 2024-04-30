# MaerskClient::EventReferencesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_type** | **String** | The reference type codes defined by DCSA. * FF (Freight Forwarder’s Reference) * SI (Shipper’s Reference) * PO (Purchase Order Reference) * CR (Customer’s Reference) * AAO (Consignee’s Reference) * EQ (Equipment Reference)  |  |
| **reference_value** | **String** | The actual value of the reference. |  |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::EventReferencesInner.new(
  reference_type: FF,
  reference_value: my Reference
)
```

