# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Space.destroy_all

name_array = [
  "Crema Coffee House",
  "Honor Coffee and Tea",
  "Queen Anne Coffee",
  "Little Owl Coffee",
  "Spiced Chai Cafe",
  "Torpedo Coffee",
  "Beans ‘n Cream Cafe",
  "Jumpin’ Beans Cafe",
  "The Coffee Club",
  "Manhattan Mocha",
  "The Grind",
  "The Split Bean",
  "Screamin’ Beans",
  "Steamin’ Mugs",
  "Hugs with Mugs",
  "Molten Cream Jars",
  "Stylish Kafe",
  "Candle Cafe",
  "Sip and Snack",
  "Impresso Espresso"
]

category_array = ["Coffee Shop", "Library", "Museum"]
description_array = ["Great place to get work done. Grab a coffee and take a seat. Artisan coffee starts at £2.99!", "Make yourself at home in our venue. With a wide selection of brunch and lunch options you can get work done as well as delight your taste buds", "Meet other freelancers in our cafe"]
address_array = ["Paddington, London", "Shoreditch, London", "Angel, London", "Waterloo, London", "Buckingham Palace, London", "South Kensington, London"]

20.times do
  space = Space.new(name: name_array.sample,
    category: category_array.sample,
    description: description_array.sample,
    address: address_array.sample,
    link: "spacename.com" )
  space.save!
end
