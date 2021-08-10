# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
