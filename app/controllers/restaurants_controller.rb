class RestaurantsController < ApplicationController
  before_action :set_res, only: [:show, :edit]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(res_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render:new
    end
  end

  def edit
  end

  def show
  end

  private

  def res_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def set_res
    @restaurant = Restaurant.find(params[:id])
  end

end
