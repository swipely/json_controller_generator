Gem::Specification.new do |gem|
  gem.authors       = ["Matt Gillooly"]
  gem.email         = ["matt@swipely.com"]
  gem.summary       = %q{A Rails generator for JSON-only controllers}
  gem.description   = %q{Create controllers for restful APIs, without generating unwanted helpers, views, and assets.}
  gem.homepage      = "https://github.com/swipely/json_controller_generator"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_path = "lib"

  gem.name          = "json_controller_generator"
  gem.require_paths = ["lib"]

  gem.version = "0.0.1"

  gem.add_dependency('rails')

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'cucumber'
  gem.add_development_dependency 'bump'
  gem.add_development_dependency 'aruba'
  gem.add_dependency 'rspec-rails'
end
