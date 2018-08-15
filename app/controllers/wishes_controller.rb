class WishesController < ApplicationController

  def new
    @wish = wish.new
  end

  def create
  @wish = Wish.new(wish_params)
    @wish.user = current_user
    @user = current_user
    if @wish.save
      render "users/show"
    else
      redirect_to "users/show"
    end
  end

  def destroy

  end


end
