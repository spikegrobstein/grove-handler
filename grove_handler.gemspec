# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "grove_handler/version"

Gem::Specification.new do |s|
  s.name        = "grove_handler"
  s.version     = GroveHandler::VERSION
  s.authors     = ["Spike Grobstein"]
  s.email       = ["spike@ticketevolution.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "grove_handler"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
