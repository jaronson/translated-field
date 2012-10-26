# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "translated-field/version"

Gem::Specification.new do |s|
  s.name        = "translated-field"
  s.version     = Translated::Field::VERSION
  s.authors     = ["Josh Aronson"]
  s.email       = ["jparonson@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{ActiveModel extension for locale-based columns}
  s.description = %q{translated-field adds the translated_field method to ActiveModel classes, providing for locale-based attributes}

  s.rubyforge_project = "translated-field"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'i18n'

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
