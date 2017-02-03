# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alertifyjs/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "alertifyjs-rails"
  spec.version       = Alertifyjs::Rails::VERSION
  spec.authors       = ["mkhairi"]
  spec.email         = ["khairi@labs.my"]
  spec.description   = %q{Use Alertify.js (alertifyjs.com) with Rails 3, 4 and 5}
  spec.summary       = %q{This gem provides the Alertify.js (alertifyjs.com) for Rails applications}
  spec.homepage      = "https://github.com/mkhairi/alertifyjs-rails.git"
  spec.license      = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
