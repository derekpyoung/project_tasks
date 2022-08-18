class UsersController < ApplicationController
  def index
    @users = User.all 
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def update
    u = User.find_by(id: params[:id])
    u.name = params[:name] || u.name 
    u.email = params[:email] || u.email
    u.password = params[:password] || u.password
    u.password_confirmation = params[:password_confirmation] || u.password_confirmation
    u.save 
  end

  def destroy
    u = User.find_by(id: params[:id])
    u.delete 
  end

  def create
    u = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    pp "shit"

    if u.save 
      redirect_to "/users"
    end 
  end
end
