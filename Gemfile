source 'https://rubygems.org'

# Core gems
  gem 'rails', '4.2.3'
  gem 'pg' # Use PostGreSQL as DB for Active Record
  gem 'unicorn' # App server

# Static Assets
  gem 'sass-rails', '~> 4.0.0' # CSS Preprocessors
  gem 'uglifier', '>= 1.3.0' # Compress JavaScript assets
  gem 'turbolinks' # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
  gem 'haml-rails' # Clean View Templates
  gem 'jquery-rails', '~> 3.1.1' # jQuery & jQuery_ujs
  gem 'modernizr-rails' # Modernizr for HTML5 Feature Detection
  gem 'autoprefixer-rails' #Post Process vendor prefixes
  gem 'font-awesome-rails', "~> 4.2.0" #Font Awesome for iconified buttons
  # gem 'htmlcompressor', '~> 0.1.2' # Compress all source, truncate everything using config/initializers/compression.rb
  gem 'prefixfree-rails'

# Static Pages
  gem 'high_voltage'

# Blog face
  gem 'monologue'

# Mailers
  gem 'delayed_job' # Execute longer tasks asynchronously
  gem 'delayed_job_active_record'
  gem 'daemons' # Wrap existing Ruby Scripts for delayed_jobs on production
  gem 'sendgrid'
  gem 'responders', '~> 2.0'
  # gem 'mail'
  # gem 'premailer-rails'


# Favicon
  gem 'favicon_maker'

# Sitemaps & SEO
  gem 'roboto'
  gem 'dynamic_sitemaps'
  
# group :doc do
#   gem 'sdoc', '~> 0.4.0', require: false # bundle exec rake doc:rails generates the API under doc/api.
# end

group :development do 
  gem 'annotate' # Annotate model/routes files with scehema information
  gem 'better_errors' # Useful application errors
  gem 'binding_of_caller' # Local/Instance variables inspection
  gem 'meta_request' 
  gem 'rails_best_practices' # Evaluate app for best practices
  gem 'brakeman', :require => false # Evaluate app for known security holes
  gem 'spring'

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

group :test do
end

group :production, :staging do
  gem 'unicorn-worker-killer' # Kill a worker after 500-600 processes and if eats more than 250mb RAM
end
