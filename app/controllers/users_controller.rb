class UsersController < ApplicationController
before_filter :authenticate_user!

  def index
    if current_user.role == "superadmin"
      @users = User.all
    else
      institution =
      @users = current_user.institution.users
    end

  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
		if (@user.update_attributes(user_params))
			flash[:notice] = "User has been updated."
			redirect_to users_path
		else
			flash[:alert] = "User has not been updated."
			render edit
		end
  end

private
	def user_params
    columns = User.strong_parameters
		params.require(:user)
		.permit(columns)
	end
end
