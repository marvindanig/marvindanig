source 'https://rubygems.org'

# Core gems
  gem 'rails', '4.1.5'
  gem 'pg' # Use PostGreSQL as DB for Active Record
  gem 'unicorn' # App server

# Static Assets
  gem 'sass-rails', '~> 4.0.0' # CSS Preprocessors
  gem 'uglifier', '>= 1.3.0' # Compress JavaScript assets
  gem 'turbolinks' # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
  gem 'haml-rails' # Clean View Templates
  # gem 'jquery-rails', '~> 3.1.1' # jQuery & jQuery_ujs
  # gem 'modernizr-rails' # Modernizr for HTML5 Feature Detection
  gem 'autoprefixer-rails' #Post Process vendor prefixes
  gem 'font-awesome-rails', "~> 4.2.0" #Font Awesome for iconified buttons
  # gem 'htmlcompressor', '~> 0.1.2' # Compress all source, truncate everything using config/initializers/compression.rb

# Static Pages
  gem 'high_voltage'

# Mailers
  gem 'delayed_job' # Execute longer tasks asynchronously
  gem 'delayed_job_active_record'
  gem 'daemons' # Wrap existing Ruby Scripts for delayed_jobs on production
  gem 'sendgrid'
  # gem 'mail'
  # gem 'premailer-rails'
  
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

# gem 'nokogiri' # Parse and search XML/HTML quickly
# gem 'bcrypt' # Use ActiveModel has_secure_password
# gem 'jbuilder', '~> 1.2' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'will_paginate' # Use Pagination
# gem 'bartt-ssl_requirement', '~>1.4.0', :require => 'ssl_requirement' # Declare :actions to be allowed only under SSL
# gem 'useragent' # Detect browser information
# gem 'secure_headers' # Content Security Policy
# gem 'whenever', :require => false # Cron jobs and schedule
# gem 'exception_notification'
# gem 'capistrano-memcached', '~> 1.0'
# gem 'capistrano-maintenance', github: "capistrano/maintenance", require: false 
# gem 'mysql2' # Required for Thinking_Sphinx Refer: https://github.com/pat/thinking-sphinx
# gem 'parsley-rails'
# gem 'thinking-sphinx'  # Thinking Sphinx Search and Merge delta through Delayed Job
# Payments
  # gem "stripe"   # Payments using Stripe

# Other dependencies
  # gem 'gon' # Gon: To Pass data from controller to javascript
  # gem 'friendly_id' # Custom Slugs & URLs
  # gem 'dnsruby' # Get DNS name
  # gem 'strip_attributes' #Removes leading and trailing white spaces from attributes.
  # gem 'utf8-cleaner' # UTF8 support and cleanup
  # gem 'dalli' # Memcache

# Images 
  # gem 'carrierwave' # Use image manipulation resizing dependencies
  # gem 'rmagick', '2.13.2', require: false
  # gem 'mini_magick'
  # gem 'carrierwave-imageoptimizer' # Apply OptiPNG & JPEGOoptim on images

# Authentications 
  # gem 'omniauth-facebook'
  # gem 'omniauth-linkedin'
  # gem 'omniauth-twitter'
  # gem 'omniauth-google-oauth2'
  # gem 'oauth2'

# Adminstration
  # gem 'activeadmin', github: 'activeadmin'
  # gem 'devise', '~> 3.4.1'
  # gem 'rails-erd' # Entity Relationships
  # gem 'jquery-cookie-rails' # Using cookies to remember last read page for books
