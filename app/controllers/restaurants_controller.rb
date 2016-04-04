class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def new
  	@restaurant = Restaurant.new
  end 

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      flash[:notice] = "Searching for restaurant..."
      redirect_to @restaurant
    else
    end
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  def edit 
	@restaurant = Restaurant.find(params[:id])
  end

  def update
  end

  def destroy
  end
  

  private

  def restaurant_params
    params.require(:restaurant).permit(:building, :street, :zipcode, :boro)
  end 








end
