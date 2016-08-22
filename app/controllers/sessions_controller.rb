class SessionsController < ApplicationController
  def new
  	@page_title = "Login"
  end

  def create
  	@page_title = "Login"
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
      remember user
      redirect_to user_path(user.id)
	else
		# Create an error message
		flash.now[:danger] = 'Invalid email/password combination'
		render 'new'
	end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
