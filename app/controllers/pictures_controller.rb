class PicturesController < ApplicationController

  def create
  @picture = Picture.create(photo: params[:picture][:photo], hike_id: params[:hike_id])
  redirect_to hike_path(@picture.hike_id)
  end

  private

  def picture_params
    # params.require(:picture).permit(:photo, :hike_id)
  end

end
