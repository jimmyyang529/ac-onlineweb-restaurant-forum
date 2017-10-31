class CommentsController < ApplicationController
  before_action :find_restaurant
  before_action :find_comment, :only => [:edit, :update, :destroy]

  def create
    @comment = @restaurant.comments.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save!
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @comment.update(comment_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @comment.destroy
    redirect_to restaurant_path(@restaurant)
  end


  private

  def comment_params
    params[:comment].permit( :restaurant_id, :user_id, :comment_id, :comment)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end

end
