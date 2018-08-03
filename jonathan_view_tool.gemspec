
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jonathan_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "jonathan_view_tool"
  spec.version       = JonathanViewTool::VERSION
  spec.authors       = ["jonathan altoe"]
  spec.email         = ["jonathan.altoe@coupa.com"]

  spec.summary       = %q{Various view specific methods for applications I use (devcamp tutorial).}
  spec.description   = %q{Provides generated HTML data for Rails applications (devcamp tutorial).}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
