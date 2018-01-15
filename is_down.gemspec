# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "is_down/version"

Gem::Specification.new do |spec|
  spec.name          = "is_down"
  spec.version       = IsDown::VERSION
  spec.authors       = ["Gr3atWh173"]
  spec.email         = ["Gr3atWh173@users.noreply.github.com"]
  spec.summary       = %q{rubygem to check if a website is down or not using isitup.org API.}
  spec.homepage      = "https://www.github.com/Gr3atWh173/is_down"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.15"
end
