class UsersController < ApplicationController

  get '/signup' do
    if !logged_in?
      erb :'users/signup'
    else
      redirect '/'
    end
  end

  post '/signup' do
    user = User.all.find{|user| user.username == params[:username]}
    user ||= User.all.find{|user| user.email == params[:email]}
    if user
      @message = "Username or Email in use."
      erb :'users/signup' # not sure how to redirect and pass @message
    elsif params[:password] != params[:password1]
      @message = "Passwords do not match."
      erb :'users/signup'
    else
      user = User.create(username: params[:username], email: params[:email], password: params[:password])
      session[:user_id] = user.id
      redirect '/'
    end
  end

  get '/login' do
    if !logged_in?
      erb :'/users/login'
    else
      redirect '/'
    end
  end

  post '/login' do
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/'
    else
      @message = "Username or Password is incorrect."
      erb :'users/login'
    end
  end

  get '/logout' do
    if logged_in?
      session.destroy
    end
    redirect '/'
  end
end


##### REMINDERS #####
# Look into passing @message through redirect, maybe switch to an alert
####/ REMINDERS #####
