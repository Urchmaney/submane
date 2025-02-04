require_relative "lib/submane/version"

Gem::Specification.new do |spec|
  spec.name        = "submane"
  spec.version     = Submane::VERSION
  spec.authors     = ["Unegbu Kingsley"]
  spec.email       = ["kingsobino@gmail.com"]
  spec.homepage    = "https://github.com/Urchmaney/submane"
  spec.summary     = "Subscription management gem for rails."
  spec.description = "Subscription management gem for rails."
  spec.license     = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Urchmaney/submane"
  spec.metadata["changelog_uri"] = "https://github.com/Urchmaney/submane"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.4"
end
