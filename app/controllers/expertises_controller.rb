class ExpertisesController < ApplicationController

  def create

    @expertise = Expertise.new(strong_params_expertise)
    @expertise.user = current_user
    @expertise.experience = params["experience"]
    if @expertise.save
      redirect_to users_profile_path
    else
      redirect_to edit_user_path(@user)
    end
  end

def new
  @expertise = Expetise.new
end

  def update
    @expertise = Expertise.find(params[:id])
    @expertise.update(strong_params_expertise)
  end

  def destroy
    @expertise = Expertise.find(params[:id])
    @expertise.destroy
    redirect_to edit_user_path
  end

  private

  def strong_params_expertise
    params.require(:expertise).permit(:topic_id, :experience)
  end

end
