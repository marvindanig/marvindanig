source 'https://rubygems.org'
ruby '2.1.3'
gem 'rails', '4.1.5'
gem 'high_voltage'
gem 'pg'
gem 'unicorn'
gem 'unicorn-rails'
gem 'jbuilder', '~> 2.0'

gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development



gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
# gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass'
gem 'bootswatch-rails'
gem 'haml-rails'


group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
  gem 'spring-commands-rspec'

  # Deployment
  gem 'capistrano', '~> 3.2.1'
  gem 'capistrano-rails', '~> 1.1.1'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rbenv', '~> 2.0.2'
  gem 'capistrano-safe-deploy-to', '~> 1.1.1'
  gem 'capistrano-secrets-yml', '~> 1.0.0'  
  gem 'capistrano-faster-assets', '~> 1.0'
  gem 'capistrano-ssh-doctor', '~> 1.0'
  gem 'capistrano-postgresql', '~> 4.1.0'
  gem 'capistrano-delayed-job', '~> 1.0'
  gem 'capistrano-unicorn-nginx', '~> 3.1.0'

end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end
