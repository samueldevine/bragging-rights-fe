# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_1 = User.create(
  uid: '362111173',
  nickname: 'worldtraveler',
  access_token: "1451281232570970119-rDbOK1dJrCA49v5TJ3p1HmQj7GRow1"
)

user_2 = User.create(
  uid: '462111173',
  nickname: 'floridaman',
  access_token: "1451281232570970119-rDbOK1dJrCA49v5TJ3p1HmQj7GRow2"
)
user_3 = User.create(
  uid: '1479496123915988993',
  nickname: 'floridaman',
  access_token: "1451281232570970119-rDbOK1dJrCA49v5TJ3p1HmQj7GRow2"
)
