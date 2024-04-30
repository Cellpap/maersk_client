# MaerskClient::Location

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_name** | **String** | The name of the location. | [optional] |
| **latitude** | **String** | Geographic coordinate that specifies the north–south position of a point on the Earth&#39;s surface. | [optional] |
| **longitude** | **String** | Geographic coordinate that specifies the east–west position of a point on the Earth&#39;s surface. | [optional] |
| **un_location_code** | **String** | The UN Location code specifying where the place is located. | [optional] |
| **facility_code** | **String** | The code used for identifying the specific facility. This code is not the UN Location Code. | [optional] |
| **facility_code_list_provider** | **String** | The provider used for identifying the facility Code | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::Location.new(
  location_name: Eiffel Tower,
  latitude: 48.8585500,
  longitude: 2.294492036,
  un_location_code: USNYC,
  facility_code: ADT,
  facility_code_list_provider: SMDG,
  address: null
)
```

