# requiring the gems in Gemfile and giving program access to them
require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require


# put the code to connect to the database here
# using the establish_connection method from ActiveRecord::Base to connect
# to our artists database, which will be created in the migration via SQLite3 (the adapter)
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)
require_relative "../artist.rb"
