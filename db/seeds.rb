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
  first_name: "Vivian",
  last_name: 'Bao',
  email: 'vivian@lewagon.jp',
  phone_number: '080 44448888',
  address: '181-1206, Roppongi Roppongihiruzumoritawa(9-kai), Minato-ku, Tokyo',
  password: '123456',
  school: school1
)

file = URI.open("https://avatars.githubusercontent.com/u/78392794?v=4")
user3.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user4 = User.create!(
  first_name: "Caio",
  last_name: 'Santos',
  email: 'caio@lewagon.jp',
  phone_number: '080 99991111',
  address: '57-14, Mejiro 2-chome, Toshima-ku, Tokyo',
  password: '123456',
  school: school1
)
file = URI.open("https://avatars.githubusercontent.com/u/87355777?v=4")
user4.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

puts 'Users created'
puts 'Creating Counselors........'

counselor1 = Counselor.create!(
  first_name: "Doug",
  last_name: 'Berkley',
  email: 'doug@lewagon.jp',
  password: '123456',
  school: school1
)

file = URI.open("https://avatars.githubusercontent.com/u/25542223?v=4")
counselor1.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

counselor2 = Counselor.create!(
  first_name: "Trouni",
  last_name: 'Tiet',
  email: 'trouni@lewagon.jp',
  password: '123456',
  school: school1
)

file = URI.open("https://avatars.githubusercontent.com/u/34345789?v=4")
counselor2.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

puts 'Counselors created'
puts 'Creating Bookings.........'

booking1 = Booking.create!(
  start_time: Time.now - 2.days,
  end_time: Time.now + 1*60*60,
  mode: 1,
  user: user1,
  counselor: counselor1,
  note: 'That was a good conversation. He was with some trouble with his girlfriend, but now is everything ok.',
  rating: 5,
  in_session: false
)

booking2 = Booking.create!(
  start_time: Time.now - 3.days,
  end_time: Time.now + 1*60*60,
  mode: 2,
  user: user2,
  counselor: counselor1,
  note: "She wasn't feeling confident because her friends weren't talking with her, I talked with her and now she is feeling better and She said, she would like to keep talking with some counselor",
  rating: 4,
  in_session: false
)

booking3 = Booking.create!(
  start_time: Time.now - 4.days,
  end_time: Time.now + 1*60*60,
  mode: 1,
  user: user3,
  counselor: counselor2,
  note: "It was a really great conversation. She had some issue about her cat passed away. After the talk, it seems fine.",
  rating: 5,
  in_session: false
)

puts 'All Booking created'

# test for messageable

# booking = Booking.create
# counselor = Counselor.create(fist_name: "Ryota")
# user = User.create(first_name: "Joss")
# byebug
# puts 'seeded'
