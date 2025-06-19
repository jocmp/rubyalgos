# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "algos"
  spec.version       = "0.0.1"
  spec.authors       = ["jocmp"]
  spec.email         = ["dev@jocmp.com"]

  spec.summary = "grindset pile"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0.0")

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
