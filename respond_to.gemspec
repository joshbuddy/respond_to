# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "respond_to/version"

Gem::Specification.new do |s|
  s.name        = "respond_to"
  s.version     = RespondTo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Joshua Hull"]
  s.email       = ["joshbuddy@gmail.com"]
  s.homepage    = "http://github.com/joshbuddy/respond_to"
  s.summary     = %q{Easy way to make respond_to? matchers for case statements}
  s.description = %q{Easy way to make respond_to? matchers for case statements.}

  s.rubyforge_project = "respond_to"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
