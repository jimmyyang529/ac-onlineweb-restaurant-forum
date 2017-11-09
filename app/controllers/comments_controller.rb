class CommentsController < ApplicationController
  before_action :set_restaurant
  before_action :set_comment, :only => [:edit, :update, :destroy]

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
    params[:comment].permit(:restaurant_id, :user_id, :comment_id, :comment)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
