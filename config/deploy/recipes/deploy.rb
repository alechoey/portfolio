RAILS_ROOT = "/home/ubuntu/apps/alec_server/current"

namespace :deploy do
  desc 'starts the app server'
  task :start do
    run "cd #{RAILS_ROOT} && passenger start"
  end
  
  desc 'stops the app server'
  task :stop do
    run "cd #{RAILS_ROOT} && passenger stop"
  end
  
  desc 'restarts the app server'
  task :restart do
    run "touch #{File.join(RAILS_ROOT, 'tmp/restart.txt')}"
  end
end