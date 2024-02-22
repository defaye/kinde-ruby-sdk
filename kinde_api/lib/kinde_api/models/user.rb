# frozen_string_literal: true

# #Kinde Management API
#
# Provides endpoints to manage your Kinde Businesses
#
# The version of the OpenAPI document: 1
# Contact: support@kinde.com
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 7.0.0-SNAPSHOT
#

require 'date'
require 'time'

module KindeApi
  class User
    # Unique id of the user in Kinde.
    attr_accessor :id

    # External id for user.
    attr_accessor :provided_id

    # Default email address of the user in Kinde.
    attr_accessor :preferred_email

    # User's last name.
    attr_accessor :last_name

    # User's first name.
    attr_accessor :first_name

    # Whether the user is currently suspended or not.
    attr_accessor :is_suspended

    # User's profile picture URL.
    attr_accessor :picture

    # Total number of user sign ins.
    attr_accessor :total_sign_ins

    # Number of consecutive failed user sign ins.
    attr_accessor :failed_sign_ins

    # Last sign in date in ISO 8601 format.
    attr_accessor :last_signed_in

    # Date of user creation in ISO 8601 format.
    attr_accessor :created_on

    # Array of organizations a user belongs to.
    attr_accessor :organizations

    # Array of identities belonging to the user.
    attr_accessor :identities

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'id': :id,
        'provided_id': :provided_id,
        'preferred_email': :preferred_email,
        'last_name': :last_name,
        'first_name': :first_name,
        'is_suspended': :is_suspended,
        'picture': :picture,
        'total_sign_ins': :total_sign_ins,
        'failed_sign_ins': :failed_sign_ins,
        'last_signed_in': :last_signed_in,
        'created_on': :created_on,
        'organizations': :organizations,
        'identities': :identities
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'id': :String,
        'provided_id': :String,
        'preferred_email': :String,
        'last_name': :String,
        'first_name': :String,
        'is_suspended': :Boolean,
        'picture': :String,
        'total_sign_ins': :Integer,
        'failed_sign_ins': :Integer,
        'last_signed_in': :String,
        'created_on': :String,
        'organizations': :'Array<String>',
        'identities': :'Array<UserIdentitiesInner>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new(%i[
                total_sign_ins
                failed_sign_ins
                last_signed_in
                created_on
              ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError, 'The input argument (attributes) must be a hash in `KindeApi::User` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `KindeApi::User`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.id = attributes[:id] if attributes.key?(:id)

      self.provided_id = attributes[:provided_id] if attributes.key?(:provided_id)

      self.preferred_email = attributes[:preferred_email] if attributes.key?(:preferred_email)

      self.last_name = attributes[:last_name] if attributes.key?(:last_name)

      self.first_name = attributes[:first_name] if attributes.key?(:first_name)

      self.is_suspended = attributes[:is_suspended] if attributes.key?(:is_suspended)

      self.picture = attributes[:picture] if attributes.key?(:picture)

      self.total_sign_ins = attributes[:total_sign_ins] if attributes.key?(:total_sign_ins)

      self.failed_sign_ins = attributes[:failed_sign_ins] if attributes.key?(:failed_sign_ins)

      self.last_signed_in = attributes[:last_signed_in] if attributes.key?(:last_signed_in)

      self.created_on = attributes[:created_on] if attributes.key?(:created_on)

      if attributes.key?(:organizations) && (value = attributes[:organizations]).is_a?(Array)
        self.organizations = value
      end

      return unless attributes.key?(:identities)
      return unless (value = attributes[:identities]).is_a?(Array)

      self.identities = value
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      []
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        id == other.id &&
        provided_id == other.provided_id &&
        preferred_email == other.preferred_email &&
        last_name == other.last_name &&
        first_name == other.first_name &&
        is_suspended == other.is_suspended &&
        picture == other.picture &&
        total_sign_ins == other.total_sign_ins &&
        failed_sign_ins == other.failed_sign_ins &&
        last_signed_in == other.last_signed_in &&
        created_on == other.created_on &&
        organizations == other.organizations &&
        identities == other.identities
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, provided_id, preferred_email, last_name, first_name, is_suspended, picture, total_sign_ins, failed_sign_ins,
       last_signed_in, created_on, organizations, identities].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            send("#{key}=", attributes[self.class.attribute_map[key]].map do |v|
                              _deserialize(::Regexp.last_match(1), v)
                            end)
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass = KindeApi.const_get(type)
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
        value = send(attr)
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
