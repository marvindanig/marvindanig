namespace :setup do

  desc "Upload database.yml file."
  task :upload_db_yml do
    on roles(:app) do
      execute "mkdir -p #{shared_path}/config"
      upload! StringIO.new(File.read("config/database.yml")), "#{shared_path}/config/database.yml"
    end
  end

  desc "Upload ssl_cert files."
  task :upload_ssl_certs do
    on roles(:web) do
      execute "mkdir -p #{shared_path}/config/ssl/certs"
      upload! StringIO.new(File.read("config/ssl/www_marvindanig_com.crt")), "#{shared_path}/config/ssl/certs/www_marvindanig_com.crt"
      upload! StringIO.new(File.read("config/ssl/AddTrustExternalCARoot.crt")), "#{shared_path}/config/ssl/certs/AddTrustExternalCARoot.crt"
      upload! StringIO.new(File.read("config/ssl/COMODORSAAddTrustCA.crt")), "#{shared_path}/config/ssl/certs/COMODORSAAddTrustCA.crt"
      upload! StringIO.new(File.read("config/ssl/COMODORSADomainValidationSecureServerCA.crt")), "#{shared_path}/config/ssl/certs/COMODORSADomainValidationSecureServerCA.crt"

      # execute "mv #{shared_path}/config/ssl/certs/www_marvindanig_com.crt /etc/ssl/certs/www_marvindanig_com.crt"
      # execute "mv #{shared_path}/config/ssl/certs/AddTrustExternalCARoot.crt /etc/ssl/certs/AddTrustExternalCARoot.crt"
      # execute "mv #{shared_path}/config/ssl/certs/COMODORSAAddTrustCA.crt /etc/ssl/certs/COMODORSAAddTrustCA.crt"
      # execute "mv #{shared_path}/config/ssl/certs/COMODORSADomainValidationSecureServerCA.crt /etc/ssl/certs/COMODORSADomainValidationSecureServerCA.crt"

    end
  end







  # desc "Seed the database."
  # task :seed_db do
  #   on roles(:app) do
  #     within "#{current_path}" do
  #       with rails_env: :production do
  #         execute :rake, "db:seed"
  #       end
  #     end
  #   end
  # end

  # desc "Symlinks config files for Nginx and Unicorn."
  # task :symlink_config do
  #   on roles(:app) do
  #     execute "rm -f /etc/nginx/sites-enabled/default"

  #     execute "ln -nfs #{current_path}/config/nginx.conf /etc/nginx/sites-enabled/#{fetch(:application)}"
  #     execute "ln -nfs #{current_path}/config/unicorn_init.sh /etc/init.d/unicorn_#{fetch(:application)}"
  #  end
  # end

end
