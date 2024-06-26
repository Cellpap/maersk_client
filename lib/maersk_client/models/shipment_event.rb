=begin
#Track & Trace Events

#Retrieve Track & Trace Events based on DCSA Interface standard v.2.2  This service provides visibility to Shipment, Equipment and Transport events for shipments booked with A.P. Moller-Maersk A/S using standards set by the Digital Container Shipping Association.\\ <https://dcsa.org/> 

The version of the OpenAPI document: 1.2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module MaerskClient
  # The shipment event entity is a specialization of the event entity to support specification of data that only applies to a shipment event.
  class ShipmentEvent
    # The unique identifier for the Equipment Event ID/Transport Event ID/Shipment Event ID.
    attr_accessor :event_id

    attr_accessor :event_type

    # The local date and time, where the event took place or when the event will take place, in ISO 8601 format. For Shipment Event, it is the same as eventCreatedDateTime in UTC timezone.
    attr_accessor :event_date_time

    # The UTC timestamp of when the event was created.
    attr_accessor :event_created_date_time

    # Code for the event classifier, either PLN, ACT or EST. * PLN - Planned * ACT - Actual * EST - Estimated 
    attr_accessor :event_classifier_code

    # References provided by the shipper or freight forwarder at the time of booking or at the time of providing shipping instruction. Carriers share it back when providing track and trace event updates, some are also printed on the B/L. Customers can use these references to track shipments in their internal systems.
    attr_accessor :references

    # The status of the document in the process. Possible values are - RECE (Received) - DRFT (Drafted) - PENA (Pending Approval) - PENU (Pending Update) - REJE (Rejected) - APPR (Approved) - ISSU (Issued) - SURR (Surrendered) - SUBM (Submitted) - VOID (Void) - CONF (Confirmed) - REQS (Requested) - CMPL (Completed) - HOLD (On Hold) - RELS (Released)  Note: Version 1.1 replaces CONF (Confirmed) for RELS (Released) for documentTypeCode SRM (Shipment Release Message). 
    attr_accessor :shipment_event_type_code

    # The code to identify the type of information documentID points to. Can be one of the following values * CBR (Carrier Booking Request Reference) * BKG (Booking) * SHI (Shipping Instruction) * SRM (Shipment Release Message) * TRD (Transport Document) * ARN (Arrival Notice) * VGM (Verified Gross Mass) * CAS (Cargo Survey) * CUS (Customs Inspection) * DGD (Dangerous Goods Declaration) * OOG (Out of Gauge) 
    attr_accessor :document_type_code

    # The ID of the object defined by the Shipment Information Type. In some cases this is a UUID; in other cases this is a string. 
    attr_accessor :document_id

    # Reason field in a Shipment event. This field can be used to explain why a specific event has been sent.
    attr_accessor :reason

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'event_id' => :'eventID',
        :'event_type' => :'eventType',
        :'event_date_time' => :'eventDateTime',
        :'event_created_date_time' => :'eventCreatedDateTime',
        :'event_classifier_code' => :'eventClassifierCode',
        :'references' => :'references',
        :'shipment_event_type_code' => :'shipmentEventTypeCode',
        :'document_type_code' => :'documentTypeCode',
        :'document_id' => :'documentID',
        :'reason' => :'reason'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'event_id' => :'String',
        :'event_type' => :'String',
        :'event_date_time' => :'Time',
        :'event_created_date_time' => :'Time',
        :'event_classifier_code' => :'String',
        :'references' => :'Array<EventReferencesInner>',
        :'shipment_event_type_code' => :'String',
        :'document_type_code' => :'String',
        :'document_id' => :'String',
        :'reason' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Event'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MaerskClient::ShipmentEvent` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MaerskClient::ShipmentEvent`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      else
        self.event_type = nil
      end

      if attributes.key?(:'event_date_time')
        self.event_date_time = attributes[:'event_date_time']
      else
        self.event_date_time = nil
      end

      if attributes.key?(:'event_created_date_time')
        self.event_created_date_time = attributes[:'event_created_date_time']
      else
        self.event_created_date_time = nil
      end

      if attributes.key?(:'event_classifier_code')
        self.event_classifier_code = attributes[:'event_classifier_code']
      else
        self.event_classifier_code = nil
      end

      if attributes.key?(:'references')
        if (value = attributes[:'references']).is_a?(Array)
          self.references = value
        end
      end

      if attributes.key?(:'shipment_event_type_code')
        self.shipment_event_type_code = attributes[:'shipment_event_type_code']
      else
        self.shipment_event_type_code = nil
      end

      if attributes.key?(:'document_type_code')
        self.document_type_code = attributes[:'document_type_code']
      else
        self.document_type_code = nil
      end

      if attributes.key?(:'document_id')
        self.document_id = attributes[:'document_id']
      else
        self.document_id = nil
      end

      if attributes.key?(:'reason')
        self.reason = attributes[:'reason']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @event_type.nil?
        invalid_properties.push('invalid value for "event_type", event_type cannot be nil.')
      end

      if @event_date_time.nil?
        invalid_properties.push('invalid value for "event_date_time", event_date_time cannot be nil.')
      end

      if @event_created_date_time.nil?
        invalid_properties.push('invalid value for "event_created_date_time", event_created_date_time cannot be nil.')
      end

      if @event_classifier_code.nil?
        invalid_properties.push('invalid value for "event_classifier_code", event_classifier_code cannot be nil.')
      end

      if @shipment_event_type_code.nil?
        invalid_properties.push('invalid value for "shipment_event_type_code", shipment_event_type_code cannot be nil.')
      end

      if @document_type_code.nil?
        invalid_properties.push('invalid value for "document_type_code", document_type_code cannot be nil.')
      end

      if @document_type_code.to_s.length > 3
        invalid_properties.push('invalid value for "document_type_code", the character length must be smaller than or equal to 3.')
      end

      if @document_id.nil?
        invalid_properties.push('invalid value for "document_id", document_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @event_type.nil?
      event_type_validator = EnumAttributeValidator.new('String', ["SHIPMENT"])
      return false unless event_type_validator.valid?(@event_type)
      return false if @event_date_time.nil?
      return false if @event_created_date_time.nil?
      return false if @event_classifier_code.nil?
      return false if @shipment_event_type_code.nil?
      shipment_event_type_code_validator = EnumAttributeValidator.new('String', ["RECE", "DRFT", "PENA", "PENU", "REJE", "APPR", "ISSU", "SURR", "SUBM", "VOID", "CONF", "REQS", "CMPL", "HOLD", "RELS"])
      return false unless shipment_event_type_code_validator.valid?(@shipment_event_type_code)
      return false if @document_type_code.nil?
      return false if @document_type_code.to_s.length > 3
      return false if @document_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_type Object to be assigned
    def event_type=(event_type)
      validator = EnumAttributeValidator.new('String', ["SHIPMENT"])
      unless validator.valid?(event_type)
        fail ArgumentError, "invalid value for \"event_type\", must be one of #{validator.allowable_values}."
      end
      @event_type = event_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipment_event_type_code Object to be assigned
    def shipment_event_type_code=(shipment_event_type_code)
      validator = EnumAttributeValidator.new('String', ["RECE", "DRFT", "PENA", "PENU", "REJE", "APPR", "ISSU", "SURR", "SUBM", "VOID", "CONF", "REQS", "CMPL", "HOLD", "RELS"])
      unless validator.valid?(shipment_event_type_code)
        fail ArgumentError, "invalid value for \"shipment_event_type_code\", must be one of #{validator.allowable_values}."
      end
      @shipment_event_type_code = shipment_event_type_code
    end

    # Custom attribute writer method with validation
    # @param [Object] document_type_code Value to be assigned
    def document_type_code=(document_type_code)
      if document_type_code.nil?
        fail ArgumentError, 'document_type_code cannot be nil'
      end

      if document_type_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "document_type_code", the character length must be smaller than or equal to 3.'
      end

      @document_type_code = document_type_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          event_id == o.event_id &&
          event_type == o.event_type &&
          event_date_time == o.event_date_time &&
          event_created_date_time == o.event_created_date_time &&
          event_classifier_code == o.event_classifier_code &&
          references == o.references &&
          shipment_event_type_code == o.shipment_event_type_code &&
          document_type_code == o.document_type_code &&
          document_id == o.document_id &&
          reason == o.reason
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [event_id, event_type, event_date_time, event_created_date_time, event_classifier_code, references, shipment_event_type_code, document_type_code, document_id, reason].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MaerskClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.is_any?([Date, DateTime])
        value.to_s
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
