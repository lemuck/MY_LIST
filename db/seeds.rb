# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



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






@carotte = Ingredient.create(name: "carotte", unit: "kg", price: 3, category: "legume")
@carotte.save!
p @carotte

@pate_a_tarte = Ingredient.create(name: "pate à tarte", unit: "g", price: 1, category: "patisserie")
@pate_a_tarte.save!
p @pate_a_tarte

@semoule = Ingredient.create(name: "semoule", unit: "g", price: 2, category: "sec")
@semoule.save!
p @semoule

@courgette = Ingredient.create(name: "courgette", unit: "kg", price: 2.3, category: "legume")
@courgette.save!
p @courgette

