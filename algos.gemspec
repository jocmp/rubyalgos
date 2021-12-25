# frozen_string_literal: true

require_relative "lib/algos/version"

Gem::Specification.new do |spec|
  spec.name          = "algos"
  spec.version       = Algos::VERSION
  spec.authors       = ["jocmp"]
  spec.email         = ["9521010+jocmp@users.noreply.github.com"]

  spec.summary = "Some brainteasers I've found along the way"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "debug"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec_junit_formatter"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-lsp"
end
