# frozen_string_literal: true

require_relative "lib/infinit3/version"

Gem::Specification.new do |spec|
  spec.name          = "infinit3"
  spec.version       = Infinit3::VERSION
  spec.authors       = ["infinitEnigma"]
  spec.email         = ["yole71@gmail.com"]

  spec.summary       = "This is an extension of a great and extremely customizable infinit3."
  spec.description   = "Possible use cases: personal site, team site, blog, project, documentation... easy to publish on Github or elsewhere."
  spec.homepage      = "https://github.com/infinitEnigma/infinit3"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/infinitEnigma/infinit3"
  spec.metadata["changelog_uri"] = "https://github.com/infinitEnigma/infinit3/CHANGELOG.md"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^((_data|_includes|_layouts|_sass|assets)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", ">= 3.6", "< 5.0"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.1"
  spec.add_runtime_dependency "jemoji", "~> 0.8"

  spec.add_development_dependency "bundler", "~> 4.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
