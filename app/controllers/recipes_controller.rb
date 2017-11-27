class RecipesController < ApplicationController
  def index
  end

  def show
    
  end

  def new
    @recipe = Recipe.new
  end

  def create

    render 'show'
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    redirect_to 'show'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name)
  end
end
