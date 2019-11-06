class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: @restaurant)
    # @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_permit)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def params_permit
    params.require("restaurant").params(:name, :address, :phone_number, :category)
  end
end
