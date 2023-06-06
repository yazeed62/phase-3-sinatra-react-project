class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/tasks" do
    tasks = Task.all
    tasks.to_json
  end

  post "/tasks" do
    tasks = Task.create(params)
    task.to_json
  end

  get "/tasks/:id" do
    tasks = Task.find(params[:id])
    task.to_json
  end

end
