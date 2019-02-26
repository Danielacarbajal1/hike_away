class HikesController < ApplicationController
  before_action :set_hike, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]


    @hikes = Hike.where.not(latitude: nil, longitude: nil)
    if params[:query].present? || params[:category].present? || params[:city].present?
      hike_query = "name ILIKE :query OR description ILIKE :query"
      @hikes = Hike.where(hike_query, query: "%#{params[:query]}%")
      @hikes = @hikes.where("category ILIKE :category", category: "%#{params[:category]}%")
      @hikes = Hike.near(params[:city], params[:distance] || 10)
    else
      @hikes = Hike.all
    end
    @markers = @hikes.map do |hike|
      {
        lat: hike.latitude,
        lng: hike.longitude
      }
    end
  end

  def show
  end

  private

  def hike_params
    params.require(:hike).permit(:query, :distance, :photo, :city, :category, :categories_attributes => :name)
  end

  def set_hike
    @hike = Hike.find(params[:id])
  end
end
