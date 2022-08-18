class TasksController < ApplicationController
  def index
    @tasks = Task.all 
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def edit
    pp "edit"
    id = params[:id]
    @task = Task.find_by(id: id)
    pp @task
    pp params[:due_date]
    @task.title = params[:title] || @task.title 
    @task.status = params[:status] || @task.status
    @task.due_date =  params[:due_date] 
    @task.user_id = @task.user_id 
    @task.project_id = @task.project_id
    pp @task 
    pp params[:title]
    pp params[:status]
    pp params[:due_date]
    @task.save 
 
  end
  

  def destroy
    t = Task.find_by(id: params[:id])
    t.delete 
  end

  def create
    t = Task.new(
      title: params[:title],
      status: params[:status],
      due_date: params[:due_date],
      user_id: current_user.id,
      project_id: params[:project_id],
    )
    
    t.save 
   
  end
end
