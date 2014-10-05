# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = [
  ['car', 'road vehicle', '2100$', 40],
  ['bicycle', 'surface vehicle', '120$', 120],
  ['motorbike', 'road vehicle', '1100$', 58],
  ['train', 'road vehicle', '292100$', 3],
  ['jet', 'aircraft', '3429100$', 7],
  ['shoe', 'foot equipment', '21$', 2356],
  ['roller skates', 'foot equipment', '34$', 56],
  ['hot-air balloon', 'aircraft', '9800$', 6],
  ['scooter', 'surface vehicle', '55$', 14],
  ['roller', 'road vehicle', '950$', 9],
  ['helicopter', 'aircraft', '856050$', 2],
]

products.each do |product|
  Product.new(
      name: product[0],
      category: product[1],
      price: product[2],
      stock: product[3],
  ).save!(validate: false)
end