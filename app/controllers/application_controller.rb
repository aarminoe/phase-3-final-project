class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/users" do
    user = User.all
    user.to_json(include: { tasks: { include: :updates }})
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json(include: { tasks: { include: :updates }})
  end

  post '/users/:id/tasks' do
    user = User.find(params[:id])
    tasks = user.tasks.create(
      name: params[:name],
      category: params[:category],
      date: params[:date],
      user_id: params[:user_id]
    )
    tasks.to_json(include: :updates)
  end

  # get '/users/:id/tasks' do
  #   user = User.find(params[:id])
  #   tasks = user.tasks.all 
  #   tasks.to_json(include: :updates)
  # end

  post '/users' do
    user = User.create(
      username: params[:username],
      password: params[:password],
      bio: params[:bio]
    )
    user.to_json
  end

  post '/users/:id/tasks/:taskid/updates' do
    user = User.find(params[:id])
    task = user.tasks.find(params[:taskid])
    update = task.updates.create(
      comment: params[:comment],
      task_id: params[:task_id]
    )
    update.to_json
  end

  # get '/users/:id/tasks/:taskid/updates' do
  #   user = User.find(params[:id])
  #   task = user.tasks.find(params[:taskid])
  #   update = task.updates.all
  #   update.to_json
  # end

  # get '/users/:id/tasks/:taskid' do
  #   user = User.find(params[:id])
  #   task = user.tasks.find(params[:taskid])
  #   update = user.updates.all
  #   task.to_json(include: :updates)
  # end

  delete '/users/:id/tasks/:taskid/updates/:updateid' do
    user = User.find(params[:id])
    task = user.tasks.find(params[:taskid])
    update = task.updates.find(params[:updateid])
    update.destroy
    update.to_json
  end


  delete '/users/:id/tasks/:taskid' do
    user = User.find(params[:id])
    task = user.tasks.find(params[:taskid])
    task.destroy
    task.to_json
  end

  patch '/users/:id/tasks/:taskid' do 
    user = User.find(params[:id])
    task = user.tasks.find(params[:taskid])
    task.update(
      name: params[:name],
      category: params[:category],
      date: params[:date]
    )
    task.to_json
  end

end
