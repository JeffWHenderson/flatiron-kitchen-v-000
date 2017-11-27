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
    raise params.inspect
    redirect_to 'show'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, ingredients: :name)
  end
end
{"utf8"=>"✓",
 "_method"=>"patch",
 "authenticity_token"=>"C1dWJYu4zYYIFyoELc0Ztbhp/PdZ2dJrlVBmQNxm4KKXOKqK5wXgt5/LNP3TSmQ+BQVKCkTTHgu5adQvKRb4sQ==",
 "recipe"=>{"name"=>"Blueberry Pancakes",
 "ingredient_ids"=>["1",
 "2",
 "3",
 "4",
 "5",
 "6",
 "7",
 "8",
 "9",
 "10",
 "11",
 "12",
 ""],
 "ingredients"=>{"name"=>"jelly"}},
 "commit"=>"Update Recipe",
 "id"=>"1"}
