class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  #has_and_belongs_to_many :ingredients

  validates :name, presence: true
end
