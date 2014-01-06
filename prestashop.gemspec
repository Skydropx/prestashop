# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prestashop/version'

Gem::Specification.new do |spec|
  spec.name          = "prestashop"
  spec.version       = Prestashop::VERSION
  spec.authors       = ["JiriKolarik"]
  spec.email         = ["jiri.kolarik@imin.cz"]
  spec.description   = %q{Prestashop WebService API library}
  spec.summary       = %q{Prestashop WebService API library}
  spec.homepage      = "https://github.com/werein/prestashop"
  spec.license       = "NC"

  spec.files         = Dir["{lib}/**/*", "LICENSE.txt", "Rakefile", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sanitize"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "webmock"
end