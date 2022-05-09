=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'

module CircleCi
  class InlineResponse2006Flakytests
    attr_accessor :time_wasted

    # The date and time when workflow was created.
    attr_accessor :workflow_created_at

    # The ID of the workflow associated with the provided test counts
    attr_accessor :workflow_id

    # The class the test belongs to.
    attr_accessor :classname

    # The number of the pipeline.
    attr_accessor :pipeline_number

    # The name of the workflow.
    attr_accessor :workflow_name

    # The name of the test.
    attr_accessor :test_name

    # The name of the job.
    attr_accessor :job_name

    # The number of the job.
    attr_accessor :job_number

    # The number of times the test flaked.
    attr_accessor :times_flaked

    # The source of the test.
    attr_accessor :source

    # The file the test belongs to.
    attr_accessor :file

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'time_wasted' => :'time-wasted',
        :'workflow_created_at' => :'workflow-created-at',
        :'workflow_id' => :'workflow-id',
        :'classname' => :'classname',
        :'pipeline_number' => :'pipeline-number',
        :'workflow_name' => :'workflow-name',
        :'test_name' => :'test-name',
        :'job_name' => :'job-name',
        :'job_number' => :'job-number',
        :'times_flaked' => :'times-flaked',
        :'source' => :'source',
        :'file' => :'file'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'time_wasted' => :'Object',
        :'workflow_created_at' => :'Object',
        :'workflow_id' => :'Object',
        :'classname' => :'Object',
        :'pipeline_number' => :'Object',
        :'workflow_name' => :'Object',
        :'test_name' => :'Object',
        :'job_name' => :'Object',
        :'job_number' => :'Object',
        :'times_flaked' => :'Object',
        :'source' => :'Object',
        :'file' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircleCi::InlineResponse2006Flakytests` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircleCi::InlineResponse2006Flakytests`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'time_wasted')
        self.time_wasted = attributes[:'time_wasted']
      end

      if attributes.key?(:'workflow_created_at')
        self.workflow_created_at = attributes[:'workflow_created_at']
      end

      if attributes.key?(:'workflow_id')
        self.workflow_id = attributes[:'workflow_id']
      end

      if attributes.key?(:'classname')
        self.classname = attributes[:'classname']
      end

      if attributes.key?(:'pipeline_number')
        self.pipeline_number = attributes[:'pipeline_number']
      end

      if attributes.key?(:'workflow_name')
        self.workflow_name = attributes[:'workflow_name']
      end

      if attributes.key?(:'test_name')
        self.test_name = attributes[:'test_name']
      end

      if attributes.key?(:'job_name')
        self.job_name = attributes[:'job_name']
      end

      if attributes.key?(:'job_number')
        self.job_number = attributes[:'job_number']
      end

      if attributes.key?(:'times_flaked')
        self.times_flaked = attributes[:'times_flaked']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'file')
        self.file = attributes[:'file']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @workflow_created_at.nil?
        invalid_properties.push('invalid value for "workflow_created_at", workflow_created_at cannot be nil.')
      end

      if @workflow_id.nil?
        invalid_properties.push('invalid value for "workflow_id", workflow_id cannot be nil.')
      end

      if @classname.nil?
        invalid_properties.push('invalid value for "classname", classname cannot be nil.')
      end

      if @pipeline_number.nil?
        invalid_properties.push('invalid value for "pipeline_number", pipeline_number cannot be nil.')
      end

      if @workflow_name.nil?
        invalid_properties.push('invalid value for "workflow_name", workflow_name cannot be nil.')
      end

      if @test_name.nil?
        invalid_properties.push('invalid value for "test_name", test_name cannot be nil.')
      end

      if @job_name.nil?
        invalid_properties.push('invalid value for "job_name", job_name cannot be nil.')
      end

      if @job_number.nil?
        invalid_properties.push('invalid value for "job_number", job_number cannot be nil.')
      end

      if @times_flaked.nil?
        invalid_properties.push('invalid value for "times_flaked", times_flaked cannot be nil.')
      end

      if @source.nil?
        invalid_properties.push('invalid value for "source", source cannot be nil.')
      end

      if @file.nil?
        invalid_properties.push('invalid value for "file", file cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @workflow_created_at.nil?
      return false if @workflow_id.nil?
      return false if @classname.nil?
      return false if @pipeline_number.nil?
      return false if @workflow_name.nil?
      return false if @test_name.nil?
      return false if @job_name.nil?
      return false if @job_number.nil?
      return false if @times_flaked.nil?
      return false if @source.nil?
      return false if @file.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          time_wasted == o.time_wasted &&
          workflow_created_at == o.workflow_created_at &&
          workflow_id == o.workflow_id &&
          classname == o.classname &&
          pipeline_number == o.pipeline_number &&
          workflow_name == o.workflow_name &&
          test_name == o.test_name &&
          job_name == o.job_name &&
          job_number == o.job_number &&
          times_flaked == o.times_flaked &&
          source == o.source &&
          file == o.file
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [time_wasted, workflow_created_at, workflow_id, classname, pipeline_number, workflow_name, test_name, job_name, job_number, times_flaked, source, file].hash
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
