class HikesController < ApplicationController
  before_action :set_hike, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
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
    @hike = Hike.find(params[:hike_id])
  end
end
