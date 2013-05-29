# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_service_provider/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_service_provider"
  spec.version       = SimpleServiceProvider::VERSION
  spec.authors       = ["Suman Mukherjee"]
  spec.email         = ["sumanmukherjee03@gmail.com"]
  spec.description   = %q{A gem that provides a simple interface for service objects}
  spec.summary       = %q{This gem ties down the interface for your service objects, providing a consistent structure to your service objects and keeping them single responsible.}
  spec.homepage      = "http://github.com/sumanmukherjee03/simple_service_provider"
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*.rb']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "virtus"
  spec.add_dependency "activemodel"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
