require './config/environment'

use Rack::MethodOverride
use UsersController
use ActivitiesController
run ApplicationController
