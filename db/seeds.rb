User.destroy_all
IngredientRecipe.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

choco = Ingredient.new(name: 'Chocolate', unit: 'g', unit_price: 2.3)
choco.save
p choco.name
flour = Ingredient.new(name: 'Flour', unit: 'g', unit_price: 1.3)
flour.save
p flour.name
recipe1 = Recipe.new(name: 'Chocolate Cake', description: "Add flour, sugar, cocoa, baking powder, baking soda, salt and espresso powder to a large bowl or the bowl of a stand mixer. Whisk through to combine or, using your paddle attachment, stir through flour mixture until combined well.
Add milk, vegetable oil, eggs, and vanilla to flour mixture and mix together on medium speed until well combined. Reduce speed and carefully add boiling water to the cake batter until well combined.
Distribute cake batter evenly between the two prepared cake pans. Bake for 30-35 minutes, until a toothpick or cake tester inserted in the center of the chocolate cake comes out clean.
Remove from the oven and allow to cool for about 10 minutes, remove from the pan and cool completely.")
# recipe1.ingredients << choco
# recipe1.ingredients << flour

recipe1.save
p recipe1.name


bob = User.new(name: "Bobby", email: "bobby@bob.com", password: "azerty")
bob.save!
p bob

john = User.new(name: "John", email: "John@bob.com", password: "azerty")
john.save!
p john

tarte_aux_carottes = Recipe.new(name: "Tarte aux carottes", description: "tarte avec des carottes")
tarte_aux_carottes.save!
p tarte_aux_carottes

couscous = Recipe.new(name: "Couscous", description: "Semoule de blé avec des carottes")
couscous.save!
p couscous






carotte = Ingredient.create(name: "carotte", unit: "kg", unit_price: 3, category: "legume")
carotte.save!
p carotte

pate_a_tarte = Ingredient.create(name: "pate à tarte", unit: "g", unit_price: 1, category: "patisserie")
pate_a_tarte.save!
p pate_a_tarte

semoule = Ingredient.create(name: "semoule", unit: "g", unit_price: 2, category: "sec")
semoule.save!
p semoule

courgette = Ingredient.create(name: "courgette", unit: "kg", unit_price: 2.3, category: "legume")
courgette.save!
p courgette
