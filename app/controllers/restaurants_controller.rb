class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  
  def index
    @restaurant = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new

  end

  def update
    restaurant_params[:restaurant][:category_ids] ||= []
    if @restaurant.update(restaurant_params)
      redirect_to restaurants_path
    else
      render :edit
    end
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.owner_id = current_user.id
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path   
  end

  def show
    @reservation = Reservation.new
  end

private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:id, :name, :description,
                  :address, :city, :zipcode, :state, :phone,
                  { :category_ids => []})
  end
end
