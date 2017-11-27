class IngredientsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    Ingredient.create(ingredient_params)
    render 'show'
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    Ingredient.update(ingredient_params)
    redirect_to 'show'
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
