class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/tasks" do
    tasks = Task.all
    tasks.to_json
  end

  post "/tasks" do
    tasks = Task.create(params)
    tasks.to_json
  end

end
