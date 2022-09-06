require "pry"
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes

  get '/users' do
    users = User.all
    users.to_json()

  end

  post '/users' do
    new_user=User.create(
      first_name:params[:first_name],
      last_name:params[:last_name],
      user_name:params[:user_name],
      email:params[:email],
      password:params[:password],
      gender:params[:gender],
      age:params[:age]
    )
    new_user.to_json
    
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
    # binding.pry

  end

  
end