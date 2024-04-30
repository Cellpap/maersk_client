=begin
#Track & Trace Events

#Retrieve Track & Trace Events based on DCSA Interface standard v.2.2  This service provides visibility to Shipment, Equipment and Transport events for shipments booked with A.P. Moller-Maersk A/S using standards set by the Digital Container Shipping Association.\\ <https://dcsa.org/> 

The version of the OpenAPI document: 1.2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module MaerskClient
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find events.
    # Returns all events filtered by the queryParameters.  This endpoint requires **at least one** of the following input parameters:  * carrierBookingReference * transportDocumentReference * equipmentReference  Note:  It is possible to combine queryParameters. When combining queryParameters be aware that it is also possible to make combinations that are mutually contradicting.\\ For example, shipmentEventTypeCode=DRFT and equipmentEventTypeCode=GTIN; since there is no event that can be a ShipmentEvent and an EquipmentEvent at the same time this will return an empty list. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :carrier_booking_reference A set of unique characters provided by carrier to identify a booking. Specifying this filter will only return events related to this particular carrierBookingReference. 
    # @option opts [String] :transport_document_reference A unique number reference allocated by the shipping line to the transport document and the main number used for the tracking of the status of the shipment. Specifying this filter will only return events related to this particular transportDocumentReference 
    # @option opts [String] :equipment_reference Will filter by the unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible. Specifying this filter will only return events related to this particular equipmentReference 
    # @option opts [Array<String>] :event_type The type of event(s) to filter by. Possible values are - SHIPMENT (Shipment events) - TRANSPORT (Transport events) - EQUIPMENT (Equipment events)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [eventType&#x3D;SHIPMENT,EQUIPMENT] matches both Shipment and Equipment events.\\ Default value is all event types. 
    # @option opts [String] :event_created_date_time Limit the result based on a UTC date. It is possible to use operators on this query parameter. This is done by adding an operator at the beginning of the value followed by a colon:\\ eventCreatedDateTime &#x3D; **gte**:2021-04-01T00:00:00Z\\ would result in all events created &gt;&#x3D; 2021-04-01T00:00:00Z\\ The following operators are supported - gte: (&gt;&#x3D; Greater than or equal) - gt: (&gt; Greater than) - lte: (&lt;&#x3D; Less than or equal) - lt: (&lt; Less than) - eq: (&#x3D; Equal to)  If no operator is provided, a **strictly equal** is used (this is equivalent to **eq:** operator). 
    # @option opts [Array<String>] :shipment_event_type_code The status of the document in the process to filter by. Possible values are - RECE (Received) - DRFT (Drafted) - PENA (Pending Approval) - PENU (Pending Update) - REJE (Rejected) - APPR (Approved) - ISSU (Issued) - SURR (Surrendered) - SUBM (Submitted) - VOID (Void) - CONF (Confirmed) - REQS (Requested) - CMPL (Completed) - HOLD (On Hold) - RELS (Released)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR-operator is used. For example, [shipmentEventTypeCode&#x3D;RECE,DRFT] matches **both** Received (RECE) and Drafted (DRFT) shipment events.\\ Default is all shipmentEventTypeCodes.\\ This filter is only relevant when filtering on ShipmentEvents  **Note: Version 1.1 replaces CONF (Confirmed) for RELS (Released) for documentTypeCode SRM (Shipment Release Message).** 
    # @option opts [Array<String>] :document_type_code The documentTypeCode to filter by. Possible values are - CBR (Carrier Booking Request Reference) - BKG (Booking) - SHI (Shipping Instruction) - SRM (Shipment Release Message) - TRD (Transport Document) - ARN (Arrival Notice) - VGM (Verified Gross Mass) - CAS (Cargo Survey) - CUS (Customs Inspection) - DGD (Dangerous Goods Declaration) - OOG (Out of Gauge)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example [documentTypeCode&#x3D;SHI,TRD] Matches **both** ShippingInstruction (SHI) and TransportDocument (TRD) shipment events.\\ Default is all documentTypeCodes. This filter is only relevant when filtering on ShipmentEvents 
    # @option opts [Array<String>] :transport_event_type_code Identifier for type of Transport event to filter by - ARRI (Arrived) - DEPA (Departed)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [transportEventTypeCode&#x3D;ARRI,DEPA} matches **both** Arrived (ARRI) and Departed (DEPA) transport events.\\ Default is all transportEventTypeCodes.\\ This filter is only relevant when filtering on TransportEvents 
    # @option opts [String] :vessel_imo_number The identifier of vessel for which schedule details are published. Depending on schedule type, this may not be available yet.  Specifying this filter will only return events related to this particular vesselIMONumber. 
    # @option opts [String] :export_voyage_number Filter on the vessel operator-specific identifier of the export Voyage.  Specifying this filter will only return events related to this particular exportVoyageNumber. 
    # @option opts [String] :carrier_service_code Filter on the carrier specific identifier of the service.  Specifying this filter will only return events related to this particular carrierServiceCode. 
    # @option opts [String] :un_location_code The UN Location code specifying where the place is located.  Specifying this filter will only return events related to this particular UN Location code. 
    # @option opts [Array<String>] :equipment_event_type_code Unique identifier for equipmentEventTypeCode. * LOAD (Loaded) * DISC (Discharged) * GTIN (Gated in) * GTOT (Gated out) * STUF (Stuffed) * STRP (Stripped) * PICK (Pick-up) * DROP (Drop-off) * RSEA (Resealed) * RMVD (Removed) * INSP (Inspected)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [equipmentEventTypeCode&#x3D;GTIN,GTOT] matches **both** Gated in (GTIN) and Gated out (GTOT) equipment events.\\ Default is all equipmentEventTypeCodes.\\ This filter is only relevant when filtering on EquipmentEvents 
    # @option opts [Integer] :limit Maximum number of items to return. (default to 100)
    # @option opts [String] :cursor A server generated value to specify a specific point in a collection result, used for pagination.  The current, previous, next, first and last pages are available in the response headers.  For the initial request to the service, this parameter should be null or 1.
    # @option opts [String] :sort A comma-separated list of field names to define the sort order. Field names should be suffixed by a (:) followed by either the keyword ASC (for ascending order) or DESC (for descening order) to specify direction. **:ASC** may be omitted, in which case ascending order will be used.  The allowed sorting parameters are:   * eventType   * eventCreatedDateTime   * eventDateTime   * equipmentReference 
    # @option opts [String] :api_version An API-Version header MAY be added to the request (optional); if added it MUST only contain MAJOR version. API-Version header MUST be aligned with the URI version.
    # @return [Events]
    def events_get(opts = {})
      data, _status_code, _headers = events_get_with_http_info(opts)
      data
    end

    # Find events.
    # Returns all events filtered by the queryParameters.  This endpoint requires **at least one** of the following input parameters:  * carrierBookingReference * transportDocumentReference * equipmentReference  Note:  It is possible to combine queryParameters. When combining queryParameters be aware that it is also possible to make combinations that are mutually contradicting.\\ For example, shipmentEventTypeCode&#x3D;DRFT and equipmentEventTypeCode&#x3D;GTIN; since there is no event that can be a ShipmentEvent and an EquipmentEvent at the same time this will return an empty list. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :carrier_booking_reference A set of unique characters provided by carrier to identify a booking. Specifying this filter will only return events related to this particular carrierBookingReference. 
    # @option opts [String] :transport_document_reference A unique number reference allocated by the shipping line to the transport document and the main number used for the tracking of the status of the shipment. Specifying this filter will only return events related to this particular transportDocumentReference 
    # @option opts [String] :equipment_reference Will filter by the unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible. Specifying this filter will only return events related to this particular equipmentReference 
    # @option opts [Array<String>] :event_type The type of event(s) to filter by. Possible values are - SHIPMENT (Shipment events) - TRANSPORT (Transport events) - EQUIPMENT (Equipment events)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [eventType&#x3D;SHIPMENT,EQUIPMENT] matches both Shipment and Equipment events.\\ Default value is all event types. 
    # @option opts [String] :event_created_date_time Limit the result based on a UTC date. It is possible to use operators on this query parameter. This is done by adding an operator at the beginning of the value followed by a colon:\\ eventCreatedDateTime &#x3D; **gte**:2021-04-01T00:00:00Z\\ would result in all events created &gt;&#x3D; 2021-04-01T00:00:00Z\\ The following operators are supported - gte: (&gt;&#x3D; Greater than or equal) - gt: (&gt; Greater than) - lte: (&lt;&#x3D; Less than or equal) - lt: (&lt; Less than) - eq: (&#x3D; Equal to)  If no operator is provided, a **strictly equal** is used (this is equivalent to **eq:** operator). 
    # @option opts [Array<String>] :shipment_event_type_code The status of the document in the process to filter by. Possible values are - RECE (Received) - DRFT (Drafted) - PENA (Pending Approval) - PENU (Pending Update) - REJE (Rejected) - APPR (Approved) - ISSU (Issued) - SURR (Surrendered) - SUBM (Submitted) - VOID (Void) - CONF (Confirmed) - REQS (Requested) - CMPL (Completed) - HOLD (On Hold) - RELS (Released)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR-operator is used. For example, [shipmentEventTypeCode&#x3D;RECE,DRFT] matches **both** Received (RECE) and Drafted (DRFT) shipment events.\\ Default is all shipmentEventTypeCodes.\\ This filter is only relevant when filtering on ShipmentEvents  **Note: Version 1.1 replaces CONF (Confirmed) for RELS (Released) for documentTypeCode SRM (Shipment Release Message).** 
    # @option opts [Array<String>] :document_type_code The documentTypeCode to filter by. Possible values are - CBR (Carrier Booking Request Reference) - BKG (Booking) - SHI (Shipping Instruction) - SRM (Shipment Release Message) - TRD (Transport Document) - ARN (Arrival Notice) - VGM (Verified Gross Mass) - CAS (Cargo Survey) - CUS (Customs Inspection) - DGD (Dangerous Goods Declaration) - OOG (Out of Gauge)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example [documentTypeCode&#x3D;SHI,TRD] Matches **both** ShippingInstruction (SHI) and TransportDocument (TRD) shipment events.\\ Default is all documentTypeCodes. This filter is only relevant when filtering on ShipmentEvents 
    # @option opts [Array<String>] :transport_event_type_code Identifier for type of Transport event to filter by - ARRI (Arrived) - DEPA (Departed)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [transportEventTypeCode&#x3D;ARRI,DEPA} matches **both** Arrived (ARRI) and Departed (DEPA) transport events.\\ Default is all transportEventTypeCodes.\\ This filter is only relevant when filtering on TransportEvents 
    # @option opts [String] :vessel_imo_number The identifier of vessel for which schedule details are published. Depending on schedule type, this may not be available yet.  Specifying this filter will only return events related to this particular vesselIMONumber. 
    # @option opts [String] :export_voyage_number Filter on the vessel operator-specific identifier of the export Voyage.  Specifying this filter will only return events related to this particular exportVoyageNumber. 
    # @option opts [String] :carrier_service_code Filter on the carrier specific identifier of the service.  Specifying this filter will only return events related to this particular carrierServiceCode. 
    # @option opts [String] :un_location_code The UN Location code specifying where the place is located.  Specifying this filter will only return events related to this particular UN Location code. 
    # @option opts [Array<String>] :equipment_event_type_code Unique identifier for equipmentEventTypeCode. * LOAD (Loaded) * DISC (Discharged) * GTIN (Gated in) * GTOT (Gated out) * STUF (Stuffed) * STRP (Stripped) * PICK (Pick-up) * DROP (Drop-off) * RSEA (Resealed) * RMVD (Removed) * INSP (Inspected)  It is possible to select multiple values by comma (,) separating them. For multiple values the OR operator is used. For example, [equipmentEventTypeCode&#x3D;GTIN,GTOT] matches **both** Gated in (GTIN) and Gated out (GTOT) equipment events.\\ Default is all equipmentEventTypeCodes.\\ This filter is only relevant when filtering on EquipmentEvents 
    # @option opts [Integer] :limit Maximum number of items to return. (default to 100)
    # @option opts [String] :cursor A server generated value to specify a specific point in a collection result, used for pagination.  The current, previous, next, first and last pages are available in the response headers.  For the initial request to the service, this parameter should be null or 1.
    # @option opts [String] :sort A comma-separated list of field names to define the sort order. Field names should be suffixed by a (:) followed by either the keyword ASC (for ascending order) or DESC (for descening order) to specify direction. **:ASC** may be omitted, in which case ascending order will be used.  The allowed sorting parameters are:   * eventType   * eventCreatedDateTime   * eventDateTime   * equipmentReference 
    # @option opts [String] :api_version An API-Version header MAY be added to the request (optional); if added it MUST only contain MAJOR version. API-Version header MUST be aligned with the URI version.
    # @return [Array<(Events, Integer, Hash)>] Events data, response status code and response headers
    def events_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.events_get ...'
      end
      pattern = Regexp.new(/[a-zA-Z0-9]{9}/)
      if @api_client.config.client_side_validation && !opts[:'carrier_booking_reference'].nil? && opts[:'carrier_booking_reference'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"carrier_booking_reference\"]' when calling EventsApi.events_get, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/[a-zA-Z0-9]{9}/)
      if @api_client.config.client_side_validation && !opts[:'transport_document_reference'].nil? && opts[:'transport_document_reference'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"transport_document_reference\"]' when calling EventsApi.events_get, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'equipment_reference'].nil? && opts[:'equipment_reference'].to_s.length > 15
        fail ArgumentError, 'invalid value for "opts[:"equipment_reference"]" when calling EventsApi.events_get, the character length must be smaller than or equal to 15.'
      end

      pattern = Regexp.new(/[a-zA-Z0-9]{11}/)
      if @api_client.config.client_side_validation && !opts[:'equipment_reference'].nil? && opts[:'equipment_reference'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"equipment_reference\"]' when calling EventsApi.events_get, must conform to the pattern #{pattern}."
      end

      allowable_values = ["SHIPMENT", "TRANSPORT", "EQUIPMENT"]
      if @api_client.config.client_side_validation && opts[:'event_type'] && !opts[:'event_type'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"event_type\", must include one of #{allowable_values}"
      end
      allowable_values = ["RECE", "DRFT", "PENA", "PENU", "REJE", "APPR", "ISSU", "SURR", "SUBM", "VOID", "CONF", "REQS", "CMPL", "HOLD", "RELS"]
      if @api_client.config.client_side_validation && opts[:'shipment_event_type_code'] && !opts[:'shipment_event_type_code'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"shipment_event_type_code\", must include one of #{allowable_values}"
      end
      allowable_values = ["CBR", "BKG", "SHI", "SRM", "TRD", "ARN", "VGM", "CAS", "CUS", "DGD", "OOG"]
      if @api_client.config.client_side_validation && opts[:'document_type_code'] && !opts[:'document_type_code'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"document_type_code\", must include one of #{allowable_values}"
      end
      allowable_values = ["ARRI", "DEPA"]
      if @api_client.config.client_side_validation && opts[:'transport_event_type_code'] && !opts[:'transport_event_type_code'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"transport_event_type_code\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'vessel_imo_number'].nil? && opts[:'vessel_imo_number'].to_s.length > 7
        fail ArgumentError, 'invalid value for "opts[:"vessel_imo_number"]" when calling EventsApi.events_get, the character length must be smaller than or equal to 7.'
      end

      if @api_client.config.client_side_validation && !opts[:'export_voyage_number'].nil? && opts[:'export_voyage_number'].to_s.length > 50
        fail ArgumentError, 'invalid value for "opts[:"export_voyage_number"]" when calling EventsApi.events_get, the character length must be smaller than or equal to 50.'
      end

      if @api_client.config.client_side_validation && !opts[:'carrier_service_code'].nil? && opts[:'carrier_service_code'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"carrier_service_code"]" when calling EventsApi.events_get, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && !opts[:'un_location_code'].nil? && opts[:'un_location_code'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"un_location_code"]" when calling EventsApi.events_get, the character length must be smaller than or equal to 5.'
      end

      allowable_values = ["LOAD", "DISC", "GTIN", "GTOT", "STUF", "STRP", "PICK", "DROP", "RSEA", "RMVD", "INSP"]
      if @api_client.config.client_side_validation && opts[:'equipment_event_type_code'] && !opts[:'equipment_event_type_code'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"equipment_event_type_code\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling EventsApi.events_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'carrierBookingReference'] = opts[:'carrier_booking_reference'] if !opts[:'carrier_booking_reference'].nil?
      query_params[:'transportDocumentReference'] = opts[:'transport_document_reference'] if !opts[:'transport_document_reference'].nil?
      query_params[:'equipmentReference'] = opts[:'equipment_reference'] if !opts[:'equipment_reference'].nil?
      query_params[:'eventType'] = @api_client.build_collection_param(opts[:'event_type'], :csv) if !opts[:'event_type'].nil?
      query_params[:'eventCreatedDateTime'] = opts[:'event_created_date_time'] if !opts[:'event_created_date_time'].nil?
      query_params[:'shipmentEventTypeCode'] = @api_client.build_collection_param(opts[:'shipment_event_type_code'], :csv) if !opts[:'shipment_event_type_code'].nil?
      query_params[:'documentTypeCode'] = @api_client.build_collection_param(opts[:'document_type_code'], :csv) if !opts[:'document_type_code'].nil?
      query_params[:'transportEventTypeCode'] = @api_client.build_collection_param(opts[:'transport_event_type_code'], :csv) if !opts[:'transport_event_type_code'].nil?
      query_params[:'vesselIMONumber'] = opts[:'vessel_imo_number'] if !opts[:'vessel_imo_number'].nil?
      query_params[:'exportVoyageNumber'] = opts[:'export_voyage_number'] if !opts[:'export_voyage_number'].nil?
      query_params[:'carrierServiceCode'] = opts[:'carrier_service_code'] if !opts[:'carrier_service_code'].nil?
      query_params[:'UNLocationCode'] = opts[:'un_location_code'] if !opts[:'un_location_code'].nil?
      query_params[:'equipmentEventTypeCode'] = @api_client.build_collection_param(opts[:'equipment_event_type_code'], :csv) if !opts[:'equipment_event_type_code'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/stream+json', 'text/event-stream'])
      header_params[:'API-Version'] = opts[:'api_version'] if !opts[:'api_version'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Events'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyHeader', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"EventsApi.events_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#events_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data.events, status_code, headers
    end
  end
end
