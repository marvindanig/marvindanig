# lib/capistrano/tasks/agent_forwarding.rake
desc "Check if agent forwarding is working"
task :check_forwarding do
  on roles(:all) do |h|
    if test("env | grep SSH_AUTH_SOCK")
      info "Agent forwarding is working and totally up to #{h}"
    else
      error "Agent forwarding is NOT working for #{h}"
    end
  end
end