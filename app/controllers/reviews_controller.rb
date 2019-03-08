class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.hike = Hike.find(params[:hike_id])
    @review.user = current_user
    if @review.save!
      # binding.pry
      @hike = @review.hike
      @review = Review.new
      @picture = Picture.new
      @favourite = Favourite.new
      respond_to do |format|
        format.html { redirect_to hike_path(@review.hike) }
        format.js
      end
    else
      render :new
    end
  end

  def index
    @reviews = Review.all
  end

  def show
    @reviews = Review.find(params[:id])
  end

  def update
    @review.update(params[:review])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to page_path(current_user)
  end

  private

  def review_params
    params.require(:review).permit(:stars, :user_id, :hike_id, :content, :integer)
  end
end
