# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(name: 'user1', permissions: '11110000')

img = 'https://images-na.ssl-images-amazon.com/images/I/51AcfZ3w30L._SX466_.jpg'
Character.create!([
  { name: 'user1', image_src: img },
  { name: 'user1', image_src: img },
  { name: 'user1', image_src: img },
  { name: 'user1', image_src: img },
  { name: 'user1', image_src: img },
  { name: 'user1', image_src: img },
  { name: 'user1', image_src: img },
  { name: 'user1', image_src: img },
  { name: 'user1', image_src: img },
])

user.party.create!(
  character1: Character.find(1).id,
  character2: Character.find(2).id,
  character3: Character.find(3).id,
  character4: Character.find(4).id,
)
