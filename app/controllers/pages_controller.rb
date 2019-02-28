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
    @user = current_user
    @hikes_user = Hike.where(user_id: current_user)
    @favourites_user = Favourite.where(user_id: current_user)
    @reviews_user = Review.where(user_id: current_user)
  end
end
