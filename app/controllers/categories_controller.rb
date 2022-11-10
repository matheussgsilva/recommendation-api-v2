class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @categories = Category.find(params[:id])
  end

  def create
    category = Category.find_or_initialize_by(name: params[:id])
    if category.save
      render json: {}, status: 201
    else
      render json: { error: category.errors.full_messages.join(', ') }, status: 422
    end
  end

end