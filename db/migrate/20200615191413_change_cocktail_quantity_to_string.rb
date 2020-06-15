class ChangeCocktailQuantityToString < ActiveRecord::Migration[6.0]
  def up
    change_column :cocktail_ingredients, :ingredient_quantity, :string
  end
  
  def down
    change_column :cocktail_ingredients, :ingredient_quantity, :integer
  end
end
