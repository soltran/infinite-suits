# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dress = Category.create([
  
  { name: 'Dresses', image_url: "http://99dresses.com/static/6bum7XY4zig5mCGruIqq2TQrZApsn8h62ecQ2juijWl.png"},
  { name: 'Tops', image_url: "http://99dresses.com/static/k9oY5qgcf21DOYZpLXHFtCD9m8bSVdUBF2mVQ3Mo03F.png"},
  { name: 'Shorts', image_url: "http://99dresses.com/static/b8T1iixA5I6oeGRskNQS4wQqecUdzTdw1Sq7p8iMCAX.png"},
  { name: 'Skirts', image_url: "http://99dresses.com/static/SbKOuo8E0is0VIUspEDUQyJiufQ9H69YMrGN5FfhS0f.png"},
  { name: 'Outerwear', image_url: "http://99dresses.com/static/yj2GNA3Diryl9i3vLt1qOv7xaDndBtPBjvwJjmdzMYQ.png"},
  { name: 'Jeans', image_url: "http://99dresses.com/static/znMrQoWvVY1dirRP3ilzxcbMXpzmG4Epe5nCCd1T9lH.png"},
  { name: 'Pants', image_url: "http://99dresses.com/static/59z5iMxQ5kvFfekiAbhZwEqBV6mh87FOrEHeRkBjyWC.png"},

  ])
  
  # { name: 'Jumpsuits', image_url: "http://99dresses.com/static/6bum7XY4zig5mCGruIqq2TQrZApsn8h62ecQ2juijWl.png"},
  # { name: 'Shoes', image_url: "http://99dresses.com/static/6bum7XY4zig5mCGruIqq2TQrZApsn8h62ecQ2juijWl.png"},
  # { name: 'Bags', image_url: "http://99dresses.com/static/6bum7XY4zig5mCGruIqq2TQrZApsn8h62ecQ2juijWl.png"}