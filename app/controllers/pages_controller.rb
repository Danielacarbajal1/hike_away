class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @hikes = Hike.all
    @favourites = Favourite.all
    @reviews = Review.all
  end

  def index
    @hikes = @current_user.hikes
    @favourites = @current_user.favourites
    @reviews = @current_user.reviews
  end

  def show
    @user = User.find(params[:id])
    @pictures_user = Picture.where(user_id: @user)
    @hikes_user = Hike.where(user_id: @user)
    @favourites_user = Favourite.where(user_id: @user)
    @reviews_user = Review.where(user_id: @user)
  end
end
