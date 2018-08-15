class UsersController < ApplicationController

  def index
    @users = User.all
  end

def edit
  @user = User.find(params[:id])
  @wish = Wish.new
  @wish.user = @user
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

  def profile
    @user = current_user
    @wish = Wish.new
    @wish.user = @user
  end

  def show
    @wish = Wish.new
    @wish.user = @user
    if params[:id] == "id"
      @wish = Wish.new
      @wish.user = @user
      @user = current_user
    else
      @user = User.find(params[:id])
    end
  end

  private

  def strong_params_user
    params.require(:user).permit(:name, :birthday, :location, :tagline, :biography, :gender)
  end

end
