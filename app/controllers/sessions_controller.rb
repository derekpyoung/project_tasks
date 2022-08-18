class SessionsController < ApplicationController

  def new 
    render template: 'sessions/new'

  end 

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
       flash[:success] = "Successfully Logged In!"
      p "logged in"
      redirect_to '/'
    else
      # flash[:warning] = 'Invalid Username or Password'
      redirect_to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully Logged Out!' 
    p "logged out"
    redirect_to "/login"
  end
end


##### FINISH SESSIONS CURRENT USER
####  SET UP INPUT FORMS
###   SET UP VIEWS
##    FIGURE OUT DATE SCROLL
#     PAST DATES RED CELL. 
#     LINKS TO OTHER PAGES IF CURRENT USER
##    INDEX PROJECTS 
###