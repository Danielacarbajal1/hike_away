class PicturesController < ApplicationController

  def create
  @picture = Picture.new(picture_params)
  @picture.hike = Hike.find(params[:hike_id])
  @picture.user = current_user

    if @picture.save!
      # binding.pry
      @hike = @picture.hike
      @review = Review.new
      @picture = Picture.new
      @favourite = Favourite.new
      respond_to do |format|
        format.html { redirect_to hike_path(@picture.hike.id) }
        format.js
      end
    else
      render :new
    end
  end

  def destroy
    @picture = Picture.find(params[:picture_id])
      @picture.destroy
      redirect_to page_path(current_user)
  end

  private

  def picture_params
    params.require(:picture).permit(:photo, :hike_id, :picture_id, :description)
  end

end
