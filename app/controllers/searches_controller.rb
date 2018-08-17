class SearchesController < ApplicationController
  def index
    q1 = params.require(:query).permit(:query)
    if q1[:query].present?
      topic_ids = Topic.where(name: q1[:query]).pluck :id
      user_ids = Expertise.where("topic_id in (#{topic_ids.join(",")})").pluck :user_id
      @results = User.where("id in (#{user_ids.join(",")})")
      redirect_to search_path
    else
      @users = User.all
    end
  end
end
