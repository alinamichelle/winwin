class SavesController < ApplicationController

    def create
    @saved = Save.find(params[:user_id])
    @saver = current_user
    if @saved.save
      render "users/show"
    else
      redirect_to user_path(@user)
    end
  end
end
