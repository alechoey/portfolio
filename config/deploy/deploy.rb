require 'bundler/capistrano'

set :scm, :git
set :application, "portfolio"
set :repository, "git@github.com:alechoey/portfolio.git" 
set :branch, "master"
set :deploy_to, "/home/ubuntu/apps/alec_server"

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

set :user, 'ubuntu'
set :use_sudo, true
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "alechoey.com"                          # Your HTTP server, Apache/etc
role :app, "alechoey.com"
role :db,  "alechoey.com", :primary => true # This is where Rails migrations will run

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
