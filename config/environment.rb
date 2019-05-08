ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
require 'securerandom'
Bundler.require(:default, ENV['SINATRA_ENV'])

require_all 'app'
