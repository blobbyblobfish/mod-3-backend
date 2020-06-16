class DeleteCocktailIngredientsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :cocktail_ingredients
  end
end
