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
  # Addresses the seal-related information associated with the shipment equipment. A seal is put on a shipment equipment once it is loaded. This seal is meant to stay on until the shipment equipment reaches its final destination.
  class Seal
    # Identifies a seal affixed to the container.
    attr_accessor :seal_number

    # The source of the seal, namely who has affixed the seal. This attribute links to the Seal Source ID defined in the Seal Source reference data entity. * CAR (Carrier) * SHI (Shipper) * PHY (Phytosanitary) * VET (Veterinary) * CUS (Customs) 
    attr_accessor :seal_source

    # The type of seal. This attribute links to the Seal Type ID defined in the Seal Type reference data entity. * KLP (Keyless padlock) * BLT (Bolt) * WIR (Wire) 
    attr_accessor :seal_type

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
        :'seal_number' => :'sealNumber',
        :'seal_source' => :'sealSource',
        :'seal_type' => :'sealType'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'seal_number' => :'String',
        :'seal_source' => :'String',
        :'seal_type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MaerskClient::Seal` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MaerskClient::Seal`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'seal_number')
        self.seal_number = attributes[:'seal_number']
      else
        self.seal_number = nil
      end

      if attributes.key?(:'seal_source')
        self.seal_source = attributes[:'seal_source']
      end

      if attributes.key?(:'seal_type')
        self.seal_type = attributes[:'seal_type']
      else
        self.seal_type = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @seal_number.nil?
        invalid_properties.push('invalid value for "seal_number", seal_number cannot be nil.')
      end

      if @seal_number.to_s.length > 15
        invalid_properties.push('invalid value for "seal_number", the character length must be smaller than or equal to 15.')
      end

      if @seal_type.nil?
        invalid_properties.push('invalid value for "seal_type", seal_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @seal_number.nil?
      return false if @seal_number.to_s.length > 15
      seal_source_validator = EnumAttributeValidator.new('String', ["CAR", "SHI", "PHY", "VET", "CUS"])
      return false unless seal_source_validator.valid?(@seal_source)
      return false if @seal_type.nil?
      seal_type_validator = EnumAttributeValidator.new('String', ["KLP", "BLT", "WIR"])
      return false unless seal_type_validator.valid?(@seal_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] seal_number Value to be assigned
    def seal_number=(seal_number)
      if seal_number.nil?
        fail ArgumentError, 'seal_number cannot be nil'
      end

      if seal_number.to_s.length > 15
        fail ArgumentError, 'invalid value for "seal_number", the character length must be smaller than or equal to 15.'
      end

      @seal_number = seal_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] seal_source Object to be assigned
    def seal_source=(seal_source)
      validator = EnumAttributeValidator.new('String', ["CAR", "SHI", "PHY", "VET", "CUS"])
      unless validator.valid?(seal_source)
        fail ArgumentError, "invalid value for \"seal_source\", must be one of #{validator.allowable_values}."
      end
      @seal_source = seal_source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] seal_type Object to be assigned
    def seal_type=(seal_type)
      validator = EnumAttributeValidator.new('String', ["KLP", "BLT", "WIR"])
      unless validator.valid?(seal_type)
        fail ArgumentError, "invalid value for \"seal_type\", must be one of #{validator.allowable_values}."
      end
      @seal_type = seal_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          seal_number == o.seal_number &&
          seal_source == o.seal_source &&
          seal_type == o.seal_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [seal_number, seal_source, seal_type].hash
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