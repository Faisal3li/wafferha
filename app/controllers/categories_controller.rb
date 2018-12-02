class CategoriesController < ApplicationController
  def index
    @categories = Catergory.all
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
  end
end
