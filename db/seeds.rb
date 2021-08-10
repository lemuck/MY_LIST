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





