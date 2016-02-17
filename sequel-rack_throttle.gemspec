#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'sequel-rack_throttle'
  s.version     = '0.0.8'
  s.date        = '2016-02-15'
  s.summary     = "Sequel class patch to work with rake-throttle"
  s.description = "Sequel patch so you can plug any Sequel-supported database under rack-throttle as a counter."
  s.authors     = ["Gergely Borsothy-Gaal"]
  s.email       = 'bggergo@gmail.com'
  s.files       = ["lib/sequel-rack_throttle.rb", "lib/sequel-rack_throttle/Database.rb"]
  s.homepage    = 'https://github.com/gergelyborsothy/sequel-rack_throttle'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 1.9.0'

  s.add_dependency 'sequel', '~> 4.31'
end