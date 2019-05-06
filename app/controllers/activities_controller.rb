require_relative 'application_controller'
class ActivitiesController < ApplicationController

  get '/activities/new' do
    erb :'activities/create'
  end

  post '/activities' do
    activity = Activity.new(name: params[:name])
    activity.user_id = current_user.id
    activity.start_time = Time.now
    activity.save
    redirect '/'
  end
end
