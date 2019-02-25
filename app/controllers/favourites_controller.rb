class FavouritesController < ApplicationController
  def create
    @favorite = Favorite.new(favorite_params)
    @hike = Hike.find(params[:hike_id])
    @favorite.hike = @hike
    if @favorite.save
      redirect_to hike_path(@hike)
    else
      render :new
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to hike_path(@favorite.hike)
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :hike_id)
  end
end
