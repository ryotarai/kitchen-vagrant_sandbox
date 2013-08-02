# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/vagrant_sandbox_version.rb'

Gem::Specification.new do |gem|
  gem.name          = "kitchen-vagrant_sandbox"
  gem.version       = Kitchen::Driver::VAGRANT_VERSION
  gem.license       = 'Apache 2.0'
  gem.authors       = ["Ryota Arai"]
  gem.email         = ["ryota.arai@gmail.com"]
  gem.description   = "Kitchen::Driver::VagrantSandbox - A Vagrant Driver with sandbox for Test Kitchen. (Fork Version of Kitchen::Driver::Vagrant)"
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/ryotarai/kitchen-vagrant_sandbox/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = []
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'test-kitchen', '~> 1.0.0.beta.1'

  gem.add_development_dependency 'cane'
  gem.add_development_dependency 'tailor'
  gem.add_development_dependency 'countloc'
end
