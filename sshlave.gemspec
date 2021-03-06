# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sshlave/version"

Gem::Specification.new do |s|
  s.name        = "sshlave"
  s.version     = SSHlave::VERSION
  s.authors     = ["Konstantin Saveljev"]
  s.email       = ["konstantin.saveljev@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Simple remote server manager over SSH}
  s.description = %q{Simple remote server manager over SSH}

  s.rubyforge_project = "sshlave"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "smart_colored"
  s.add_runtime_dependency "net-ssh-shell"
end
