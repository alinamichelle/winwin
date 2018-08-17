class SearchesController < ApplicationController
  def index
    if params[:search].present?
      topic_ids = Topic.where("name ILIKE ?", "%#{params[:query]}").pluck :id
      user_ids = Expertise.where("topic_id in (#{topic_ids.join(",")})").pluck :user_id
      @results = User.where("id in (#{user_ids.join(",")})")
    # else
    #   @users = User.all
    end
  end

  # private

  # def search_params
  #   params.require(:search).permit(:name)
  # end
end
