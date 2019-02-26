class HikesController < ApplicationController
  before_action :set_hike, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    if params[:query].present? || params[:category].present?
      hike_query = "name ILIKE :query OR description ILIKE :query"
      @hikes = Hike.where(hike_query, query: "%#{params[:query]}%")
      @hikes = @hikes.where("category ILIKE :category", category: "%#{params[:category]}%")
    else
      @hikes = Hike.all
    end

    @hikes = Hike.where.not(latitude: nil, longitude: nil)

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
    params.require(:hike).permit(:query, :photo, :city, :category, :categories_attributes => :name)
  end

  def set_hike
    @hike = Hike.find(params[:id])
  end
end
