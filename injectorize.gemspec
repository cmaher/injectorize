# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'injectorize/version'

Gem::Specification.new do |spec|
  spec.name          = "injectorize"
  spec.version       = Injectorize::VERSION
  spec.authors       = ["Christian Maher"]
  spec.email         = ["maher.cs@gmail.com"]
  spec.summary       = %q{Inject class accessors}
  spec.description   = %q{Like attr_accessor with default creation}
  spec.homepage      = "https://github.com/cmaher/injectorize"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
end
