# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require'frak/version'

Gem::Specification.new do |spec|
  spec.name          = "frak"
  spec.version       = Frak::VERSION
  spec.authors       = ["Agolveo"]
  spec.email         = ["adaBugFree13@gmail.com"]
  spec.description   = %q{frakin search}
  spec.summary       = %q{searchy search}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   =  ["frak"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

# spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
