class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @hikes = Hike.all
  end

  def index
    @favourites = @current_user.favourites
  end

  def profile
    @favourites = favourite.where(user_id: current_user)
  end

end
