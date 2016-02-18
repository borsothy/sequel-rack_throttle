#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'sequel-rack_throttle'
  s.version     = '0.1.0'
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = "Sequal adapter for rack-throttle"
  s.description = "A tiny gem for using any Sequel-supported database as a rack-throttle counter cache."
  s.authors     = ["Gergely Borsothy-Gaal"]
  s.email       = 'bggergo@gmail.com'
  s.files       = ["lib/sequel-rack_throttle.rb", "lib/sequel-rack_throttle/ThrottleAdapter.rb"]
  s.homepage    = 'https://github.com/gergelyborsothy/sequel-rack_throttle'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 1.9.0'
end