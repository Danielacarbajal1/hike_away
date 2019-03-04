class HikesController < ApplicationController
  before_action :set_hike, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @hikes = Hike.where.not(latitude: nil, longitude: nil)
    if params[:query].present?
      hike_query = "name ILIKE :query OR description ILIKE :query"
      @hikes = Hike.where(hike_query, query: "%#{params[:query]}%")
    end
    @hikes = @hikes.where("category ILIKE :category", category: "%#{params[:category]}%") if params[:category].present?
    if params[:city].present? && params[:distance].present?
      @hikes = @hikes.near(params[:city], params[:distance].to_i.positive? ? params[:distance].to_i : 0)
    elsif params[:city].present?
      @hikes = @hikes.near(params[:city], 250)
    end
    @markers = @hikes.map do |hike|
      {
        lat: hike.latitude,
        lng: hike.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { hike: hike }),
        image_url: helpers.asset_url(hike.photo)
      }
    end
  end

  def show
    @favourite = Favourite.new
  end

  private

  def hike_params
    params.require(:hike).permit(:query, :distance, :photo, :city, :category, :categories_attributes => :name)
  end

  def set_hike
    @hike = Hike.find(params[:id])
  end

end
