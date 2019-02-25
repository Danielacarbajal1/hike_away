class HikesController < ApplicationController
    before_action :set_hike, only: [:show]

  def index
    @hikes = Hikes.all
  end

  def show

  end

  private

  def set_hike
    @hike = Hike.find(params[:hike_id])
  end

end
