class WishesController < ApplicationController

  def new
    @wish = Wish.new
  end

  def create
    @wish = Wish.new(wishes_params)
    @wish.user = current_user
    @user = current_user
    if @wish.save
      redirect_to users_profile_path, notice: 'Great you created a wish!'
    else
      redirect_to users_profile_path, alert: 'Your wish was not saved. Please try again'
    end
  end

  def destroy
    @wish = Wish.find(params[:id])
    @wish.destroy
    redirect_to users_profile_path
  end

  private

  def wishes_params
    params.require(:wish).permit(:description)
  end


end
