require './config/environment'
require 'dotenv/load'

use Rack::MethodOverride
use UsersController
use ActivitiesController
run ApplicationController
