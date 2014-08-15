# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "key_smith/version"

Gem::Specification.new do |spec|

  spec.name          = "key_smith"
  spec.version       = KeySmith::VERSION
  spec.authors       = ["Philip Vieira"]
  spec.email         = ["philip@vallin.se"]

  spec.summary       = %q{ Tools for modifying hash keys. }
  spec.description   = %q{ Convenient when some keys just aren't the way you want them to. }
  spec.homepage      = "http://www.github.com/zeeraw/key_smith"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
