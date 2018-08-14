class UsersController < ApplicationController

    def index
    @users = User.all
  end

  def show

    if user_signed_in?
      @user = current_user
    end

end
