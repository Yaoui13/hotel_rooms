source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Rails
gem "rails", "~> 7.0.4", ">= 7.0.4.3"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "sprockets-rails"
gem "devise", "~> 4.9"
gem "bootsnap", require: false
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"

  # GEMS demandées par l'exercice :
  gem "brakeman"        # Analyse de sécurité (injection SQL)
  gem "bullet"          # Détection des requêtes N+1
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
