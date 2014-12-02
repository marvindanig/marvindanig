# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'marvindanig'
set :repo_url, 'git@bitbucket.org:marvindanig/marvindanig.git' #ssh://git@altssh.bitbucket.org:443/marvindanig/marvindanig.git

set :deploy_to, '/var/www/marvindanig' # Default deploy_to directory is /var/www/my_app
set :deploy_user, 'marvin'

set :deploy_via,  :remote_cache  #or use :checkout # Don't clone entire repo each time
set :use_sudo, false # Sudo permissions not required

set :forward_agent, true # Forwarding agent requires passwordless sudoer
set :pty, true # Default value for :pty is false

set :backup_path, "/home/#{fetch(:deploy_user)}/Backup"

# CONFIGURATION: RBENV
# ==================
set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.1.3'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

set :linked_files, %w{config/database.yml config/secrets.yml} # Default value for :linked_files is []
# set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/sitemaps } # Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs) + %w{public/system public/uploads}

set :keep_releases, 10 # Default value for keep_releases is 5

# set :rails_env, 'production' # Force production env on staging and elsewhere
# set :scm, :git # Default value for :scm is :git
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call # Default branch is :master
# set :format, :pretty # Default value for :format is :pretty
# set :log_level, :info # Default value for :log_level is :debug
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

namespace :deploy do

  before :deploy, 'deploy:check_revision'

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
      invoke 'unicorn:restart'

    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
end
