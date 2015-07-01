lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery-tablesorter-deduper-rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'jquery-tablesorter-deduper-rails'
  s.version     = JqueryTablesorterDeduperRails::Rails::VERSION
  s.authors     = ["Tomek 'Grych' Gryszkiewicz"]
  s.email       = ['grych@tg.pl']
  s.homepage    = 'https://github.com/grych/jquery-tablesorter-deduper-rails'
  s.summary     = "Gemified jquery.tablesorter.deduper - https://github.com/grych/jquery.tablesorter.deduper"
  s.description = "Gemified jquery.tablesorter.deduper - https://github.com/grych/jquery.tablesorter.deduper"
  s.license     = 'MIT'
  s.files       = Dir['{vendor,lib}/**/*'] + %w( README.md )
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 1.9.3'
  s.add_dependency 'jquery-tablesorter', '~> 1.17', '>= 1.17.1'
  s.add_dependency "railties"
end
