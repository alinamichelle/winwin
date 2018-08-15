class UsersController < ApplicationController

  def index
    @users = User.all
  end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  name = params["user"]["name"]
  gender = params["gender"]
  location = params["user"]["location"]
  birthday = Date.new(params["user"]["birthday(1i)"].to_i, params["user"]["birthday(2i)"].to_i, params["user"]["birthday(3i)"].to_i)
  tagline = params["user"]["tagline"]
  biography = params["user"]["biography"]
  if @user.update(name: name, gender: gender, location: location, birthday: birthday, tagline: tagline, biography: biography)
    redirect_to @user
  else
    render :edit
  end
end

  def show
    if params[:id] == "id"
      @user = current_user
    else
      @user = User.find(params[:id])
    end
    # if user_signed_in?
    #   @user = current_user
    # end
  end

  private

  def strong_params_user
    params.require(:user).permit(:name, :birthday, :location, :tagline, :biography, :gender)
  end

end
