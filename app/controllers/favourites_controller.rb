class FavouritesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @favourite = Favourite.new
    @hike = Hike.find(params[:hike_id])
  end

  def create
    @favourite = Favourite.new
    @hike = Hike.find(params[:hike_id])
    @favourite.hike = @hike
    @favourite.user = current_user
    if @favourite.save
      redirect_to hike_path(@hike)
    else
      render :new
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to hike_path(@hike)
  end

  private

  def favourite_params
    params.require(:favourite).permit(:hike_id)
  end
end
