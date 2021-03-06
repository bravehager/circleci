=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'

module CircleCi
  class InlineResponse20012MostFailedTests
    # The 95th percentile duration, in seconds, among a group of test runs.
    attr_accessor :p95_duration

    # The total number of times the test was run.
    attr_accessor :total_runs

    # The class the test belongs to.
    attr_accessor :classname

    # The number of times the test failed
    attr_accessor :failed_runs

    # Whether the test is flaky.
    attr_accessor :flaky

    # The source of the test.
    attr_accessor :source

    # The file the test belongs to.
    attr_accessor :file

    # The name of the job.
    attr_accessor :job_name

    # The name of the test.
    attr_accessor :test_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'p95_duration' => :'p95_duration',
        :'total_runs' => :'total_runs',
        :'classname' => :'classname',
        :'failed_runs' => :'failed_runs',
        :'flaky' => :'flaky',
        :'source' => :'source',
        :'file' => :'file',
        :'job_name' => :'job_name',
        :'test_name' => :'test_name'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'p95_duration' => :'Object',
        :'total_runs' => :'Object',
        :'classname' => :'Object',
        :'failed_runs' => :'Object',
        :'flaky' => :'Object',
        :'source' => :'Object',
        :'file' => :'Object',
        :'job_name' => :'Object',
        :'test_name' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircleCi::InlineResponse20012MostFailedTests` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircleCi::InlineResponse20012MostFailedTests`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'p95_duration')
        self.p95_duration = attributes[:'p95_duration']
      end

      if attributes.key?(:'total_runs')
        self.total_runs = attributes[:'total_runs']
      end

      if attributes.key?(:'classname')
        self.classname = attributes[:'classname']
      end

      if attributes.key?(:'failed_runs')
        self.failed_runs = attributes[:'failed_runs']
      end

      if attributes.key?(:'flaky')
        self.flaky = attributes[:'flaky']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'file')
        self.file = attributes[:'file']
      end

      if attributes.key?(:'job_name')
        self.job_name = attributes[:'job_name']
      end

      if attributes.key?(:'test_name')
        self.test_name = attributes[:'test_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @p95_duration.nil?
        invalid_properties.push('invalid value for "p95_duration", p95_duration cannot be nil.')
      end

      if @total_runs.nil?
        invalid_properties.push('invalid value for "total_runs", total_runs cannot be nil.')
      end

      if @classname.nil?
        invalid_properties.push('invalid value for "classname", classname cannot be nil.')
      end

      if @failed_runs.nil?
        invalid_properties.push('invalid value for "failed_runs", failed_runs cannot be nil.')
      end

      if @flaky.nil?
        invalid_properties.push('invalid value for "flaky", flaky cannot be nil.')
      end

      if @source.nil?
        invalid_properties.push('invalid value for "source", source cannot be nil.')
      end

      if @file.nil?
        invalid_properties.push('invalid value for "file", file cannot be nil.')
      end

      if @job_name.nil?
        invalid_properties.push('invalid value for "job_name", job_name cannot be nil.')
      end

      if @test_name.nil?
        invalid_properties.push('invalid value for "test_name", test_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @p95_duration.nil?
      return false if @total_runs.nil?
      return false if @classname.nil?
      return false if @failed_runs.nil?
      return false if @flaky.nil?
      return false if @source.nil?
      return false if @file.nil?
      return false if @job_name.nil?
      return false if @test_name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          p95_duration == o.p95_duration &&
          total_runs == o.total_runs &&
          classname == o.classname &&
          failed_runs == o.failed_runs &&
          flaky == o.flaky &&
          source == o.source &&
          file == o.file &&
          job_name == o.job_name &&
          test_name == o.test_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [p95_duration, total_runs, classname, failed_runs, flaky, source, file, job_name, test_name].hash
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
