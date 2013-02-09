namespace :db do
  desc 'Create the database, load the schema'
  task :setup => [ 'db:create', 'db:automigrate', 'db:seed' ]

  desc 'Perform destructive automigration of all repositories in the current Rails.env'
  task :automigrate do
    require 'dm-migrations'
    require 'dm-timestamps'
    require 'dm-types'
    require 'rubycas-server-datamapper/model'
    DataMapper.auto_migrate!(:default)
    puts "[datamapper] Finished auto_migrate!"
  end
end
