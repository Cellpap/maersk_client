# MaerskClient::ApiValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | The field that has failed validation. |  |
| **rejected_value** | **String** | The value that has failed validation. |  |
| **message** | **String** | The reason and advice for failed validation. |  |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::ApiValidationError.new(
  field: null,
  rejected_value: null,
  message: null
)
```

