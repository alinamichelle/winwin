class SearchesController < ApplicationController
  def index

    if params[:search][:query].present? && params[:search][:qlocation].present?
      topic_ids = Topic.where("name ILIKE ?", "%#{params[:search][:query]}").pluck :id

      if topic_ids.empty?
        @results = User.where(location: "#{params[:search][:qlocation]}")

      else
        user_ids = User.includes(:expertises).where(location: "#{params[:search][:qlocation]}", expertises:{topic_id: topic_ids} ).pluck :id

        if user_ids.empty?
           @results = []
        else
          @results = User.where("id in (#{user_ids.join(",")})")
      end
    end

    elsif params[:search][:query].present?
      topic_ids = Topic.where("name ILIKE ?", "%#{params[:search][:query]}").pluck :id


      if topic_ids.empty?
        @results = []
      else
        user_ids = User.includes(:expertises).pluck :id
        @results = User.where("id in (#{user_ids.join(",")})")
      end

    elsif params[:search][:qlocation].present?
      @results = User.where(location: "#{params[:search][:qlocation]}")
    end

  end
end

