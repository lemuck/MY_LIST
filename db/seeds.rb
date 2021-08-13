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

### sec
choco = Ingredient.new(name: 'chocolate', unit: 'g', unit_price: 0.31, category: "sec")
choco.save
p choco.name

flour = Ingredient.new(name: 'flour', unit: 'g', unit_price: 0.0047, category:"sec")
flour.save
p flour.name

pate_a_tarte = Ingredient.create(name: "pate à tarte", unit: "g", unit_price: 1, category: "sec")
pate_a_tarte.save
p pate_a_tarte.name

semoule = Ingredient.create(name: "semoule", unit: "g", unit_price: 2, category: "sec")
semoule.save
p semoule.name

rice = Ingredient.create(name: "rice", unit: "g", unit_price: 1, category: "sec")
rice.save
p rice.name

egg = Ingredient.create(name: "egg", unit: "pc", unit_price: 0.1, category: "sec")
egg.save
p egg.name

sugar = Ingredient.new(name: "sugar", unit:"g", unit_price: 0.012, category: "sec")
sugar.save
p sugar.name

lasagne = Ingredient.new(name: "lasagne", unit:"feuille", unit_price: 0.01, category: "sec")
lasagne.save
p lasagne.name

### veg
carotte = Ingredient.create(name: "carotte", unit: "kg", unit_price: 3, category: "veg")
carotte.save
p carotte.name

courgette = Ingredient.create(name: "courgette", unit: "kg", unit_price: 2.3, category: "veg")
courgette.save
p courgette.name

onion = Ingredient.create(name: "onion", unit: "pc", unit_price: 0.3, category: "veg")
onion.save
p onion.name

tomato = Ingredient.new(name: "tomato", unit:"pc", unit_price: 0.5, category: "veg")
tomato.save
p tomato.name

courgette = Ingredient.new(name: "courgette", unit:"pc", unit_price: 0.5, category: "veg")
courgette.save
p courgette.name

italian_sausage = Ingredient.create(name: "italian Sausage", unit: "g", unit_price: 4, category: "meat")
italian_sausage.save
p italian_sausage.name

lean_ground_beef = Ingredient.create(name: "lean ground beef", unit: "g", unit_price: 6, category: "meat")
lean_ground_beef.save
p lean_ground_beef.name

## milk

butter = Ingredient.new(name: "butter", unit:"g", unit_price: 0.12, category: "milk")
butter.save
p butter.name

cheese = Ingredient.new(name: "cheese", unit:"g", unit_price: 1.3, category: "milk")
cheese.save
p cheese.name

fresh_cream = Ingredient.new(name: "fresh cream", unit:"g", unit_price: 0.4, category: "milk")
fresh_cream.save
p fresh_cream.name

### condiment

olive_oil = Ingredient.new(name: "olive oil", unit:"ml", unit_price: 0.7, category: "condiment")
olive_oil.save
p olive_oil.name

mustard = Ingredient.new(name: "mustard", unit:"teaspoon", unit_price: 0.01, category: "condiment")
mustard.save
p mustard.name

tomato_sauce = Ingredient.new(name: "tomato sauce", unit:"g", unit_price: 0.1, category: "sauce")
tomato_sauce.save
p tomato_sauce.name

##########  Chocolate cake
choco_cake = Recipe.new(name: 'Chocolate Cake', description: "Preheat your oven to 180°C (gas mark 6). In a saucepan, melt the chocolate and the butter cut into pieces over a very low heat.In a bowl, add the sugar, eggs and flour. Mix well.Add the chocolate/butter mixture. Mix well.Butter and flour your cake tin and pour in the cake batter.Bake for about 20 minutes.")
choco_cake.save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: choco.id, ingredient_quantity: 33.5).save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: flour.id, ingredient_quantity: 8.5).save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: sugar.id, ingredient_quantity: 16.5).save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: butter.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: egg.id, ingredient_quantity: 1).save
p choco_cake.name

######### Mimosa egg
mimosa_egg = Recipe.new(name: 'Mimosa egg', description: "Cook the eggs for 10 minutes in boiling water, then put them in cold water to stop the cooking process. Make a mayonnaise with 1 egg yolk, 1 teaspoon of mustard, 1/4 l of oil and lemon juice (optional), or use a ready-made mayonnaise sold in shops. Add the lemon juice at the last moment.Shell the eggs, cut them lengthwise, separate the whites from the yolks.In a soup plate, crumble the yolks with a fork, mix half of the crumbled yolks with the mayonnaise and reserve the rest.Fill the half-eggs with this preparation, then sprinkle each half-egg with the rest of the crumbled yolks (which makes the mimosa!!).")
mimosa_egg.save
IngredientRecipe.new(recipe_id: mimosa_egg.id, ingredient_id: olive_oil.id, ingredient_quantity: 62.5).save
IngredientRecipe.new(recipe_id: mimosa_egg.id, ingredient_id: egg.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: mimosa_egg.id, ingredient_id: mustard.id, ingredient_quantity: 0.25).save
p mimosa_egg.name


######Lasagne veg
lasagne_veg = Recipe.new(name: 'Lasagne vegetarian', description: "If you are using onions, fry them in a pan or wok until they melt.Chop the tomatoes, add them to the onions, then simmer with herbs de Provence (don't hesitate!), salt and pepper.Slice the courgettes and add them to the mixture.Add tomato sauce (or tomato purée, if you don't have one), and 1 teaspoon of caster sugar (more in winter, when the tomatoes are blander). Once the mixture is ready, pile it in a large dish: 1 layer of lasagne, 1 layer of preparation, 1 layer of béchamel sauce, 1 layer of Gruyère cheese, and so on (adding a little salt each time), putting a lot of Gruyère cheese on the last layer. Bake in a hot oven (thermostat 7-200°C) for 35 minutes.")
lasagne_veg.save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: lasagne.id, ingredient_quantity: 3).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: cheese.id, ingredient_quantity: 100).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: tomato.id, ingredient_quantity: 1.5).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: courgette.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: tomato_sauce.id, ingredient_quantity: 50).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: onion.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: fresh_cream.id, ingredient_quantity: 20).save
p lasagne_veg.name






#### recette a refaire

pasta_sausage = Recipe.new(name: 'Pasta with italian sausage', description: 'Removed casing from sausage links and cut into 1/2 inch slices. 
In a large skillet, brown sausage over medium heat for about 10 minutes; remove and set aside. 
In a large skillet, heat ground beef, olive oil, garlic and onion over medium heat until meat is nicely browned; drain. 
Pour in tomatoes and tomato sauce; mix in salt, ground black pepper, basil, oregano, bay leaf and cooked sausage. Simmer uncovered for 1 hour, stirring occasionally.
Bring a large pot of lightly salted water to a boil. Add pasta and cook for 8 to 10 minutes or until al dente; drain. Mix cooked sauce with hot pasta and remove bay leaf from sauce before serving.')
pasta_sausage.save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: italian_sausage.id, ingredient_quantity: 500).save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: lean_ground_beef.id, ingredient_quantity: 500).save
p pasta_sausage.name

egg_fried_rice = Recipe.new(name: 'Egg Fried Rice', person_number: 2, description: "Cook the rice following pack instructions, then drain, spread it out to steam-dry and set aside.
Heat 2 tbsp of the oil in a large wok over a high heat, then add the diced onion and fry until lightly browned. 
Add the rice, stir and toast for about 3 mins, then move to the side of the pan. Add the remaining oil, then tip in the egg mixture. 
Leave to cook a little, then mix in with the rice – stir vigorously to coat the grains. Tip into a serving bowl and scatter over the spring onion to serve.")
egg_fried_rice.save
IngredientRecipe.new(recipe_id: egg_fried_rice.id, ingredient_id: rice.id, ingredient_quantity: 250).save
IngredientRecipe.new(recipe_id: egg_fried_rice.id, ingredient_id: egg.id, ingredient_quantity: 2).save
IngredientRecipe.new(recipe_id: egg_fried_rice.id, ingredient_id: onion.id, ingredient_quantity: 1).save
p egg_fried_rice.name

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

# detailBasket1 = DetailBasket.new(ingredient_id: pate_a_tarte.id, basket_id: bobBasket.id)
# detailBasket1.save
# p detailBasket1


# DetailBasket.new(ingredient_recipe_id: ingredient_couscous1.id, basket_id: bobBasket.id).save
# p "1.."
# DetailBasket.new(ingredient_recipe_id: ingredient_couscous2.id, basket_id: bobBasket.id).save
# p "...2.."
# DetailBasket.new(ingredient_recipe_id: ingredient_couscous3.id, basket_id: bobBasket.id).save
# p "......3 detail_baskets done"
