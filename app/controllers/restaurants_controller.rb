class RestaurantsController < ApplicationController
  before_action :authenticate_user!  # 先檢查必須登入
  before_action :set_restaurant, :except => :index

	def index
  	@restaurants = Restaurant.page(params[:page]).per(10)
    @categories = Category.all
  end

  def show
  end

  # POST /restaurants/:id/favorite
  def favorite
    @restaurant = Restaurant.find(params[:id])
    @restaurant.favorites.create!(:user => current_user)
    redirect_back(fallback_location: root_path)
  end

  # POST /restaurants/:id/unfavorite
	def unfavorite
		@restaurant = Restaurant.find(params[:id])
    current_user.favorites.find_by(:restaurant_id => @restaurant.id).destroy
    redirect_back(fallback_location: root_path)
  end

   # GET /restaurants/ranking
  def ranking
    @restaurants = Restaurant.order(favorites_count: :desc).limit(10)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
