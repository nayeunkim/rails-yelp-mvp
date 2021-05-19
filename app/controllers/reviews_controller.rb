class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_param)
    @review.save

    redirect_to restaurants_path(restaurant)
  end

  private

  def review_param
    params.require(:review).permit(:rating, :content)
  end
end
