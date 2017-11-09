class Admin::CategoriesController < ApplicationController
  before_action :authenticate_user!  #先檢查是否登入
  before_action :authenticate_admin  #檢查有無管理者權限
  before_action :set_category, :only => [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path
      flash[:notice] = "category was successfully created"
      else
      render :new
      flash[:notice] = "category was failed to create"
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to admin_categories_path
      flash[:notice] = "category was successfully updated"
      else
      flash[:notice] = "category was failed to update"
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_categories_path
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
