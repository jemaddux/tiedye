# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tiedye/version'

Gem::Specification.new do |spec|
  spec.name          = "tiedye"
  spec.version       = Tiedye::VERSION
  spec.authors       = ["John Maddux"]
  spec.email         = ["jemaddux@gmail.com"]
  spec.description   = %q{Change colors from hex to rgb or named value}
  spec.summary       = %q{Colors!}
  spec.homepage      = "https://github.com/jemaddux/tiedye"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 4.7.3"
end
