# Load DSL and Setup Up Stages
require 'capistrano/setup'
# Includes default deployment tasks
require 'capistrano/deploy'

require 'capistrano/rails'
require 'capistrano/bundler'
require 'capistrano/rbenv'

require 'capistrano/secrets_yml'
require 'capistrano/safe_deploy_to'
require 'capistrano/ssh_doctor'
require 'capistrano/postgresql'
require 'capistrano/delayed_job'
require 'capistrano/faster_assets'
require 'capistrano/unicorn_nginx'
require 'whenever/capistrano'
# require 'capistrano/memcached'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }