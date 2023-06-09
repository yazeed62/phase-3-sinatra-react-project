class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    { message: "Welcome!" }.to_json
  end

  # Add your routes here
  get "/tasks" do
    tasks = Task.all
    tasks.to_json
  end
 get "/categories" do
    tasks = Category.all
    tasks.to_json(include: :tasks)
  end


  post "/tasks" do
    task = Task.create(
      title: params[:title],
      description: params[:description],
      completed: params[:completed],
       category_id: params[:categoryId]
    )

    if task
      task.to_json
    else
      { error: 'Failed to create task' }.to_json
    end
  end


  get "/tasks/:id" do
    task = Task.find(params[:id])
    task.to_json
  end

  patch "/tasks/:id" do
    task = Task.find(params[:id])
     if task.update(
         title: params[:title],
         description: params[:description],
         category_id: params[:category_id]
       )
      task.to_json
    else
      { error: 'Failed to update task' }.to_json
    end
  end

  patch "/tasks/:id/complete" do
       task = Task.find(params[:id])
       if task.update(completed: true)
        task.to_json
       else
        { error: 'failed to update task' }.to_json
       end
  end

  delete "/tasks/:id" do
    task = Task.find(params[:id])
    if task.destroy
      { message: 'Task deleted successfully' }.to_json
    else
      { error: 'Failed to delete task' }.to_json
    end
  end

end
