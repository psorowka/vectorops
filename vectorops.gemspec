# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vectorops/version'

Gem::Specification.new do |spec|
  spec.name          = "vectorops"
  spec.version       = Vectorops::VERSION
  spec.authors       = ["Peter Sorowka"]
  spec.email         = ["psorowka@freilicht.net"]
  spec.description   = %q{Advanced operations for Ruby Vector class}
  spec.summary       = %q{Adds additional operations to the basic Ruby Vector class}
  spec.homepage      = "https://github.com/psorowka/vectorops"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec",  "~> 3.0.0.beta2"
end
