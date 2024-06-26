# MaerskClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_name** | **String** | Name of the address | [optional] |
| **street_name** | **String** | The name of the street of the party’s address. | [optional] |
| **street_number** | **String** | The number of the street of the party’s address. | [optional] |
| **floor** | **String** | The floor of the party’s street number. | [optional] |
| **post_code** | **String** | The postal code of the party’s address. | [optional] |
| **city_name** | **String** | The city name of the party’s address. | [optional] |
| **state_region** | **String** | The state/region of the party’s address. | [optional] |
| **country** | **String** | The country of the party’s address. | [optional] |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::Address.new(
  address_name: Henrik,
  street_name: Kronprincessegade,
  street_number: 54,
  floor: 5. sal,
  post_code: 1306,
  city_name: København,
  state_region: N/A,
  country: Denmark
)
```

