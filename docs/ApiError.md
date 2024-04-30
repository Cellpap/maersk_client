# MaerskClient::ApiError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | The request method type e.g. GET, POST. |  |
| **request_uri** | **String** | The request URI. |  |
| **status** | **String** | The textual representation of the response status. |  |
| **timestamp** | **String** | The date and time (dd-MM-yyyy hh:mm:ss) the error occured. |  |
| **message** | **String** | High level error message. |  |
| **debug_message** | **String** | Detailed error message. |  |
| **sub_errors** | [**Array&lt;ApiValidationError&gt;**](ApiValidationError.md) | The list of invalid fields in the request. | [optional] |

## Example

```ruby
require 'maersk_client'

instance = MaerskClient::ApiError.new(
  method: null,
  request_uri: null,
  status: null,
  timestamp: null,
  message: null,
  debug_message: null,
  sub_errors: null
)
```

