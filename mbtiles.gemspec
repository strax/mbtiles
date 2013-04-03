# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mbtiles/version'

Gem::Specification.new do |spec|
  spec.name          = "mbtiles"
  spec.version       = MBTiles::VERSION
  spec.authors       = ["Sami Kukkonen"]
  spec.email         = ["sami.matias.kukkonen@gmail.com"]
  spec.description   = %q{MBTiles utilities}
  spec.summary       = %q{MBTiles utilities}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sequel"
  spec.add_dependency "activesupport"
  spec.add_dependency "sqlite3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "rb-fsevent", "~> 0.9"
  spec.add_development_dependency "fuubar"
end
