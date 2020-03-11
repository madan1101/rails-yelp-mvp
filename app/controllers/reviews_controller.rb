class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def show
    @review = Review.find(params[:id])
    # GET /restaurants/:id
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    # GET /restaurants/new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    # GET /restaurants/:id/edit
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    # PATCH /restaurants/:id
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    # DELETE /restaurants/:id
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
