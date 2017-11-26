class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :recipe_ingredients, :ingredient, :ingredient_id
    rename_column :recipe_ingredients, :recipe, :recipe_id
  end
end
