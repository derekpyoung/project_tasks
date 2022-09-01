class ProjectsController < ApplicationController
  def index
    @projects = Project.all 
  end

  def show
    @project = Project.find_by(id: params[:id])

  end

  def new 
    pro = Project.new(
      title: params[:title],
      user_id: current_user.id
    )
    if pro.save 
      redirect_to "/"
    end 
  end 

  def update
    pro = Project.find_by(id: params[id])
    pro.title = params[:title] || pro.title 
    pro.user_id = params[:user_id] || pro.user_id
    pro.save 
  end

  def destroy
    pro = Project.find_by(id: params[:id])
    pro.delete 
  end

  def create
    pro = Project.new(
      title: params[:title],
      user_id: params[current_user.id]
    )
    if pro.save 
      redirect_to '/'
    end 
  end

end
