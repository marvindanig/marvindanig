namespace :backup do

  desc "Upload backup config files."
  task :upload_config do
    on roles(:app) do
      execute "mkdir -p #{fetch(:backup_path)}/models"
      upload! StringIO.new(File.read("config/backup/config.rb")), "#{fetch(:backup_path)}/config.rb"
      upload! StringIO.new(File.read("config/backup/models/db_backup.rb")), "#{fetch(:backup_path)}/models/db_backup.rb"
    end
  end

  desc "Take backup of database immediately"
  task :take_now do
    on roles(:web) do
      within "#{fetch(:backup_path)}" do
        with path: "/home/#{fetch(:deploy_user)}/.rbenv/shims:$PATH" do
          command "backup perform -t db_backup"
        end
      end
    end
  end

  desc "Upload cron schedule file."
  task :upload_cron do
    on roles(:app) do
      execute "mkdir -p #{fetch(:backup_path)}/config"
      execute "touch #{fetch(:backup_path)}/config/cron.log"
      upload! StringIO.new(File.read("config/backup/schedule.rb")), "#{fetch(:backup_path)}/config/schedule.rb"

      within "#{fetch(:backup_path)}" do
        # capistrano was unable to find the executable for whenever
        # without the path to rbenv shims set
        with path: "/home/#{fetch(:deploy_user)}/.rbenv/shims:$PATH" do
          puts capture :whenever
          puts capture :whenever, '--update-crontab'
        end
      end
    end
  end
end