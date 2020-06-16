class CreateIngredients2 < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.belongs_to :cocktail, null: false, foreign_key: true
    end
  end
end
