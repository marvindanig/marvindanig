set :stage, :production
set :rails_env, 'production' # Force production env on staging and elsewhere

server 'marvindanig.com', user: 'marvin', port: '22', roles: %w{ web app db }, primary: true # Server ip is = 104.236.58.98 // DigitalOcean

# CONFIGURATION: BUNDLER
# ==================
# set :bundle_jobs, 2 # default: nil, only available for Bundler >= 1.4
# set :bundle_roles, :all                                         # this is default
# set :bundle_servers, -> { release_roles(fetch(:bundle_roles)) } # this is default
# set :bundle_binstubs, -> { shared_path.join('bin') }            # this is default
# set :bundle_gemfile, -> { release_path.join('MyGemfile') }      # default: nil
# set :bundle_path, -> { shared_path.join('bundle') }             # this is default
# set :bundle_without, %w{development test}.join(' ')             # this is default
# set :bundle_flags, '--deployment --quiet'                       # this is default
# set :bundle_env_variables, {}                                   # this is default

# CONFIGURATION: POSTGRESQL
# ==================
# set :pg_database, 'cleopatra'
# set :pg_user, 'bubblin'
# set :pg_password
# set :pg_ask_for_password
# set :pg_system_user
# set :pg_system_db
# set :pg_use_hstore
# set :pg_env
# set :pg_pool
# set :pg_host
# set :pg_encoding

# CONFIGURATION: NGINX
# ==================
set :nginx_server_name, 'marvindanig.com'
# # ignore this if you do not need SSL
set :nginx_use_ssl, true
set :nginx_upload_local_cert, true
set :nginx_ssl_cert, "www_marvindanig_com.crt"
set :nginx_ssl_cert_key, "www.marvindanig.com.key"
set :nginx_ssl_cert_local_path, '#{shared_path}/config/ssl/certs/www_marvindanig_com.crt'
set :nginx_ssl_cert_key_local_path, '/etc/ssl/private/www.marvindanig.com.key'
# set :nginx_pid, "/run/nginx.pid"
# set :nginx_location, "/etc/nginx"

# CONFIGURATION: UNICORN
# ==================
# set :unicorn_workers, 2
# set :unicorn_service, "unicorn_#{fetch(:application)}_#{fetch(:stage)}
# set :unicorn_pid, shared_path.join("tmp/pids/unicorn.pid")
# set :unicorn_config, shared_path.join("config/unicorn.rb")
# set :unicorn_app_env
# set :unicorn_use_tcp, -> { roles(:app).count > 1 }
# set :unicorn_tcp_listen_port, 1983

# CONFIGURATION: DELAYED_JOBS
# ==================
# set :delayed_job_workers, 2
# set :delayed_job_server_roles, "[:app]"
# set :delayed_job_service, -> { "delayed_job_#{fetch(:application)}_#{fetch(:stage)}" }

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
