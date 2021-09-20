# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

file_array = []
50.times do
  file_array << "https://source.unsplash.com/random?sig=#{rand(1..50)}/&coffee-shop-work"
end

name_array = %w(Pine Tree
  Hot Grind
  Palm Tree Coffee
  Grind Jar
  Grind Bay
  Fusion Grind
  Grind Valley
  North Grind
  Grind Trail
  Grind Vibe
  Town Roasters
  Grind Wolf
  Skyscraper Café
  Grind North
  Hangout Coffee
  Coffee Roasters
  City Pour
  Forest Beans
  Hotspring Café
  Dreamy Moose
  Sunsets Café
  Mugs and Spoon
  Latte Loca)
category_array = ["Coffee Shop", "Library", "Museum"]
description_array = ["Great place to get work done. Grab a coffee and take a seat. Artisan coffee starts at £2.99!", "Make yourself at home in our venue. With a wide selection of brunch and lunch options you can get work done as well as delight your taste buds", "Meet other freelancers in our cafe"]
address_array = ["Paddington, London", "Shoreditch, London", "Angel, London", "Waterloo, London", "Buckingham Palace, London", "South Kensington, London"]

50.times do
  space = Space.new(name: name_array.sample,
    category: category_array.sample,
    description: description_array.sample,
    address: address_array.sample,
    link: "spacename.com" )
  # space.photos.attach(io: URI.open(file_array.sample), filename: 'nes.png', content_type: 'image/png')
  space.save!
end
