class SavesController < ApplicationController

    def create
      @save = Save.new
      @save.saved = Save.find(params[:id])
      @save.saver = current_user
      if @saved.save
        render "users/show"
      else
        redirect_to user_path(@user)
    end
  end
end
