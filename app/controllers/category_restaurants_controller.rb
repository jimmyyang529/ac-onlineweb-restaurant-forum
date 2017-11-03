class CategoryRestaurantsController < ApplicationController
  before_action :set_category

  def index
    @restaurants = @category.restaurants
  end

  def show
    @restaurant = @category.restaurants.find(params[:id])
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end
end
