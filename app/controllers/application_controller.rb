class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    user = User.all
    user.to_json
  end

  post "/tasks" do
    task = Task.create(
      name: params[:name],
      type: params[:type],
      date: params[:date]
    )
    task.to_json
  end

  get '/tasks' do
    task = Task.all
    task.to_json
  end
end
