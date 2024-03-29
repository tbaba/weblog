require 'bundler/capistrano'
set :application, "weblog"
set :repository,  "git@github.com:harakirisoul/weblog.git"

set :scm, :git

set :git_shallow_clone, 1
set :default_run_options, :pty => true
set :use_sudo, false
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
#
set :user, 'tatsuro'
set :branch, 'master'
set :deploy_to, "/var/www/#{application}"
server '59.106.183.24', :app, :web, :db, :primary => true

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
