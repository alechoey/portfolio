RAILS_ROOT = "/u/apps/portfolio/current"

namespace :deploy do
  desc 'starts the app server'
  task :start do
    run "cd #{RAILS_ROOT} && bundle exec god -c #{File.join(RAILS_ROOT, "portfolio.god")}"
  end
  
  desc 'stops the app server'
  task :stop do
    run "cd #{RAILS_ROOT} && bundle exec god stop portfolio"
  end
  
  desc 'restarts the app server'
  task :restart do
    run "cd #{RAILS_ROOT} && bundle exec god restart portfolio"
  end
end