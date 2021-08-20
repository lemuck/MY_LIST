require "open-uri"
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

modo = User.new(name: "Modman", email: "modman@mod.com", password: "zxcvbn", moderator: true)
modo.save
p modo.name

bobby = User.new(name: "Bobby", email: "bobby@gmail.com", password:"azerty", moderator: true)
bobby.save

########## Ingredients

### dry
file = URI.open('https://images.pexels.com/photos/4791265/pexels-photo-4791265.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
choco = Ingredient.new(name: 'chocolate', unit: 'g', unit_price: 0.014, category: "dry")
choco.photo.attach(io: file, filename: 'choco.jpeg', content_type: 'image/jpeg')
choco.save
p choco.name

file = URI.open('https://images.pexels.com/photos/5765/flour-powder-wheat-jar.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flour = Ingredient.new(name: 'flour', unit: 'g', unit_price: 0.0037, category:"dry")
flour.photo.attach(io: file, filename: 'flour.jpeg', content_type: 'image/jpeg')
flour.save
p flour.name

file = URI.open('https://bakerpedia.com/wp-content/uploads/2019/06/yeast_baking-ingredients-e1561674265192-400x400.jpg')
yeast = Ingredient.new(name: 'yeast', unit: 'g', unit_price: 0.027, category:"dry")
yeast.photo.attach(io: file, filename: 'yeast.jpg', content_type: 'image/jpg')
yeast.save
p yeast.name

file = URI.open('https://images.pexels.com/photos/6605303/pexels-photo-6605303.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
pate_a_tarte = Ingredient.create(name: "pate à tarte", unit: "pc", unit_price: 1.46, category: "dry")
pate_a_tarte.photo.attach(io: file, filename: 'tarte.jpeg', content_type: 'image/jpeg')
pate_a_tarte.save
p pate_a_tarte.name


file = URI.open('https://resize-elle.ladmedia.fr/r/300,386,center-middle,forcey,ffffff/img/var/plain_site/storage/images/elle-a-table/recettes-de-cuisine/nikitouche-2066718/21651242-2-fre-FR/Nikitouche.jpg')
semoule = Ingredient.create(name: "semoule", unit: "g", unit_price: 0.0029, category: "dry")
semoule.photo.attach(io: file, filename: 'semoule.jpeg', content_type: 'image/jpeg')
semoule.save
p semoule.name

file = URI.open('https://images.pexels.com/photos/7421207/pexels-photo-7421207.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
rice = Ingredient.create(name: "rice", unit: "g", unit_price: 0.0023, category: "dry")
rice.photo.attach(io: file, filename: 'rice.jpeg', content_type: 'image/jpeg')
rice.save
p rice.name

file = URI.open('https://images.pexels.com/photos/2523659/pexels-photo-2523659.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
sugar = Ingredient.new(name: "sugar", unit:"g", unit_price: 0.0012, category: "dry")
sugar.photo.attach(io: file, filename: 'sugar.jpeg', content_type: 'image/jpeg')
sugar.save
p sugar.name

file = URI.open('https://happy-vrac.be/wp-content/uploads/2020/02/Happy-vrac-feuilles-de-lasagne.png')
lasagne = Ingredient.new(name: "lasagne", unit:"pc", unit_price: 0.08, category: "dry")
lasagne.photo.attach(io: file, filename: 'lasagne.png', content_type: 'image/png')
lasagne.save
p lasagne.name

file = URI.open('https://images.pexels.com/photos/6287348/pexels-photo-6287348.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
pasta = Ingredient.new(name: "Pasta", unit:"g", unit_price: 0.0017, category: "dry")
pasta.photo.attach(io: file, filename: 'pasta.jpeg', content_type: 'image/jpeg')
pasta.save
p pasta.name

file = URI.open('https://images.pexels.com/photos/1755785/pexels-photo-1755785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
bun = Ingredient.new(name: "bun", unit:"pc", unit_price: 0.7, category: "dry")
bun.photo.attach(io: file, filename: 'bun.jpeg', content_type: 'image/jpeg')
bun.save
p bun.name

file = URI.open('https://images.pexels.com/photos/8064383/pexels-photo-8064383.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
tortilla = Ingredient.new(name: "tortilla", unit:"pc", unit_price: 0.8, category: "dry")
tortilla.photo.attach(io: file, filename: 'tortilla.jpeg', content_type: 'image/jpeg')
tortilla.save
p tortilla.name

### vegetables

file = URI.open('https://images.pexels.com/photos/143133/pexels-photo-143133.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
carotte = Ingredient.create(name: "carotte", unit: "kg", unit_price: 1.8, category: "vegetables")
carotte.photo.attach(io: file, filename: 'carotte.jpeg', content_type: 'image/jpeg')
carotte.save
p carotte.name

file = URI.open('https://images.pexels.com/photos/4197445/pexels-photo-4197445.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
onion = Ingredient.create(name: "onion", unit: "pc", unit_price: 0.23, category: "vegetables")
onion.photo.attach(io: file, filename: 'onion.jpeg', content_type: 'image/jpeg')
onion.save
p onion.name

file = URI.open('https://images.pexels.com/photos/5945900/pexels-photo-5945900.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
tomato = Ingredient.new(name: "tomato", unit:"pc", unit_price: 0.52, category: "vegetables")
tomato.photo.attach(io: file, filename: 'tomato.jpeg', content_type: 'image/jpeg')
tomato.save
p tomato.name

file = URI.open('https://images.pexels.com/photos/128420/pexels-photo-128420.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
courgette = Ingredient.new(name: "courgette", unit:"pc", unit_price: 0.8, category: "vegetables")
courgette.photo.attach(io: file, filename: 'courgette.jpeg', content_type: 'image/jpeg')
courgette.save
p courgette.name

file = URI.open('https://images.pexels.com/photos/1199562/pexels-photo-1199562.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
lettuce = Ingredient.new(name: "lettuce", unit:"pc", unit_price: 0.99, category: "vegetables")
lettuce.photo.attach(io: file, filename: 'lettuce.jpeg', content_type: 'image/jpeg')
lettuce.save
p lettuce.name

file = URI.open('https://images.pexels.com/photos/5638332/pexels-photo-5638332.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
mushroom = Ingredient.new(name: "Mushroom", unit:"pc", unit_price: 0.12, category: "vegetables")
mushroom.photo.attach(io: file, filename: 'mushroom.jpeg', content_type: 'image/jpeg')
mushroom.save
p mushroom.name

file = URI.open('https://images.pexels.com/photos/3401479/pexels-photo-3401479.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
beans = Ingredient.new(name: "beans", unit:"can", unit_price: 1.4, category: "vegetables")
beans.photo.attach(io: file, filename: 'beans.jpeg', content_type: 'image/jpeg')
beans.save
p beans.name

file = URI.open('https://images.pexels.com/photos/128536/pexels-photo-128536.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
bell_pepper = Ingredient.new(name: "bell pepper", unit:"pc", unit_price: 0.9, category: "vegetables")
bell_pepper.photo.attach(io: file, filename: 'bell.jpeg', content_type: 'image/jpeg')
bell_pepper.save
p bell_pepper.name

##### fruits

file = URI.open('https://images.pexels.com/photos/3652898/pexels-photo-3652898.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
apple = Ingredient.new(name: "apple", unit:"pc", unit_price: 0.3, category: "fruits")
apple.photo.attach(io: file, filename: 'apple.jpeg', content_type: 'image/jpeg')
apple.save
p apple.name

file = URI.open('https://images.pexels.com/photos/23042/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=500')
grape = Ingredient.new(name: "grape", unit:"pc", unit_price: 0.6, category: "fruits")
grape.photo.attach(io: file, filename: 'grape.jpeg', content_type: 'image/jpeg')
grape.save
p grape.name

file = URI.open('https://images.pexels.com/photos/1093038/pexels-photo-1093038.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
banana = Ingredient.new(name: "banana", unit:"pc", unit_price: 0.3, category: "fruits")
banana.photo.attach(io: file, filename: 'banana.jpeg', content_type: 'image/jpeg')
banana.save
p banana.name

file = URI.open('https://images.pexels.com/photos/3734845/pexels-photo-3734845.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=500')
strawberry = Ingredient.new(name: "strawberry", unit:"pc", unit_price: 0.08, category: "fruits")
strawberry.photo.attach(io: file, filename: 'strawberry.jpeg', content_type: 'image/jpeg')
strawberry.save
p strawberry.name

file = URI.open('https://images.pexels.com/photos/2294471/pexels-photo-2294471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=500')
mango = Ingredient.new(name: "mango", unit:"pc", unit_price: 0.9, category: "fruits")
mango.photo.attach(io: file, filename: 'mango.jpeg', content_type: 'image/jpeg')
mango.save
p mango.name

file = URI.open('https://images.pexels.com/photos/7195273/pexels-photo-7195273.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
pineapple = Ingredient.new(name: "pineapple", unit:"pc", unit_price: 1.0, category: "fruits")
pineapple.photo.attach(io: file, filename: 'pineapple.jpeg', content_type: 'image/jpeg')
pineapple.save
p pineapple.name

##### meat

file = URI.open('https://images.pexels.com/photos/1857729/pexels-photo-1857729.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
italian_sausage = Ingredient.create(name: "italian Sausage", unit: "g", unit_price: 0.016, category: "meat")
italian_sausage.photo.attach(io: file, filename: 'choco.jpeg', content_type: 'image/jpeg')
italian_sausage.save
p italian_sausage.name

file = URI.open('https://i5.walmartimages.com/asr/c488097d-cd02-491d-9ba1-06414593dad5_3.86f74d35f449351329d6723151047398.jpeg')
lean_ground_beef = Ingredient.create(name: "lean ground beef", unit: "g", unit_price: 0.02, category: "meat")
lean_ground_beef.photo.attach(io: file, filename: 'lean.jpeg', content_type: 'image/jpeg')
lean_ground_beef.save
p lean_ground_beef.name

file = URI.open('https://shop.selectfoodsshoppe.com/images/thumbs/0010468_dautore-beef-peperoni-halal_510.jpeg')
pepperoni = Ingredient.create(name: "pepperoni", unit: "g", unit_price: 0.09, category: "meat")
pepperoni.photo.attach(io: file, filename: 'pepperoni.jpeg', content_type: 'image/jpeg')
pepperoni.save
p pepperoni.name

file = URI.open('https://images.pexels.com/photos/5769384/pexels-photo-5769384.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
chicken = Ingredient.create(name: "chicken", unit: "kg", unit_price: 11.5, category: "meat")
chicken.photo.attach(io: file, filename: 'chicken.jpeg', content_type: 'image/jpeg')
chicken.save
p chicken.name

##### seafood

file = URI.open('https://images.pexels.com/photos/1483780/pexels-photo-1483780.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
shrimp = Ingredient.create(name: "shrimp", unit: "g", unit_price: 0.025, category: "seafood")
shrimp.photo.attach(io: file, filename: 'shrimp.jpeg', content_type: 'image/jpeg')
shrimp.save
p shrimp.name

file = URI.open('https://images.pexels.com/photos/3731945/pexels-photo-3731945.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
fish = Ingredient.create(name: "fish", unit: "pc", unit_price: 23, category: "seafood")
fish.photo.attach(io: file, filename: 'fish.jpeg', content_type: 'image/jpeg')
fish.save
p fish.name

## dairy milk

file = URI.open('https://images.pexels.com/photos/6294256/pexels-photo-6294256.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
egg = Ingredient.create(name: "egg", unit: "pc", unit_price: 0.23, category: "dairy milk")
egg.photo.attach(io: file, filename: 'egg.jpeg', content_type: 'image/jpeg')
egg.save
p egg.name

file = URI.open('https://i.ndtvimg.com/i/2016-03/butter_625x350_61459326043.jpg')
butter = Ingredient.new(name: "butter", unit:"g", unit_price: 0.011, category: "dairy milk")
butter.photo.attach(io: file, filename: 'butter.jpg', content_type: 'image/jpg')
butter.save
p butter.name

file = URI.open('https://www.livewellbakeoften.com/wp-content/uploads/2019/01/How-To-Make-Buttermilk-7.jpg')
buttermilk = Ingredient.new(name: "buttermilk", unit:"ml", unit_price: 0.002, category: "dairy milk")
buttermilk.photo.attach(io: file, filename: 'buttermilk.jpg', content_type: 'image/jpg')
buttermilk.save
p buttermilk.name

file = URI.open('https://images.pexels.com/photos/248413/pexels-photo-248413.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
cheese = Ingredient.new(name: "cheese", unit:"g", unit_price: 0.015, category: "dairy milk")
cheese.photo.attach(io: file, filename: 'cheese.jpeg', content_type: 'image/jpeg')
cheese.save
p cheese.name

file = URI.open('https://m.tarladalal.com/glossary/ing/Fresh-creamDSC_7679.jpg')
fresh_cream = Ingredient.new(name: "fresh cream", unit:"g", unit_price: 0.004, category: "dairy milk")
fresh_cream.photo.attach(io: file, filename: 'cream.jpg', content_type: 'image/jpg')
fresh_cream.save
p fresh_cream.name

### condiment

file = URI.open('https://images.pexels.com/photos/8504692/pexels-photo-8504692.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
olive_oil = Ingredient.new(name: "olive oil", unit:"ml", unit_price: 0.008, category: "condiment")
olive_oil.photo.attach(io: file, filename: 'olive.jpeg', content_type: 'image/jpeg')
.save
p olive_oil.name

file = URI.open('https://images.pexels.com/photos/1435901/pexels-photo-1435901.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
mustard = Ingredient.new(name: "mustard", unit:"tsp", unit_price: 0.005, category: "condiment")
mustard.photo.attach(io: file, filename: 'choco.jpeg', content_type: 'image/jpeg')
mustard.save
p mustard.name

file = URI.open('https://produits.bienmanger.com/14077-0w0h0_The_Original_Worcestershire_Sauce.jpg')
worcestershire = Ingredient.new(name: "sauce worcestershire", unit:"ml", unit_price: 0.012, category: "condiment")
worcestershire.photo.attach(io: file, filename: 'worstershire.jpg', content_type: 'image/jpg')
worcestershire.save
p worcestershire.name

file = URI.open('https://m.media-amazon.com/images/I/71b0CQV4SFS._SX425_.jpg')
ketchup = Ingredient.new(name: "ketchup", unit:"ml", unit_price: 0.004, category: "condiment")
ketchup.photo.attach(io: file, filename: 'ketchup.jpg', content_type: 'image/jpg')
ketchup.save
p ketchup.name

file = URI.open('https://images.pexels.com/photos/6941017/pexels-photo-6941017.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=500')
chili_sauce = Ingredient.new(name: "chili sauce", unit:"ml", unit_price: 0.004, category: "condiment")
chili_sauce.photo.attach(io: file, filename: 'chili_sauce.jpg', content_type: 'image/jpg')
chili_sauce.save
p chili_sauce.name

#### sauce

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Fresh_Tomato_Sauce_%28Unsplash%29.jpg/375px-Fresh_Tomato_Sauce_%28Unsplash%29.jpg')
tomato_sauce = Ingredient.new(name: "tomato sauce", unit:"g", unit_price: 0.004, category: "sauce")
tomato_sauce.photo.attach(io: file, filename: 'tomatosauce.jpg', content_type: 'image/jpg')
tomato_sauce.save
p tomato_sauce.name

#### spice

file = URI.open('https://images.pexels.com/photos/1087902/pexels-photo-1087902.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
basil = Ingredient.new(name: "Basil", unit:"leaves", unit_price: 0.08, category: "spices")
basil.photo.attach(io: file, filename: 'basil.jpeg', content_type: 'image/jpeg')
basil.save
p basil.name

#### drinks

file = URI.open('https://images.pexels.com/photos/416528/pexels-photo-416528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
water_half = Ingredient.new(name: "Water 0.5L", unit:"L", unit_price: 0.27, category: "drinks")
water_half.photo.attach(io: file, filename: 'water.jpeg', content_type: 'image/jpeg')
water_half.save
p water_half.name

file = URI.open('https://images.pexels.com/photos/416528/pexels-photo-416528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
water_one = Ingredient.new(name: "Water 1L", unit:"L", unit_price: 0.37, category: "drinks")
water_one.photo.attach(io: file, filename: 'water.jpeg', content_type: 'image/jpeg')
water_one.save
p water_one.name

file = URI.open('https://phoenixbev.mu/userimages/productdetails_451_1537337013.jpg')
sparkling_water = Ingredient.new(name: "Sparkling Water 1L", unit:"L", unit_price: 0.59, category: "drinks")
sparkling_water.photo.attach(io: file, filename: 'sparkling.jpg', content_type: 'image/jpg')
sparkling_water.save
p sparkling_water.name

file = URI.open('https://halalfs.com/1-large_default/coca-cola-24-x-33-cl.jpg')
cola_half = Ingredient.new(name: "Cola 0.5L", unit:"L", unit_price: 0.75, category: "drinks")
cola_half.photo.attach(io: file, filename: 'cola.jpg', content_type: 'image/jpg')
cola_half.save
p cola_half.name

file = URI.open('https://halalfs.com/1-large_default/coca-cola-24-x-33-cl.jpg')
cola_one = Ingredient.new(name: "Cola 1L", unit:"L", unit_price: 1.23, category: "drinks")
cola_one.photo.attach(io: file, filename: 'cola.jpg', content_type: 'image/jpg')
cola_one.save
p cola_one.name

file = URI.open('https://www.indianhealthyrecipes.com/wp-content/uploads/2017/03/homemade-apple-juice-recipe-500x447.jpg')
juice_apple = Ingredient.new(name: "Apple Juice 1.5L", unit:"L", unit_price: 1.4, category: "drinks")
juice_apple.photo.attach(io: file, filename: 'applejuice.jpg', content_type: 'image/jpg')
juice_apple.save
p juice_apple.name

file = URI.open('https://m.media-amazon.com/images/I/519Lte818hS._AC_SY580_.jpg')
blue_bull = Ingredient.new(name: "Blue Bull Energy Drink 0.35", unit:"L", unit_price: 3.85, category: "drinks")
blue_bull.photo.attach(io: file, filename: 'blue.jpg', content_type: 'image/jpg')
blue_bull.save
p blue_bull.name

###### Chocolate cake
file = URI.open('https://images.pexels.com/photos/3740196/pexels-photo-3740196.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
choco_cake = Recipe.new(name: 'Chocolate Cake', description: "Preheat your oven to 180°C (gas mark 6). In a saucepan, melt the chocolate and the butter cut into pieces over a very low heat.In a bowl, add the sugar, eggs and flour. Mix well.Add the chocolate/butter mixture. Mix well.Butter and flour your cake tin and pour in the cake batter.Bake for about 20 minutes.")
choco_cake.photo.attach(io: file, filename: 'cake.jpeg', content_type: 'image/jpeg')
choco_cake.save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: choco.id, ingredient_quantity: 33.5).save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: flour.id, ingredient_quantity: 100).save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: sugar.id, ingredient_quantity: 16.5).save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: butter.id, ingredient_quantity: 30).save
IngredientRecipe.new(recipe_id: choco_cake.id, ingredient_id: egg.id, ingredient_quantity: 1).save
p choco_cake.name

##### Mimosa egg
file = URI.open('https://media.foodnetwork.ca/recipetracker/dmm/M/I/Mimosa_Eggs_001.jpg')
mimosa_egg = Recipe.new(name: 'Mimosa Egg', description: "Cook the eggs for 10 minutes in boiling water, then put them in cold water to stop the cooking process. Make a mayonnaise with 1 egg yolk, 1 teaspoon of mustard, 1/4 l of oil and lemon juice (optional), or use a ready-made mayonnaise sold in shops. Add the lemon juice at the last moment.Shell the eggs, cut them lengthwise, separate the whites from the yolks.In a soup plate, crumble the yolks with a fork, mix half of the crumbled yolks with the mayonnaise and reserve the rest.Fill the half-eggs with this preparation, then sprinkle each half-egg with the rest of the crumbled yolks (which makes the mimosa!!).")
mimosa_egg.photo.attach(io: file, filename: 'mimosa_egg.jpg', content_type: 'image/jpg')
mimosa_egg.save
IngredientRecipe.new(recipe_id: mimosa_egg.id, ingredient_id: olive_oil.id, ingredient_quantity: 62.5).save
IngredientRecipe.new(recipe_id: mimosa_egg.id, ingredient_id: egg.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: mimosa_egg.id, ingredient_id: mustard.id, ingredient_quantity: 0.25).save
p mimosa_egg.name

##### Lasagne veg
file = URI.open('https://images.pexels.com/photos/2765875/pexels-photo-2765875.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
lasagne_veg = Recipe.new(name: 'Lasagne vegetarian', description: "If you are using onions, fry them in a pan or wok until they melt.Chop the tomatoes, add them to the onions, then simmer with herbs de Provence (don't hesitate!), salt and pepper.Slice the courgettes and add them to the mixture.Add tomato sauce (or tomato purée, if you don't have one), and 1 teaspoon of caster sugar (more in winter, when the tomatoes are blander). Once the mixture is ready, pile it in a large dish: 1 layer of lasagne, 1 layer of preparation, 1 layer of béchamel sauce, 1 layer of Gruyère cheese, and so on (adding a little salt each time), putting a lot of Gruyère cheese on the last layer. Bake in a hot oven (thermostat 7-200°C) for 35 minutes.")
lasagne_veg.photo.attach(io: file, filename: 'lasagne.jpeg', content_type: 'image/jpeg')
lasagne_veg.save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: lasagne.id, ingredient_quantity: 3).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: cheese.id, ingredient_quantity: 100).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: tomato.id, ingredient_quantity: 1.5).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: courgette.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: tomato_sauce.id, ingredient_quantity: 50).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: onion.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: lasagne_veg.id, ingredient_id: fresh_cream.id, ingredient_quantity: 20).save
p lasagne_veg.name

##### Pasta Sausage
file = URI.open('https://images.pexels.com/photos/5710170/pexels-photo-5710170.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
pasta_sausage = Recipe.new(name: 'Pasta carbonara', person_number: 3, description: 'Removed casing from sausage links and cut into 1/2 inch slices.
In a large skillet, brown sausage over medium heat for about 10 minutes; remove and set aside.
In a large skillet, heat ground beef, olive oil, garlic and onion over medium heat until meat is nicely browned; drain.
Pour in tomatoes and tomato sauce; mix in salt, ground black pepper, basil, oregano, bay leaf and cooked sausage. Simmer uncovered for 1 hour, stirring occasionally.
Bring a large pot of lightly salted water to a boil. Add pasta and cook for 8 to 10 minutes or until al dente; drain. Mix cooked sauce with hot pasta and remove bay leaf from sauce before serving.')
pasta_sausage.photo.attach(io: file, filename: 'pasta.jpeg', content_type: 'image/jpeg')
pasta_sausage.save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: italian_sausage.id, ingredient_quantity: 300).save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: lean_ground_beef.id, ingredient_quantity: 300).save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: olive_oil.id, ingredient_quantity: 10).save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: onion.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: tomato.id, ingredient_quantity: 2).save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: tomato_sauce.id, ingredient_quantity: 200).save
IngredientRecipe.new(recipe_id: pasta_sausage.id, ingredient_id: pasta.id, ingredient_quantity: 300).save
p pasta_sausage.name

##### Egg fried rice
file = URI.open('https://images.pexels.com/photos/6937447/pexels-photo-6937447.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
egg_fried_rice = Recipe.new(name: 'Egg Fried Rice', person_number: 2, description: "Cook the rice following pack instructions, then drain, spread it out to steam-dry and set aside.
Heat 2 tbsp of the oil in a large wok over a high heat, then add the diced onion and fry until lightly browned.
Add the rice, stir and toast for about 3 mins, then move to the side of the pan. Add the remaining oil, then tip in the egg mixture.
Leave to cook a little, then mix in with the rice – stir vigorously to coat the grains. Tip into a serving bowl and scatter over the spring onion to serve.")
egg_fried_rice.photo.attach(io: file, filename: 'rice.jpeg', content_type: 'image/jpeg')
egg_fried_rice.save
IngredientRecipe.new(recipe_id: egg_fried_rice.id, ingredient_id: rice.id, ingredient_quantity: 250).save
IngredientRecipe.new(recipe_id: egg_fried_rice.id, ingredient_id: egg.id, ingredient_quantity: 4).save
IngredientRecipe.new(recipe_id: egg_fried_rice.id, ingredient_id: onion.id, ingredient_quantity: 1).save
p egg_fried_rice.name

##### Tarte au carottes
file = URI.open('https://images.pexels.com/photos/4993114/pexels-photo-4993114.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
tarte_aux_carottes = Recipe.new(name: "Carrot Tart", person_number: 4, description: "Mettez les carottes dans la pate à tarte. Cuisinez au fours pour 60min á 180. Mangez le truc.")
tarte_aux_carottes.photo.attach(io: file, filename: 'tarte.jpeg', content_type: 'image/jpeg')
tarte_aux_carottes.save
IngredientRecipe.new(recipe_id: tarte_aux_carottes.id, ingredient_id: carotte.id, ingredient_quantity: 0.7).save
IngredientRecipe.new(recipe_id: tarte_aux_carottes.id, ingredient_id: pate_a_tarte.id, ingredient_quantity: 400).save
p tarte_aux_carottes.name

##### Fried Chicken
file = URI.open('https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=500')
fried_chicken = Recipe.new(name: "Fried Chicken", person_number: 2, description: "Place the chicken pieces in a container, cover with the buttermilk and refrigerate for 12 hours.Preheat the oven to 180C/160C Fan/Gas 4.
Mix together the flours with the dried spices and herbs on a large plate. Remove the chicken from the buttermilk and shake off as much of the buttermilk as possible. Roll the chicken pieces around in the dry mix until coated.
Heat a large frying pan over a medium-low heat and add a glug of oil. Fry 2-3 pieces of chicken at a time (do not crowd the pan) until golden-brown all over and cooked through. When cooked, drain the chicken on kitchen paper and then transfer to a roasting tin.
Put the chicken pieces in the oven until the coating is crunchy rather than crisp (up to 15 minutes).Serve in a basket.")
fried_chicken.photo.attach(io: file, filename: 'fried_chicken.jpeg', content_type: 'image/jpeg')
fried_chicken.save
IngredientRecipe.new(recipe_id: fried_chicken.id, ingredient_id: chicken.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: fried_chicken.id, ingredient_id: flour.id, ingredient_quantity: 200).save
IngredientRecipe.new(recipe_id: fried_chicken.id, ingredient_id: buttermilk.id, ingredient_quantity: 100).save
p fried_chicken.name

##### Hamburger
file = URI.open('https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=500&w=500')
hamburger = Recipe.new(name: "Hamburger", person_number: 1, description: "Add 80% lean ground beef to a large bowl.Add Worcestershire sauce, seasoning salt, garlic powder, and pepper. Use your hands to form 4 hamburger patties 3/4 inch thick.Use your thumbs to make an indention in the middle of the patties.Grill over medium-high heat for about 4 minutes on each side.
Serve on hamburger buns.Top with your favorite traditional burger toppings (lettuce, tomato, onion, pickles, ketchup, etc.)")
hamburger.photo.attach(io: file, filename: 'hamburger.jpeg', content_type: 'image/jpeg')
hamburger.save
IngredientRecipe.new(recipe_id: hamburger.id, ingredient_id: lean_ground_beef.id, ingredient_quantity: 200).save
IngredientRecipe.new(recipe_id: hamburger.id, ingredient_id: worcestershire.id, ingredient_quantity: 3).save
IngredientRecipe.new(recipe_id: hamburger.id, ingredient_id: bun.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: hamburger.id, ingredient_id: onion.id, ingredient_quantity: 0.5).save
IngredientRecipe.new(recipe_id: hamburger.id, ingredient_id: tomato.id, ingredient_quantity: 0.5).save
IngredientRecipe.new(recipe_id: hamburger.id, ingredient_id: lettuce.id, ingredient_quantity: 1).save
p hamburger.name

##### pizza pepperoni
file = URI.open('https://images.pexels.com/photos/3682837/pexels-photo-3682837.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=500&w=500')
pizza_pepperoni = Recipe.new(name: "Pizza Pepperoni", person_number: 2, description: "For sauce: Combine all sauce ingredients with 1/2 cup water in a medium bowl; set aside for flavors to develop while making crust. Freeze remaining paste.
For crusts: Combine 2 cups of flour with the dry yeast, sugar and salt. Add the water and oil and mix until well blended (about 1 minute). Gradually add enough remaining flour slowly, until a soft, sticky dough ball is formed. Knead for about 4 minutes, on a floured surface, until dough is smooth and elastic. Add more flour, if needed. (If using RapidRise® Yeast, let dough rest, covered, for 10 minutes.)
Divide dough in half. Pat each half (with floured hands) into a 12-inch greased pizza pan OR roll dough to fit pans. For pizzas: Preheat oven to 425 degrees F. Top crusts with sauce, pepperoni and cheese. Bake for 18 to 20 minutes until crusts are browned and cheese is bubbly. For best results, rotate pizza pans between top and bottom oven racks halfway through baking.")
pizza_pepperoni.photo.attach(io: file, filename: 'pizza_pepperoni.jpeg', content_type: 'image/jpeg')
pizza_pepperoni.save
IngredientRecipe.new(recipe_id: pizza_pepperoni.id, ingredient_id: flour.id, ingredient_quantity: 200).save
IngredientRecipe.new(recipe_id: pizza_pepperoni.id, ingredient_id: yeast.id, ingredient_quantity: 5).save
IngredientRecipe.new(recipe_id: pizza_pepperoni.id, ingredient_id: olive_oil.id, ingredient_quantity: 30).save
IngredientRecipe.new(recipe_id: pizza_pepperoni.id, ingredient_id: tomato_sauce.id, ingredient_quantity: 90).save
IngredientRecipe.new(recipe_id: pizza_pepperoni.id, ingredient_id: cheese.id, ingredient_quantity: 70).save
IngredientRecipe.new(recipe_id: pizza_pepperoni.id, ingredient_id: pepperoni.id, ingredient_quantity: 60).save
p pizza_pepperoni.name

##### pizza margherita
file = URI.open('https://images.pexels.com/photos/7912401/pexels-photo-7912401.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=500')
pizza_margherita = Recipe.new(name: "Pizza Margherita", person_number: 1, description: "For sauce: Combine all sauce ingredients with 1/2 cup water in a medium bowl; set aside for flavors to develop while making crust. Freeze remaining paste. For crusts: Combine 2 cups of flour with the dry yeast, sugar and salt. Add the water and oil and mix until well blended (about 1 minute). Gradually add enough remaining flour slowly, until a soft, sticky dough ball is formed.
Knead for about 4 minutes, on a floured surface, until dough is smooth and elastic. Add more flour, if needed. Divide dough in half. Pat each half (with floured hands) into a 12-inch greased pizza pan OR roll dough to fit pans. For pizzas: Preheat oven to 425 degrees F. Top crusts with sauce and cheese.
Bake for 18 to 20 minutes until crusts are browned and cheese is bubbly. For best results, rotate pizza pans between top and bottom oven racks halfway through baking.")
pizza_margherita.photo.attach(io: file, filename: 'pizza_margherita.jpeg', content_type: 'image/jpeg')
pizza_margherita.save
IngredientRecipe.new(recipe_id: pizza_margherita.id, ingredient_id: flour.id, ingredient_quantity: 200).save
IngredientRecipe.new(recipe_id: pizza_margherita.id, ingredient_id: yeast.id, ingredient_quantity: 5).save
IngredientRecipe.new(recipe_id: pizza_margherita.id, ingredient_id: olive_oil.id, ingredient_quantity: 30).save
IngredientRecipe.new(recipe_id: pizza_margherita.id, ingredient_id: tomato_sauce.id, ingredient_quantity: 90).save
IngredientRecipe.new(recipe_id: pizza_margherita.id, ingredient_id: cheese.id, ingredient_quantity: 70).save
IngredientRecipe.new(recipe_id: pizza_margherita.id, ingredient_id: basil.id, ingredient_quantity: 10).save
p pizza_margherita.name

###### Carrot cake
file = URI.open('https://images.pexels.com/photos/2612373/pexels-photo-2612373.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=500&w=500')
carrot_cake = Recipe.new(name: 'Carrot Cake',person_number: 5, description: "Preheat oven to 350 degrees F (175 degrees C). Grease and flour an 8x12 inch pan. In a medium bowl, sift together flour, baking soda, salt and cinnamon. Set aside. In a large bowl, combine eggs, buttermilk, oil, sugar and vanilla. Mix well. Add flour mixture and mix well.
In a medium bowl, combine shredded carrots, coconut, walnuts, pineapple and raisins. Using a large wooden spoon or a very heavy whisk, add carrot mixture to batter and fold in well. Pour into prepared 8x12 inch pan, and bake at 350 degrees F (175 degrees C) for 1 hour. Check with toothpick. Allow to cool for at least 20 minutes before serving.")
carrot_cake.photo.attach(io: file, filename: 'carrot_cake.jpeg', content_type: 'image/jpeg')
carrot_cake.save
IngredientRecipe.new(recipe_id: carrot_cake.id, ingredient_id: carotte.id, ingredient_quantity: 0.6).save
IngredientRecipe.new(recipe_id: carrot_cake.id, ingredient_id: flour.id, ingredient_quantity: 600).save
IngredientRecipe.new(recipe_id: carrot_cake.id, ingredient_id: sugar.id, ingredient_quantity: 100).save
IngredientRecipe.new(recipe_id: carrot_cake.id, ingredient_id: butter.id, ingredient_quantity: 30).save
IngredientRecipe.new(recipe_id: carrot_cake.id, ingredient_id: egg.id, ingredient_quantity: 3).save
IngredientRecipe.new(recipe_id: carrot_cake.id, ingredient_id: buttermilk.id, ingredient_quantity: 200).save
p carrot_cake.name

##### Tarte au pommes
file = URI.open('https://images.pexels.com/photos/4993114/pexels-photo-4993114.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
tarte_aux_pommes = Recipe.new(name: "Apple Tart", person_number: 4, description: "Mettez les pommes dans la pate à tarte. Cuisinez au fours pour 60min á 180. Mangez le truc.")
tarte_aux_pommes.photo.attach(io: file, filename: 'tarte_pommes.jpeg', content_type: 'image/jpeg')
tarte_aux_pommes.save
IngredientRecipe.new(recipe_id: tarte_aux_pommes.id, ingredient_id: apple.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tarte_aux_pommes.id, ingredient_id: pate_a_tarte.id, ingredient_quantity: 100).save
IngredientRecipe.new(recipe_id: tarte_aux_pommes.id, ingredient_id: sugar.id, ingredient_quantity: 30).save
p tarte_aux_pommes.name

##### Tacos Veg
file = URI.open('https://images.pexels.com/photos/8448331/pexels-photo-8448331.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=500')
tacos_veg = Recipe.new(name: "Tacos Veg", person_number: 1, description: "Heat olive oil in a skillet over medium-high heat. Add mushrooms and red bell peppers; saute until mushrooms are soft and meaty, about 20 minutes. Add pinto beans, taco seasoning mix, green onions, and water. Stir well; continue to cook until all liquid is evaporated, about 5 minutes more. Divide mushroom filling evenly between tortillas. Add your favorite taco toppings.")
tacos_veg.photo.attach(io: file, filename: 'tacos_veg.jpeg', content_type: 'image/jpeg')
tacos_veg.save
IngredientRecipe.new(recipe_id: tacos_veg.id, ingredient_id: olive_oil.id, ingredient_quantity: 10).save
IngredientRecipe.new(recipe_id: tacos_veg.id, ingredient_id: bell_pepper.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_veg.id, ingredient_id: mushroom.id, ingredient_quantity: 3).save
IngredientRecipe.new(recipe_id: tacos_veg.id, ingredient_id: onion.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_veg.id, ingredient_id: beans.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_veg.id, ingredient_id: tortilla.id, ingredient_quantity: 1).save
p tacos_veg.name

##### Tacos Meat
file = URI.open('https://images.pexels.com/photos/7613568/pexels-photo-7613568.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=500&w=500')
tacos_beef = Recipe.new(name: "Tacos Beef", person_number: 1, description: "Heat olive oil in a skillet over medium-high heat. Add the ground beef, mushrooms and red bell peppers; saute until mushrooms are soft and meaty and  the ground beef is cooked, about 20 minutes. Add pinto beans, taco seasoning mix, green onions, and water. Stir well; continue to cook until all liquid is evaporated, about 5 minutes more. Divide beef filling evenly between tortillas. Add your favorite taco toppings.")
tacos_beef.photo.attach(io: file, filename: 'tacos_meat.jpeg', content_type: 'image/jpeg')
tacos_beef.save
IngredientRecipe.new(recipe_id: tacos_beef.id, ingredient_id: olive_oil.id, ingredient_quantity: 10).save
IngredientRecipe.new(recipe_id: tacos_beef.id, ingredient_id: bell_pepper.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_beef.id, ingredient_id: mushroom.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_beef.id, ingredient_id: lean_ground_beef.id, ingredient_quantity: 100).save
IngredientRecipe.new(recipe_id: tacos_beef.id, ingredient_id: onion.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_beef.id, ingredient_id: beans.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_beef.id, ingredient_id: tortilla.id, ingredient_quantity: 1).save
p tacos_beef.name

##### Tacos Chicken
file = URI.open('https://images.pexels.com/photos/8448324/pexels-photo-8448324.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
tacos_chicken = Recipe.new(name: "Tacos Chicken", person_number: 1, description: "Heat olive oil in a skillet over medium-high heat. Add the diced chicken, mushrooms and red bell peppers; saute until mushrooms are soft and the chicken is cooked, about 20 minutes. Add pinto beans, taco seasoning mix, green onions, and water. Stir well; continue to cook until all liquid is evaporated, about 5 minutes more. Divide chicken filling evenly between tortillas. Add your favorite taco toppings.")
tacos_chicken.photo.attach(io: file, filename: 'tacos_chicken.jpeg', content_type: 'image/jpeg')
tacos_chicken.save
IngredientRecipe.new(recipe_id: tacos_chicken.id, ingredient_id: olive_oil.id, ingredient_quantity: 10).save
IngredientRecipe.new(recipe_id: tacos_chicken.id, ingredient_id: bell_pepper.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_chicken.id, ingredient_id: mushroom.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_chicken.id, ingredient_id: chicken.id, ingredient_quantity: 0.1).save
IngredientRecipe.new(recipe_id: tacos_chicken.id, ingredient_id: onion.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_chicken.id, ingredient_id: beans.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: tacos_chicken.id, ingredient_id: tortilla.id, ingredient_quantity: 1).save
p tacos_chicken.name

##### paella
file = URI.open('https://images.pexels.com/photos/8969237/pexels-photo-8969237.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=500')
paella = Recipe.new(name: "Paella", person_number: 6, description: "Heat a wok over medium-high heat. Fry hot and mild Italian sausage pieces in the wok until brown on all sides. Remove sausage, and fry the chicken strips in the sausage drippings until browned. Remove chicken and saute onions, green pepper, celery, and garlic for 5 minutes, or until tender.
Stir in the uncooked rice, tomatoes, bay leaves, salt, oregano and turmeric. Cook and stir for 1 minute, then mix in the reserved tomato juice and chicken broth. Add chicken pieces, cover and simmer for about 20 minutes. Add sausage to the mixture, and continue to simmer for 15 minutes, then stir in the shrimp; cover and cook for 5 to 10 more minutes, or until shrimp is cooked through.")
paella.photo.attach(io: file, filename: 'paella.jpeg', content_type: 'image/jpeg')
paella.save
IngredientRecipe.new(recipe_id: paella.id, ingredient_id: italian_sausage.id, ingredient_quantity: 300).save
IngredientRecipe.new(recipe_id: paella.id, ingredient_id: bell_pepper.id, ingredient_quantity: 2).save
IngredientRecipe.new(recipe_id: paella.id, ingredient_id: shrimp.id, ingredient_quantity: 200).save
IngredientRecipe.new(recipe_id: paella.id, ingredient_id: chicken.id, ingredient_quantity: 0.4).save
IngredientRecipe.new(recipe_id: paella.id, ingredient_id: onion.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: paella.id, ingredient_id: rice.id, ingredient_quantity: 600).save
p paella.name


#### recette a refaire

##### Couscous
file = URI.open('https://images.pexels.com/photos/4194378/pexels-photo-4194378.jpeg?auto=compress&cs=tinysrgb&h=500&w=500')
couscous = Recipe.new(name: "Couscous", description: "Lavez et épluchez les carottes, les navets et les tomates et les couper en cubes. Dans un autocuiseur, versez 3 cuillères à soupe d'huile d'olive.
Mettez à chauffer et faites-y dorer les pilons de poulet. Quand ils sont dorés, versez l'équivalent d'1 litre d'eau et ajouter les cubes de bouillon de boeuf, le concentré de tomate, les carottes, navets et tomates, les épices à couscous et l'harissa.
Fermez votre autocuiseur et compter 25 mn de cuisson une fois que celui-ci est monté en pression. En attendant, lavez et coupez les courgettes en cubes et égouttez les pois chiches.
Une fois les 25 mn écoulées, évacuez la vapeur de votre autocuiseur, ouvrez et rajouter les courgettes et les pois chiches. Remettez au feu : comptez 10 mn de cuisson une fois votre autocuiseur sous pression.
Faites cuire vos merguez sur un grill ou à la poêle, mais pas avec les légumes. Servez accompagné d'une semoule fine.")
couscous.photo.attach(io: file, filename: 'couscous.jpeg', content_type: 'image/jpeg')
couscous.save
IngredientRecipe.new(recipe_id: couscous.id, ingredient_id: carotte.id, ingredient_quantity: 0.7).save
IngredientRecipe.new(recipe_id: couscous.id, ingredient_id: courgette.id, ingredient_quantity: 1).save
IngredientRecipe.new(recipe_id: couscous.id, ingredient_id: semoule.id, ingredient_quantity: 300).save
p couscous.name
