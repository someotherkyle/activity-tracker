source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', require: 'active_record'
gem 'sinatra-activerecord', require: 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'shotgun'
gem 'bcrypt'
gem 'tux'
gem 'dotenv'
gem 'thin' #included in fwitter project, appears to be some sort of webserver, may be a dep of shotgun ¯\_(ツ)_/¯

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'pry'
  gem 'sqlite3'
end
