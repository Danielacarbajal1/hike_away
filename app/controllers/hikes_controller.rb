class HikesController < ApplicationController
  before_action :set_hike, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    session[:category] = params[:category] if params[:category].present?
    session[:city]     = params[:city] if params[:city].present?
    session[:distance] = params[:distance] if params[:distance].present?

    @favourite = Favourite.new
    @hikes = Hike.where.not(latitude: nil, longitude: nil)
    if session[:query].present?
      hike_query = "name ILIKE :query OR description ILIKE :query"
      @hikes = Hike.where(hike_query, query: "%#{session[:query]}%")
    end
    @hikes = @hikes.where("category ILIKE :category", category: "%#{session[:category]}%") if session[:category].present?
    if session[:city].present? && session[:distance].present?
      @hikes = @hikes.near(session[:city], session[:distance].to_i.positive? ? session[:distance].to_i : 0)
    elsif session[:city].present?
      @hikes = @hikes.near(session[:city], 250)
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
    @review = Review.new
    @picture = Picture.new
  end

  private

  def hike_params
    params.require(:hike).permit(:query, :distance, :photo, :city, :category, :picture, :categories_attributes => :name)
  end

  def set_hike
    @hike = Hike.find(params[:id])
  end

end
