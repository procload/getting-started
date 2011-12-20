set :application,       'learningally'
set :repository,        'build'
set :scm,               :none
set :deploy_via,        :copy
set :copy_compression,  :gzip
set :use_sudo,          false
set :user,              'uhlenbrock'
set :group,             user
set :host,              '67.207.143.235'
set :deploy_to,         "/home/#{user}/sites/#{application}.helloample.com"
set :keep_releases,     4

role :web,  host
role :app,  host
role :db,   host, :primary => true
ssh_options[:port] = 30123

before 'deploy:update', 'deploy:build_middleman'

namespace :deploy do

  [:start, :stop, :restart, :finalize_update].each do |t|
    desc "#{t} task is a no-op with middleman"
    task t, :roles => :app do ; end
  end
  
  desc 'Run middleman build to update site before uploading'
  task :build_middleman do
    %x(rm -rf build && bundle exec middleman build)
  end
  
end