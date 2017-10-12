# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'icon_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "icon_helper"
  spec.version       = IconHelper::VERSION
  spec.authors       = ["Thies Pierdola"]
  spec.email         = ["tp@centic.dk"]

  spec.summary       = %q{Icon helper to work with bootstrap 3 with glyphicons and boostrap 4 with font awesome}
  spec.description   = %q{Icon helper to work with bootstrap 3 with glyphicons and boostrap 4 with font awesome}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://www.dummy.dont.push"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
