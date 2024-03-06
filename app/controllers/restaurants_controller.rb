class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show create]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    raise
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def show
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restarant).permit(:name, :adress, :phone_number, :category)
  end
end
