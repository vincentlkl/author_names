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



end
