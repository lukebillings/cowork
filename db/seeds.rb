# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


name_array = []
type_array = ["Coffee Shop", "Library", "Museum"]
description_array = ["Great place to get work done. Grab a coffee and take a seat. Artisan coffee starts at £2.99!", "Make yourself at home in our venue. With a wide selection of brunch and lunch options you can get work done as well as delight your taste buds"]
address_array = [London, London, London]



12.times do
  space = Sapce.new(name: name_array.sample,
    type: type.sample,
    description: description.sample,
    address: address.sample,
    link: "spacename.com" )
  space.save!
end
