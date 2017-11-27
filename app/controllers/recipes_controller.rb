class RecipesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    redirect_to 'show'
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    redirect_to 'show'
  end
end
