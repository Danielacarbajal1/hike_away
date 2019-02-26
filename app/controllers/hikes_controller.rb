class HikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_hike, only: [:show]

  def index
    if params[:query].present? || params[:category].present?
      hike_query = "name ILIKE :query OR description ILIKE :query"
      @hikes = Hike.where(hike_query, query: "%#{params[:query]}%")
      @hikes = @hikes.where("category ILIKE :category", category: "%#{params[:category]}%")
    else
      @hikes = Hike.all
    end
  end

  def show
  end

  private

  def hike_params
    params.require(:hike).permit(:query, :photo, :city, :category, :categories_attributes => :name)
  end

  def set_hike
    @hike = Hike.find(params[:hike_id])
  end
end
