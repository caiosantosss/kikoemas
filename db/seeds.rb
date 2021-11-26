# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts puts 'Cleaning up database...'
User.destroy_all
Counselor.destroy_all
School.destroy_all
Booking.destroy_all
Message.destroy_all

puts 'Database cleaned'
puts 'Creating School......'

school1 = School.create!(
  name: "Le Wagon High School"
)

puts 'School created!'
puts 'Creating Users....'

user1 = User.create!(
  first_name: "Ryota",
  last_name: 'Enoki',
  email: "ryota@lewagon.jp",
  phone_number: "080 45454646",
  address: "212-1086, Kinutakoen, Setagaya-ku, Tokyo",
  password: '123456',
  school: school1
)

file = URI.open("https://avatars.githubusercontent.com/u/76512208?v=4")
user1.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user2 = User.create!(
  first_name: "Karen",
  last_name: 'Fujibayashi',
  email: 'karen@lewagon.jp',
  phone_number: '080 12344321',
  address: '387-1223, Ichigayakoracho, Shinjuku-ku, Tokyo',
  password: '123456',
  school: school1
)

file = URI.open("https://avatars.githubusercontent.com/u/81273911?v=4")
user2.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user3 = User.create!(
  first_name: "Caio",
  last_name: 'Santos',
  email: 'caio@lewagon.jp',
  phone_number: '080 99991111',
  address: '57-14, Mejiro 2-chome, Toshima-ku, Tokyo',
  password: '123456',
  school: school1
)
file = URI.open("https://avatars.githubusercontent.com/u/87355777?v=4")
user3.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

puts 'Users created'
puts 'Creating Counselors........'

counselor1 = Counselor.create!(
  first_name: "Vivian",
  last_name: 'Bow',
  email: 'vivian@lewagon.jp',
  password: '123456',
  school: school1
)

file = URI.open("https://avatars.githubusercontent.com/u/78392794?v=4")
counselor1.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

counselor2 = Counselor.create!(
  first_name: "Doug",
  last_name: 'Berkley',
  email: 'doug@lewagon.jp',
  password: '123456',
  school: school1
)

file = URI.open("https://avatars.githubusercontent.com/u/25542223?v=4")
counselor2.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

counselor3 = Counselor.create!(
  first_name: "Trouni",
  last_name: 'Tiet',
  email: 'trouni@lewagon.jp',
  password: '123456',
  school: school1
)

file = URI.open("https://avatars.githubusercontent.com/u/34345789?v=4")
counselor3.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

counselor4 = Counselor.create!(
  first_name: "Yann",
  last_name: 'Klein',
  email: 'yann@lewagon.jp',
  password: '123456',
  school: school1
)

file = URI.open("https://avatars.githubusercontent.com/u/26819547?v=4")
counselor4.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

counselor5 = Counselor.create!(
  first_name: "Derek",
  last_name: 'Torres',
  email: 'derek@lewagon.jp',
  password: '123456',
  school: school1
)

file = URI.open("https://avatars.githubusercontent.com/u/77267436?v=4")
counselor5.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

puts 'Counselors created'

# test for messageable

# booking = Booking.create
# counselor = Counselor.create(fist_name: "Ryota")
# user = User.create(first_name: "Joss")
# byebug
# puts 'seeded'
