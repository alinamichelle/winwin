class UsersController < ApplicationController
  def index
  end

  def show
    if user_signed_in?
      @user = current_user
    end

    @expertises = Expertise.all
    @wishlists = Wishlist.all
    @saves = Save.all
  end

end
