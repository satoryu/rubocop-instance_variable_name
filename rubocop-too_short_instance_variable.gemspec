lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/too_short_instance_variable/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-too_short_instance_variable"
  spec.version       = Rubocop::TooShortInstanceVariable::VERSION
  spec.authors       = ["Tatsuya Sato"]
  spec.email         = ["satoryu.1981@gmail.com"]

  spec.summary       = %q{A custom cop to check instance variables with too short name}
  spec.description   = <<~DESC
    Variable name is an important key for developers to understand what codes do.
    This cope detcts too short instance variables.
  DESC
  spec.homepage      = "https://github.com/satoryu/rubocop-too_short_instance_variable"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = 'https://rubygems.org'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/satoryu/rubocop-too_short_instance_variable"
  spec.metadata["changelog_uri"] = "https://github.com/satoryu/rubocop-too_short_instance_variable"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubocop", "~> 0.72.0"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
