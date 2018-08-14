class ExpertisesController < ApplicationController

  def create
    @expertise = Expertise.find(params[:topic_id])
    @user = current_user
    if @expertise.save
      render "expertise/show"
    else
      redirect_to edit_user_path(@user)
    end
  end

  def update
    @expertise = Expertise.find(params[:id])
    @expertise.update(kitchen_params)
  end

  def destroy
    @expertise = Expertise.find(params[:id])
    @expertise.destroy
    redirect_to edit_user_path
  end

end
