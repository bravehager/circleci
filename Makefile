clean-ruby: ruby
	rm -rf ruby

build-ruby: clean-ruby
	swagger-codegen generate -i swagger.json -c config.json -l ruby -o ruby
	rm ruby/spec/base_object_spec.rb
