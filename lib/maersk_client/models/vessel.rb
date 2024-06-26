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
  class Vessel
    # The unique reference for a registered Vessel. The reference is the International Maritime Organisation (IMO) number, also sometimes known as the Lloyd's register code, which does not change during the lifetime of the vessel
    attr_accessor :vessel_imo_number

    # The name of the Vessel given by the Vessel Operator and registered with IMO.
    attr_accessor :vessel_name

    # The flag of the nation whose laws the vessel is registered under. This is the ISO 3166 two-letter country code
    attr_accessor :vessel_flag

    # A unique alphanumeric identity that belongs to the vessel and is assigned by the International Telecommunication Union (ITU). It consists of a three letter alphanumeric prefix that indicates nationality, followed by one to four characters to identify the individual vessel. For instance, vessels registered under Denmark are assigned the prefix ranges 5PA-5QZ, OUAOZZ, and XPA-XPZ. The Call Sign changes whenever a vessel changes its flag.
    attr_accessor :vessel_call_sign_number

    # The carrier who is in charge of the vessel operation based on either the SMDG or SCAC code lists
    attr_accessor :vessel_operator_carrier_code

    # Identifies the code list provider used for the operator and partner carrierCodes.
    attr_accessor :vessel_operator_carrier_code_list_provider

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
        :'vessel_imo_number' => :'vesselIMONumber',
        :'vessel_name' => :'vesselName',
        :'vessel_flag' => :'vesselFlag',
        :'vessel_call_sign_number' => :'vesselCallSignNumber',
        :'vessel_operator_carrier_code' => :'vesselOperatorCarrierCode',
        :'vessel_operator_carrier_code_list_provider' => :'vesselOperatorCarrierCodeListProvider'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'vessel_imo_number' => :'Integer',
        :'vessel_name' => :'String',
        :'vessel_flag' => :'String',
        :'vessel_call_sign_number' => :'String',
        :'vessel_operator_carrier_code' => :'String',
        :'vessel_operator_carrier_code_list_provider' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MaerskClient::Vessel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MaerskClient::Vessel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'vessel_imo_number')
        self.vessel_imo_number = attributes[:'vessel_imo_number']
      else
        self.vessel_imo_number = nil
      end

      if attributes.key?(:'vessel_name')
        self.vessel_name = attributes[:'vessel_name']
      end

      if attributes.key?(:'vessel_flag')
        self.vessel_flag = attributes[:'vessel_flag']
      end

      if attributes.key?(:'vessel_call_sign_number')
        self.vessel_call_sign_number = attributes[:'vessel_call_sign_number']
      end

      if attributes.key?(:'vessel_operator_carrier_code')
        self.vessel_operator_carrier_code = attributes[:'vessel_operator_carrier_code']
      end

      if attributes.key?(:'vessel_operator_carrier_code_list_provider')
        self.vessel_operator_carrier_code_list_provider = attributes[:'vessel_operator_carrier_code_list_provider']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @vessel_imo_number.nil?
        invalid_properties.push('invalid value for "vessel_imo_number", vessel_imo_number cannot be nil.')
      end

      if !@vessel_name.nil? && @vessel_name.to_s.length > 35
        invalid_properties.push('invalid value for "vessel_name", the character length must be smaller than or equal to 35.')
      end

      if !@vessel_flag.nil? && @vessel_flag.to_s.length > 2
        invalid_properties.push('invalid value for "vessel_flag", the character length must be smaller than or equal to 2.')
      end

      if !@vessel_call_sign_number.nil? && @vessel_call_sign_number.to_s.length > 10
        invalid_properties.push('invalid value for "vessel_call_sign_number", the character length must be smaller than or equal to 10.')
      end

      if !@vessel_operator_carrier_code.nil? && @vessel_operator_carrier_code.to_s.length > 10
        invalid_properties.push('invalid value for "vessel_operator_carrier_code", the character length must be smaller than or equal to 10.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @vessel_imo_number.nil?
      return false if !@vessel_name.nil? && @vessel_name.to_s.length > 35
      return false if !@vessel_flag.nil? && @vessel_flag.to_s.length > 2
      return false if !@vessel_call_sign_number.nil? && @vessel_call_sign_number.to_s.length > 10
      return false if !@vessel_operator_carrier_code.nil? && @vessel_operator_carrier_code.to_s.length > 10
      vessel_operator_carrier_code_list_provider_validator = EnumAttributeValidator.new('String', ["SMDG", "NMFTA"])
      return false unless vessel_operator_carrier_code_list_provider_validator.valid?(@vessel_operator_carrier_code_list_provider)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] vessel_imo_number Value to be assigned
    def vessel_imo_number=(vessel_imo_number)
      if vessel_imo_number.nil?
        fail ArgumentError, 'vessel_imo_number cannot be nil'
      end

      @vessel_imo_number = vessel_imo_number
    end

    # Custom attribute writer method with validation
    # @param [Object] vessel_name Value to be assigned
    def vessel_name=(vessel_name)
      if vessel_name.nil?
        fail ArgumentError, 'vessel_name cannot be nil'
      end

      if vessel_name.to_s.length > 35
        fail ArgumentError, 'invalid value for "vessel_name", the character length must be smaller than or equal to 35.'
      end

      @vessel_name = vessel_name
    end

    # Custom attribute writer method with validation
    # @param [Object] vessel_flag Value to be assigned
    def vessel_flag=(vessel_flag)
      if vessel_flag.nil?
        fail ArgumentError, 'vessel_flag cannot be nil'
      end

      if vessel_flag.to_s.length > 2
        fail ArgumentError, 'invalid value for "vessel_flag", the character length must be smaller than or equal to 2.'
      end

      @vessel_flag = vessel_flag
    end

    # Custom attribute writer method with validation
    # @param [Object] vessel_call_sign_number Value to be assigned
    def vessel_call_sign_number=(vessel_call_sign_number)
      if vessel_call_sign_number.nil?
        fail ArgumentError, 'vessel_call_sign_number cannot be nil'
      end

      if vessel_call_sign_number.to_s.length > 10
        fail ArgumentError, 'invalid value for "vessel_call_sign_number", the character length must be smaller than or equal to 10.'
      end

      @vessel_call_sign_number = vessel_call_sign_number
    end

    # Custom attribute writer method with validation
    # @param [Object] vessel_operator_carrier_code Value to be assigned
    def vessel_operator_carrier_code=(vessel_operator_carrier_code)
      if vessel_operator_carrier_code.nil?
        fail ArgumentError, 'vessel_operator_carrier_code cannot be nil'
      end

      if vessel_operator_carrier_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "vessel_operator_carrier_code", the character length must be smaller than or equal to 10.'
      end

      @vessel_operator_carrier_code = vessel_operator_carrier_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vessel_operator_carrier_code_list_provider Object to be assigned
    def vessel_operator_carrier_code_list_provider=(vessel_operator_carrier_code_list_provider)
      validator = EnumAttributeValidator.new('String', ["SMDG", "NMFTA"])
      unless validator.valid?(vessel_operator_carrier_code_list_provider)
        fail ArgumentError, "invalid value for \"vessel_operator_carrier_code_list_provider\", must be one of #{validator.allowable_values}."
      end
      @vessel_operator_carrier_code_list_provider = vessel_operator_carrier_code_list_provider
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          vessel_imo_number == o.vessel_imo_number &&
          vessel_name == o.vessel_name &&
          vessel_flag == o.vessel_flag &&
          vessel_call_sign_number == o.vessel_call_sign_number &&
          vessel_operator_carrier_code == o.vessel_operator_carrier_code &&
          vessel_operator_carrier_code_list_provider == o.vessel_operator_carrier_code_list_provider
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [vessel_imo_number, vessel_name, vessel_flag, vessel_call_sign_number, vessel_operator_carrier_code, vessel_operator_carrier_code_list_provider].hash
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
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
