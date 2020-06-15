class Ingredient < ApplicationRecord
    has_many :cocktail_ingredients
    has_many :cocktails, though: :cocktail_ingredients
end
