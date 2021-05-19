class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def new
    @restaurant = Restaurant.new(restaurant_param)
  end

  def create
    @restaurant = Restaurant.new(restaurant_param)
    @restaurant.save

    redirect_to restaurants_path
  end

  private

  def restaurant_param
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
