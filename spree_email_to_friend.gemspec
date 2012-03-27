# encoding: utf-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_email_to_friend'
  s.version     = '1.2'
  s.summary     = 'Spree extension to send product recommendations to friends'
  s.description = 'Spree extension to send product recommendations to friends'
  s.required_ruby_version = '>= 1.9.2'

  s.author        = 'Jorge Calás Lozano, Roman Smirnov, Trung Lê'
  s.homepage      = 'https://github.com/spree/spree_email_to_friend'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
  s.requirements << 'none'

  s.add_dependency 'spree_core'
  s.add_dependency 'recaptcha', '>= 0.3.1'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'factory_girl_rails', '~> 1.7.0'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sqlite3'
end
