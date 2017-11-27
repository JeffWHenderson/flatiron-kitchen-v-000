class RecipesController < ApplicationController
  def index
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    raise params.inspect
    render 'show'
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    render 'show'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids: [], ingredients: :name) # ingredient_attributes [:name]
  end
end
