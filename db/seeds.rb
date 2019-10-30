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
  { name: 'user2', image_src: img },
  { name: 'user3', image_src: img },
  { name: 'user4', image_src: img },
  { name: 'user5', image_src: img },
  { name: 'user6', image_src: img },
  { name: 'user7', image_src: img },
  { name: 'user8', image_src: img },
  { name: 'user9', image_src: img },
  { name: 'user10', image_src: img },
  { name: 'user11', image_src: img },
  { name: 'user12', image_src: img },
])

Party.create!(
  user: user,
  character1_id: Character.find(1).id,
  character2_id: Character.find(2).id,
  character3_id: Character.find(3).id,
  character4_id: Character.find(4).id,
)
