# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'preferencias/version'

Gem::Specification.new do |spec|
  spec.name          = "preferencias"
  spec.version       = Preferencias::VERSION
  spec.authors       = ["David Silva"]
  spec.email         = ["davidslv@gmail.com"]
  spec.summary       = %q{Extracted Preferences Model from Spree Ecommerce.}
  spec.description   = %q{It's an extraction of the Spree Ecommerce Preferences. All the credits goes to the Spree authors.}
  spec.homepage      = "https://github.com/Davidslv/preferences"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency "railties", [">= 3.2", "< 4.2"]
  spec.add_dependency "activesupport", [">= 3.2", "< 4.2"]
  spec.add_dependency "activerecord", [">= 3.2", "< 4.2"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 0.9', '>= 0.9.6'
  spec.add_development_dependency "rspec", '~> 3.1', '>= 3.1.0'
  spec.add_development_dependency "sqlite3", '~> 1.3', '>= 1.3.9'
end
