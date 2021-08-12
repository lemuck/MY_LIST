


User.destroy_all
Basket.destroy_all
DetailBasket.destroy_all
IngredientRecipe.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

########## Users
bob = User.new(name: "Bobby", email: "bobby@bob.com", password: "azerty")
bob.save
p bob.name

bobBasket = Basket.new(user: bob)
bobBasket.save

john = User.new(name: "John", email: "John@bob.com", password: "azerty")
john.save
p john.name

########## Ingredients
choco = Ingredient.new(name: 'Chocolate', unit: 'g', unit_price: 2.3)
choco.save
p choco.name

flour = Ingredient.new(name: 'Flour', unit: 'g', unit_price: 1.3)
flour.save
p flour.name

carotte = Ingredient.create(name: "Carotte", unit: "kg", unit_price: 3, category: "legume")
carotte.save
p carotte.name

pate_a_tarte = Ingredient.create(name: "Pate à tarte", unit: "g", unit_price: 1, category: "patisserie")
pate_a_tarte.save
p pate_a_tarte.name

semoule = Ingredient.create(name: "Semoule", unit: "g", unit_price: 2, category: "sec")
semoule.save
p semoule.name

courgette = Ingredient.create(name: "Courgette", unit: "kg", unit_price: 2.3, category: "legume")
courgette.save
p courgette.name
italian_sausage = Ingredient.create(name: "Italian Sausage", unit: "kg", unit_price: 4, category: "meat")
italian_sausage.save
lean_ground_beef = Ingredient.create(name: "lean ground beef", unit: "kg", unit_price: 6, category: "meat")
lean_ground_beef.save

########## Recipe
choco_cake = Recipe.new(name: 'Chocolate Cake', description: "Add flour, sugar, cocoa, baking powder, baking soda, salt and espresso powder to a large bowl or the bowl of a stand mixer. Whisk through to combine or, using your paddle attachment, stir through flour mixture until combined well.
Add milk, vegetable oil, eggs, and vanilla to flour mixture and mix together on medium speed until well combined. Reduce speed and carefully add boiling water to the cake batter until well combined.
Distribute cake batter evenly between the two prepared cake pans. Bake for 30-35 minutes, until a toothpick or cake tester inserted in the center of the chocolate cake comes out clean.
Remove from the oven and allow to cool for about 10 minutes, remove from the pan and cool completely.")
choco_cake.save
# Line below does same thing as the next 2, (Tested and confirmed) - Dushyant
# choco_cake.ingredient_recipes << [IngredientRecipe.new(ingredient_id: choco.id, ingredient_quantity: 500),  IngredientRecipe.new(ingredient_id: flour.id, ingredient_quantity: 500)]
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: choco.id, ingredient_quantity: 500).save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: flour.id, ingredient_quantity: 500).save
p choco_cake.name
pasta_sausage = Recipe.new(name: 'Pasta with italian sausage', description: 'Removed casing from sausage links and cut into 1/2 inch slices. In a large skillet, brown sausage over medium heat for about 10 minutes; remove and set aside. In a large skillet, heat ground beef, olive oil, garlic and onion over medium heat until meat is nicely browned; drain. Pour in tomatoes and tomato sauce; mix in salt, ground black pepper, basil, oregano, bay leaf and cooked sausage. Simmer uncovered for 1 hour, stirring occasionally.Bring a large pot of lightly salted water to a boil. Add pasta and cook for 8 to 10 minutes or until al dente; drain. Mix cooked sauce with hot pasta and remove bay leaf from sauce before serving.
')
pasta_sausage.save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: italian_sausage.id, ingredient_quantity: 500).save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: lean_ground_beef.id, ingredient_quantity: 500).save
tarte_aux_carottes = Recipe.new(name: "Tarte aux carottes", description: "tarte avec des carottes")
tarte_aux_carottes.save

IngredientRecipe.new(recipe_id: tarte_aux_carottes.id, ingredient_id: carotte.id, ingredient_quantity: 0.7).save
IngredientRecipe.new(recipe_id: tarte_aux_carottes.id, ingredient_id: pate_a_tarte.id, ingredient_quantity: 400).save
p tarte_aux_carottes.name

couscous = Recipe.new(name: "Couscous", description: "Semoule de blé avec des carottes")
couscous.save

ingredient_couscous1 = IngredientRecipe.new(recipe_id: couscous.id, ingredient_id: carotte.id, ingredient_quantity: 0.7)
ingredient_couscous1.save
ingredient_couscous2 = IngredientRecipe.new(recipe_id: couscous.id, ingredient_id: courgette.id, ingredient_quantity: 1)
ingredient_couscous2.save
ingredient_couscous3 = IngredientRecipe.new(recipe_id: couscous.id, ingredient_id: semoule.id, ingredient_quantity: 300)
ingredient_couscous3.save
p couscous.name

########## Detail_Baskets
detailBasket1 = DetailBasket.new(ingredient_id: pate_a_tarte.id, basket_id: bobBasket.id)
detailBasket1.save
p detailBasket1

DetailBasket.new(ingredient_recipe_id: ingredient_couscous1.id, basket_id: bobBasket.id).save
p "1.."
DetailBasket.new(ingredient_recipe_id: ingredient_couscous2.id, basket_id: bobBasket.id).save
p "...2.."
DetailBasket.new(ingredient_recipe_id: ingredient_couscous3.id, basket_id: bobBasket.id).save
p "......3 detail_baskets done"
