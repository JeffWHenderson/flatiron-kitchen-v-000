class IngredientsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    redirect_to 'show'
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    redirect_to 'show'
  end

  def ingredients_params
    params.require(:ingredient).permit(:name)
  end
end
