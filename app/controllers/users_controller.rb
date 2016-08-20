class UsersController < ApplicationController
  
  # GET /users/1
  # GET /users/1.json
  def show
  	@page_title = 'Admin'
  	@page_action = 'Show'
  end

	# GET /users/1/edit
  def edit
  	@page_title = 'Admin'
  	@page_action = 'Edit'
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
