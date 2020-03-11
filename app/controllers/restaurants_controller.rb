class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    # GET /restaurants/:id
  end

  def new
    @restaurant = Restaurant.new
    # GET /restaurants/new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
    # POST /restaurants
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    redirect_to restaurant_path
    # GET /restaurants/:id/edit
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path
    # PATCH /restaurants/:id
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurant_path
    # DELETE /restaurants/:id
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
