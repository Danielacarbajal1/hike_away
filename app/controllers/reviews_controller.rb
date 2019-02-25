class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to review_path
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
    @review.destroy
    redirect_to hike_path
  end

  private

  def review_params
    params.require(:review).permit(:stars, :user_id, :hike_id, :content, :integer)
  end
end
