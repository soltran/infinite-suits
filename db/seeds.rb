# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dress = Category.create([
  
  { name: 'Suits', image_url: "https://s3-us-west-1.amazonaws.com/infiniteprod/suit-pic.png"},
  { name: 'Dress Shirts', image_url: "https://s3-us-west-1.amazonaws.com/infiniteprod/shirt-pic.png"},
  { name: 'Jerseys', image_url: "https://s3-us-west-1.amazonaws.com/infiniteprod/jersey-pic.png"},
  { name: 'V-Necks', image_url: "https://s3-us-west-1.amazonaws.com/infiniteprod/v-neck-pic.png"},
  { name: 'Shoes', image_url: "https://s3-us-west-1.amazonaws.com/infiniteprod/shoe-pic.png"},
  { name: 'Jeans', image_url: "https://s3-us-west-1.amazonaws.com/infiniteprod/jeans-pic.png"},
  { name: 'fedoras', image_url: "https://s3-us-west-1.amazonaws.com/infiniteprod/fedora-pic.png"},
  { name: 'Girlfriend Stuff', image_url: "https://s3-us-west-1.amazonaws.com/infiniteprod/girlfriend-pic.png"},
  ])
  

  # { name: 'Jumpsuits', image_url: "http://99dresses.com/static/6bum7XY4zig5mCGruIqq2TQrZApsn8h62ecQ2juijWl.png"},
  # { name: 'Shoes', image_url: "http://99dresses.com/static/6bum7XY4zig5mCGruIqq2TQrZApsn8h62ecQ2juijWl.png"},
  # { name: 'Bags', image_url: "http://99dresses.com/static/6bum7XY4zig5mCGruIqq2TQrZApsn8h62ecQ2juijWl.png"}