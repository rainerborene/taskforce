# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "taskforce/version"

Gem::Specification.new do |spec|
  spec.name          = "taskforce"
  spec.version       = Taskforce::VERSION
  spec.authors       = ["Rainer Borene"]
  spec.email         = ["rainerborene@gmail.com"]

  spec.summary       = "Asynchronous processing tool that uses cutting edge features in PostgreSQL."
  spec.description   = "Asynchronous processing tool that uses cutting edge features in PostgreSQL."
  spec.homepage      = "https://github.com/rainerborene/taskforce"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
