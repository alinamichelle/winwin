class WishlistController < ApplicationController

  def create
    @wishlist = Wishlist.find(params[:wishlist_description])
    @user = current_user
    if @wishlist.save
      render "users/show"
    else
      redirect_to user_path(@user)
    end
  end

  def edit
    @wishlist = Wishlist.find(params[:id])
  end


  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
    redirect_to edit_user_path
  end

end
