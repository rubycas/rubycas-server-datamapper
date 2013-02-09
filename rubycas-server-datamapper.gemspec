# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubycas-server-datamapper/version'

Gem::Specification.new do |gem|
  gem.name          = "rubycas-server-datamapper"
  gem.version       = Rubycas::Server::Datamapper::VERSION
  gem.authors       = ["Robert Mitwicki"]
  gem.email         = ["robert.mitwicki@opensoftware.pl"]
  gem.description   = %q{DataMapper adapter for RubyCAS Server}
  gem.summary       = %q{DataMapper adapter for RubyCAS Server}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
