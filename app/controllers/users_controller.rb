class UsersController < ApplicationController
  before_action :authenticate_user!  #先檢查必須登入
  before_action :set_user, :only => [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
    @comments = @user.comments
    @favorites = @user.favorites
    @followings = @user.following
    @followers = @user.followers
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:firstname, :lastname, :introself, :file_location)
  end

end
