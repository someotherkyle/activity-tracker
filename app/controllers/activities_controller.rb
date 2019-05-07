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

  get '/activities/end/:id' do
    activity = Activity.find_by(id: params[:id])
    if activity.user_id == current_user.id
      activity.end_time = Time.now
      activity.save
    end
    redirect '/'
  end

  get '/activities/resume/:id' do
    resume = Activity.find_by(id: params[:id])
    activity = Activity.new(name: resume.name)
    activity.user_id = current_user.id
    activity.start_time = Time.now
    activity.save
    redirect '/'
  end

  get '/activities/delete/:id' do
    activity = Activity.find_by(id: params[:id])
    if activity.user_id == current_user.id
      activity.destroy
    end
    redirect '/'
  end
end
