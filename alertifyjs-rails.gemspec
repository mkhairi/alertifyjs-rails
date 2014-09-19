# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alertifyjs/rails/version'

Gem::Specification.new do |gem|
  gem.name          = "alertifyjs-rails"
  gem.version       = Alertifyjs::Rails::VERSION
  gem.authors       = ["mkhairi"]

  gem.description   = %q{Use Alertify.js (alertifyjs.com) with Rails 3 and 4}
  gem.summary       = %q{This gem provides the Alertify.js (alertifyjs.com) for Rails applications}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
