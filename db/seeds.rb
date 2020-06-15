# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cocktail.destroy_all
puts "Destroying cocktails"

violet_eyes = Cocktail.create({name: "Violet Eyes", directions: "Combine all ingredients in a mixing tin and shake with ice. Strain into a chilled coupe. Garnish with a dried, singed rose bud."})
manhattan = Cocktail.create({name: "Manhattan", directions: "Stir ingredients together in a glass until combined."})

puts "Creating cocktails"

Ingredient.destroy_all
puts "Destroying cocktails"

egg_white = Ingredient.create(name: "egg white")
whiskey = Ingredient.create(name: "whiskey")
curacao = Ingredient.create(name: "Curacao")
salt_tincture = Ingredient.create(name: "salt tincture")
violet_honey = Ingredient.create(name: "violet honey")
sweet_vermouth = Ingredient.create(name: "sweet vermouth")

puts "Creating ingredients"

CocktailIngredient.destroy_all
puts "Destroying cocktail ingredients"

CocktailIngredient.create({cocktail_id: violet_eyes.id, ingredient_id: violet_honey.id, ingredient_quantity: "0.5 oz", ingredient_notes: "1/2 cup fresh violet petals, rinsed and dried 1 cup honey 1/2 cup water. Combine all ingredients in a medium saucepan. Heat over medium heat until nearly boiling. Let cool, then bottle the honey in a covered container and allow it to infuse with the violets overnight. Strain the solids and store the syrup in a covered jar."})
CocktailIngredient.create({cocktail_id: violet_eyes.id, ingredient_id: egg_white.id, ingredient_quantity: "1"})
CocktailIngredient.create({cocktail_id: violet_eyes.id, ingredient_id: curacao.id, ingredient_quantity: "0.25 oz"})
CocktailIngredient.create({cocktail_id: violet_eyes.id, ingredient_id: salt_tincture.id, ingredient_quantity: "1 dash"})
CocktailIngredient.create({cocktail_id: manhattan.id, ingredient_id: whiskey.id, ingredient_quantity: "1 part"})
CocktailIngredient.create({cocktail_id: manhattan.id, ingredient_id: sweet_vermouth.id, ingredient_quantity: "1 part"})

puts "Creating cocktail ingredients"


