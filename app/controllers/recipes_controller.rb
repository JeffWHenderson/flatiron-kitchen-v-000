class RecipesController < ApplicationController
  def index
  end

  def show
    @ingredient = Ingredient.find(params[:id])
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
    raise params.inspect
    redirect_to 'show'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids: [], ingredients: :name) # ingredient_attributes [:name]
  end
end
