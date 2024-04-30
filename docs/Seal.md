# MaerskClient::Seal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **seal_number** | **String** | Identifies a seal affixed to the container. |  |
| **seal_source** | **String** | The source of the seal, namely who has affixed the seal. This attribute links to the Seal Source ID defined in the Seal Source reference data entity. * CAR (Carrier) * SHI (Shipper) * PHY (Phytosanitary) * VET (Veterinary) * CUS (Customs)  | [optional] |
| **seal_type** | **String** | The type of seal. This attribute links to the Seal Type ID defined in the Seal Type reference data entity. * KLP (Keyless padlock) * BLT (Bolt) * WIR (Wire)  |  |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::Seal.new(
  seal_number: CN123456,
  seal_source: CUS,
  seal_type: WIR
)
```

