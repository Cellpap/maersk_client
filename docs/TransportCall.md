# MaerskClient::TransportCall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transport_call_id** | **String** | The unique identifier for a transport call | [optional] |
| **carrier_service_code** | **String** | The code of the service for which the schedule details are published. | [optional] |
| **carrier_voyage_number** | **String** | \\*\\*\\*do not use\\*\\*\\* this field is replaced by &#x60;exportVoyageNumber&#x60; from Version 1.1 and will be removed by the API from next major version  The vessel operator-specific identifier of the Voyage.\\ The export voyage is returned when there are multiple voyages.  | [optional] |
| **export_voyage_number** | **String** | The vessel operator-specific identifier of the export Voyage. | [optional] |
| **import_voyage_number** | **String** | The vessel operator-specific identifier of the import Voyage. | [optional] |
| **transport_call_sequence_number** | **Integer** | Transport operator&#39;s key that uniquely identifies each individual call. This key is essential to distinguish between two separate calls at the same location within one voyage. | [optional] |
| **un_location_code** | **String** | The UN Location code specifying where the place is located. | [optional] |
| **facility_code** | **String** | The code used for identifying the specific facility. This code is not the UN Location Code. | [optional] |
| **facility_code_list_provider** | **String** | The provider used for identifying the facility Code | [optional] |
| **facility_type_code** | **String** | A specialized version of the facilityCode to be used in TransportCalls. The code to identify the specific type of facility. * BOCR (Border crossing) * CLOC (Customer location) * COFS (Container freight station) * COYA (Deprecated - use OFFD intead) * OFFD (Off dock storage) * DEPO (Depot) * INTE (Inland terminal) * POTE (Port terminal) * RAMP (Ramp)  | [optional] |
| **other_facility** | **String** | An alternative way to capture the facility when no standardized DCSA facility code can be found. | [optional] |
| **mode_of_transport** | **String** | The code specifying the mode of transport. |  |
| **location** | [**Location**](Location.md) |  | [optional] |
| **vessel** | [**Vessel**](Vessel.md) |  | [optional] |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::TransportCall.new(
  transport_call_id: 123e4567-e89b-12d3-a456-426614174000,
  carrier_service_code: FE1,
  carrier_voyage_number: 131W,
  export_voyage_number: 2103S,
  import_voyage_number: 2103N,
  transport_call_sequence_number: 2,
  un_location_code: USNYC,
  facility_code: ADT,
  facility_code_list_provider: SMDG,
  facility_type_code: POTE,
  other_facility: Balboa Port Terminal, Avenida Balboa Panama,
  mode_of_transport: null,
  location: null,
  vessel: null
)
```

