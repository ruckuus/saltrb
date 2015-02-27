# coding: utf-8
#lib = File.expand_path('../lib', __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
$:.push File.expand_path("../lib", __FILE__)
require 'saltrb/version'

Gem::Specification.new do |spec|
  spec.name          = "saltrb"
  spec.version       = Saltrb::VERSION
  spec.authors       = ["Dwi Sasongko Supriyadi"]
  spec.email         = ["ruckuus@gmail.com"]
  spec.summary       = %q{SaltStack wrapper in Ruby}
  spec.description   = %q{An attempt to wrap SaltStack command in Ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
