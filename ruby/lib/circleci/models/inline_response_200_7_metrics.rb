=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'

module CircleCi
  # Metrics relating to a workflow's runs.
  class InlineResponse2007Metrics
    # The total number of runs.
    attr_accessor :total_runs

    # The number of successful runs.
    attr_accessor :successful_runs

    # The mean time to recovery (mean time between failures and their next success) in seconds.
    attr_accessor :mttr

    # The total credits consumed by the workflow in the aggregation window. Note that Insights is not a real time financial reporting tool and should not be used for credit reporting.
    attr_accessor :total_credits_used

    # The number of failed runs.
    attr_accessor :failed_runs

    attr_accessor :success_rate

    attr_accessor :duration_metrics

    # The number of recovered workflow executions per day.
    attr_accessor :total_recoveries

    # The average number of runs per day.
    attr_accessor :throughput

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total_runs' => :'total_runs',
        :'successful_runs' => :'successful_runs',
        :'mttr' => :'mttr',
        :'total_credits_used' => :'total_credits_used',
        :'failed_runs' => :'failed_runs',
        :'success_rate' => :'success_rate',
        :'duration_metrics' => :'duration_metrics',
        :'total_recoveries' => :'total_recoveries',
        :'throughput' => :'throughput'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'total_runs' => :'Object',
        :'successful_runs' => :'Object',
        :'mttr' => :'Object',
        :'total_credits_used' => :'Object',
        :'failed_runs' => :'Object',
        :'success_rate' => :'Object',
        :'duration_metrics' => :'Object',
        :'total_recoveries' => :'Object',
        :'throughput' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircleCi::InlineResponse2007Metrics` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircleCi::InlineResponse2007Metrics`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total_runs')
        self.total_runs = attributes[:'total_runs']
      end

      if attributes.key?(:'successful_runs')
        self.successful_runs = attributes[:'successful_runs']
      end

      if attributes.key?(:'mttr')
        self.mttr = attributes[:'mttr']
      end

      if attributes.key?(:'total_credits_used')
        self.total_credits_used = attributes[:'total_credits_used']
      end

      if attributes.key?(:'failed_runs')
        self.failed_runs = attributes[:'failed_runs']
      end

      if attributes.key?(:'success_rate')
        self.success_rate = attributes[:'success_rate']
      end

      if attributes.key?(:'duration_metrics')
        self.duration_metrics = attributes[:'duration_metrics']
      end

      if attributes.key?(:'total_recoveries')
        self.total_recoveries = attributes[:'total_recoveries']
      end

      if attributes.key?(:'throughput')
        self.throughput = attributes[:'throughput']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @total_runs.nil?
        invalid_properties.push('invalid value for "total_runs", total_runs cannot be nil.')
      end

      if @successful_runs.nil?
        invalid_properties.push('invalid value for "successful_runs", successful_runs cannot be nil.')
      end

      if @mttr.nil?
        invalid_properties.push('invalid value for "mttr", mttr cannot be nil.')
      end

      if @total_credits_used.nil?
        invalid_properties.push('invalid value for "total_credits_used", total_credits_used cannot be nil.')
      end

      if @failed_runs.nil?
        invalid_properties.push('invalid value for "failed_runs", failed_runs cannot be nil.')
      end

      if @success_rate.nil?
        invalid_properties.push('invalid value for "success_rate", success_rate cannot be nil.')
      end

      if @duration_metrics.nil?
        invalid_properties.push('invalid value for "duration_metrics", duration_metrics cannot be nil.')
      end

      if @total_recoveries.nil?
        invalid_properties.push('invalid value for "total_recoveries", total_recoveries cannot be nil.')
      end

      if @throughput.nil?
        invalid_properties.push('invalid value for "throughput", throughput cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @total_runs.nil?
      return false if @successful_runs.nil?
      return false if @mttr.nil?
      return false if @total_credits_used.nil?
      return false if @failed_runs.nil?
      return false if @success_rate.nil?
      return false if @duration_metrics.nil?
      return false if @total_recoveries.nil?
      return false if @throughput.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total_runs == o.total_runs &&
          successful_runs == o.successful_runs &&
          mttr == o.mttr &&
          total_credits_used == o.total_credits_used &&
          failed_runs == o.failed_runs &&
          success_rate == o.success_rate &&
          duration_metrics == o.duration_metrics &&
          total_recoveries == o.total_recoveries &&
          throughput == o.throughput
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [total_runs, successful_runs, mttr, total_credits_used, failed_runs, success_rate, duration_metrics, total_recoveries, throughput].hash
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
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
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
      when :DateTime
        DateTime.parse(value)
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
        CircleCi.const_get(type).build_from_hash(value)
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
    end  end
end
