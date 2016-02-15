#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'sequel-rack_throttle'
  s.version     = '0.0.1'
  s.date        = '2016-02-15'
  s.summary     = "Sequel class patch to work with rake-throttle"
  s.description = "Sequel patch so you can plug any Sequel-supported database under rack-throttle as a counter."
  s.authors     = ["Gergely Borsothy-Gaal"]
  s.email       = 'bggergo@gmail.com'
  s.files       = ["lib/sequel-rack_throttle.rb", "lib/sequel-rack_throttle/Database.rb"]
  s.homepage    = 'https://github.com/gergelyborsothy'
  s.license     = 'MIT'

  s.add_dependency 'rack-throttle', '~> 0.4.0'
end