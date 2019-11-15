# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating some ingredients"
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "sugar")
Ingredient.create(name: "vodka")
Ingredient.create(name: "tequila")
puts "finished creating some ingredients"

puts "creating some cocktails"
Cocktail.create(name: "Aperol Spritz", remote_photo_url: "http://res.cloudinary.com/sophieshadilejeune/image/upload/v1573787748/ijt2auxdmfjl4gpg0pzn.jpg")
Cocktail.create(name: "Sex on the Beach", remote_photo_url: "https://res.cloudinary.com/sophieshadilejeune/image/upload/v1573790745/qqcgfeg6bgi4h50as9fx.jpg")
Cocktail.create(name: "Mojito", remote_photo_url: "https://res.cloudinary.com/sophieshadilejeune/image/upload/v1573792772/fs358kosnzcynxuox8ww.jpg")

# Cocktail.create(name: "Aperol Spritz", photo: "http://res.cloudinary.com/sophieshadilejeune/image/upload/v1573787748/ijt2auxdmfjl4gpg0pzn.jpg")
puts "finished creating some cocktails"

puts "creating some doses"
Dose.create(description: "1 tea spoon", ingredient_id: 1, cocktail_id: 2 )
Dose.create(description: "3 cubes", ingredient_id: 2, cocktail_id: 2 )
Dose.create(description: "2cl", ingredient_id: 5, cocktail_id: 1 )
Dose.create(description: "3 leaves", ingredient_id: 3, cocktail_id: 1 )
Dose.create(description: "3 tea spoons", ingredient_id: 1, cocktail_id: 3 )
Dose.create(description: "4cl", ingredient_id: 6, cocktail_id: 3 )
puts "created six dose"


