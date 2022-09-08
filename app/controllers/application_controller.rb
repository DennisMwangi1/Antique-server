require "pry"
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes

  get '/users' do
    users = User.all
    users.to_json()

  end

  get '/workouts' do
    workout = Workout.all
    workout.to_json()
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

  patch '/workouts/:id' do
 
  workout = Workout.find(params[:id])
  workout.update(
    user_id:params[:user_id]
  )
    end


  get '/workouts/:id' do
    workout = Workout.find(params[:id])
    workout.to_json

  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json

  end

  get '/trainers/:id' do
    trainer = Trainer.find(params[:id])
    trainer.to_json
  end

  get '/trainers' do
    trainer = Trainer.all
    trainer.to_json
  end

  post '/sessions' do
  # binding.pry
  new_session=Session.create(
    trainer_name:params[:trainer_name],
    start_time:params[:start_time],
    finish_time:params[:finish_time],
    date:params[:date],
    user_id:params[:user_id],
    trainer_id:params[:trainer_id],
  )
  new_session.to_json
 
  end

  get '/sessions' do
  # binding.pry
    session = Session.all
    session.to_json
  end

    delete '/sessions/:id' do
    session = Session.find(params[:id])
    session.destroy
  end
  
end