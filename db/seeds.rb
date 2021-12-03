# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'
require 'faker'

puts puts 'Cleaning up database...'
User.destroy_all
Counselor.destroy_all
School.destroy_all
Booking.destroy_all
Message.destroy_all
DailyEmotion.destroy_all

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
  school: school1,
  grade: 1,
  classroom: 'A'
)

file = URI.open("https://avatars.githubusercontent.com/u/76512208?v=4")
user1.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user2 = User.create!(
  first_name: "Ayano",
  last_name: 'Fujibayashi',
  email: 'ayano@lewagon.jp',
  phone_number: '080 12344321',
  address: '387-1223, Ichigayakoracho, Shinjuku-ku, Tokyo',
  password: '123456',
  school: school1,
  grade: 1,
  classroom: 'B'
)

file = URI.open("https://thumb.photo-ac.com/8a/8a9e2e2122a4859d42bdf7be3b5457e1_w.jpeg")
user2.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user3 = User.create!(
  first_name: "Takumi",
  last_name: 'Kobayashi',
  email: 'takumi@lewagon.jp',
  phone_number: '080 99991111',
  address: '57-14, Mejiro 2-chome, Toshima-ku, Tokyo',
  password: '123456',
  school: school1,
  grade: 1,
  classroom: 'C'
)
file = URI.open("https://thumb.photo-ac.com/cb/cbf5e1ebd7b3c28167fd3c67f8b5b3b0_w.jpeg")
user3.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user4 = User.create!(
  first_name: "Reiko",
  last_name: 'Ikeda',
  email: 'reiko@lewagon.jp',
  phone_number: '080 99991111',
  address: '57-14, Mejiro 2-chome, Toshima-ku, Tokyo',
  password: '123456',
  school: school1,
  grade: 1,
  classroom: 'C'
)
file = URI.open("https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
user4.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user5 = User.create!(
  first_name: "Mika",
  last_name: 'Toyoda',
  email: 'mika@lewagon.jp',
  phone_number: '080 99991111',
  address: '57-14, Mejiro 2-chome, Toshima-ku, Tokyo',
  password: '123456',
  school: school1,
  grade: 1,
  classroom: 'C'
)
file = URI.open("https://thumb.photo-ac.com/8f/8f47b167679a8e0a0d6b73487b966349_w.jpeg")
user5.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user6 = User.create!(
  first_name: "Kiyoko",
  last_name: 'Yoshida',
  email: 'kiyoko@lewagon.jp',
  phone_number: '080 99991111',
  address: '57-14, Mejiro 2-chome, Toshima-ku, Tokyo',
  password: '123456',
  school: school1,
  grade: 1,
  classroom: 'C'
)
file = URI.open("https://thumb.photo-ac.com/65/6535dfa6eb56896a47c62066d01d8744_w.jpeg")
user6.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user7 = User.create!(
  first_name: "Saitama",
  last_name: 'Suzuki',
  email: 'saitama@lewagon.jp',
  phone_number: '080 99991111',
  address: '57-14, Mejiro 2-chome, Toshima-ku, Tokyo',
  password: '123456',
  school: school1,
  grade: 1,
  classroom: 'C'
)
file = URI.open("https://thumb.photo-ac.com/14/14e6784a30a1089f3dd90cb3a096f7d5_w.jpeg")
user7.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

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
  first_name: "Miho",
  last_name: 'Hirata',
  email: 'miho@lewagon.jp',
  password: '123456',
  school: school1
)

file = URI.open("https://media.istockphoto.com/photos/portrait-business-woman-asian-on-blue-background-picture-id1166423321")
counselor2.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

counselor3 = Counselor.create!(
  first_name: "Shigeo",
  last_name: 'Watanabe',
  email: 'shigeo@lewagon.jp',
  password: '123456',
  school: school1
)

file = URI.open("https://thumb.photo-ac.com/01/01da609ba7890d445f1310f9b7f070d0_w.jpeg")
counselor3.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

counselor4 = Counselor.create!(
  first_name: "Kumiko",
  last_name: 'Ichikawa',
  email: 'kumiko@lewagon.jp',
  password: '123456',
  school: school1
)

file = URI.open("https://media.istockphoto.com/photos/cheerful-businesswoman-in-her-30s-with-paperwork-picture-id1222731173")
counselor4.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')



puts 'Counselors created'

puts 'Creating random students'

# rando_students = []
# 10.times do
#   user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     phone_number: Faker::PhoneNumber.cell_phone,
#     password: '123456',
#     school: school1,
#     grade: 1,
#     classroom: 'A'
#   )
#   rando_students << user
# end

# 10.times do
#   user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     phone_number: Faker::PhoneNumber.cell_phone,
#     password: '123456',
#     school: school1,
#     grade: 1,
#     classroom: 'B'
#   )
#   rando_students << user
# end

# 10.times do
#   user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     phone_number: Faker::PhoneNumber.cell_phone,
#     password: '123456',
#     school: school1,
#     grade: 1,
#     classroom: 'C'
#   )
#   rando_students << user
# end

puts 'Finished the random users'

puts 'Creating past bookings...'
past_booking1 = Booking.new(
  start_time: Date.today - 1.month,
  mode: 0,
  in_session: false
)
past_booking1.counselor = counselor1
past_booking1.user = user1
past_booking1.save!

past_booking2 = Booking.new(
  start_time: Date.today - 1.month,
  mode: 0,
  in_session: false
)
past_booking2.counselor = counselor1
past_booking2.user = user4
past_booking2.save!

past_booking3 = Booking.new(
  start_time: Date.today - 1.month,
  mode: 0,
  in_session: false
)
past_booking3.counselor = counselor1
past_booking3.user = user5
past_booking3.save!

past_booking4 = Booking.new(
  start_time: Date.today - 1.month,
  mode: 0,
  in_session: false
)
past_booking4.counselor = counselor1
past_booking4.user = user6
past_booking4.save!

past_booking5 = Booking.new(
  start_time: Date.today - 1.month,
  mode: 0,
  in_session: false
)
past_booking5.counselor = counselor1
past_booking5.user = user7
past_booking5.save!

puts 'Finished creating past booking'

puts 'Creating daily emotions 1'

# rando_students.each do |user|
#   ((Date.today - 2.month).beginning_of_month..(Date.today)).each do |date|
#     daily_report = DailyEmotion.new(
#       date: date,
#       emotion: rand(5)
#     )
#     daily_report.user = user
#     daily_report.save!
#   end
# end
# user3 --> daily emotion reports from 2 months ago
[user3].each do |user|
  ((Date.today - 3.month).beginning_of_month..(Date.today - 1)).each do |date|
    daily_report = DailyEmotion.new(
      date: date,
      emotion: rand(5)
    )
    daily_report.user = user
    daily_report.save!
  end
end

puts 'Creating daily emotions 2'

((Date.today - 2.month).beginning_of_month...(Date.today - 1.week).beginning_of_week).each do |date|
  daily_report = DailyEmotion.new(
    date: date,
    emotion: rand(5)
  )
  daily_report.user = user2
  daily_report.save!
end

daily_report_karen = DailyEmotion.new(
  date: (Date.today - 1.week).beginning_of_week,
  emotion: 3
)
daily_report_karen.user = user2
daily_report_karen.save!

daily_report_karen = DailyEmotion.new(
  date: (Date.today - 1.week).beginning_of_week + 1.day,
  emotion: 2
)
daily_report_karen.user = user2
daily_report_karen.save!

daily_report_karen = DailyEmotion.new(
  date: (Date.today - 1.week).beginning_of_week + 2.day,
  emotion: 1
)
daily_report_karen.user = user2
daily_report_karen.save!

(((Date.today - 1.week).beginning_of_week + 3.day) .. ((Date.today - 1.week).end_of_week)).each do |date|
  daily_report_karen = DailyEmotion.new(
    date: date,
    emotion: 0
  )
  daily_report_karen.user = user2
  daily_report_karen.save!
end

(((Date.today - 1.week).end_of_week + 1.day) .. (Date.today - 1.day)).each do |date|
  daily_report_ryota = DailyEmotion.new(
    date: date,
    emotion: rand(1..3)
  )
  daily_report_ryota.user = user2
  daily_report_ryota.save!
end

puts 'Creating daily emotions for Ryota'

# ((Date.today - 2.month).beginning_of_month...(Date.today - 1.week).beginning_of_week).each do |date|
#   daily_report = DailyEmotion.new(
#     date: date,
#     emotion: rand(5)
#   )
#   daily_report.user = user1
#   daily_report.save!
# end

# sep
((3.months.ago.beginning_of_month.to_date)..(3.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student4 = DailyEmotion.new(
    date: date,
    emotion: (rand(0..9) == 0 ? 2 : rand(0..1))
  )
  daily_report_student4.user = user1
  daily_report_student4.save!
end
# oct
((2.months.ago.beginning_of_month.to_date)...(2.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student4 = DailyEmotion.new(
    date: date,
    emotion: (rand(0..9) < 5 ? rand(2..3) : rand(0..1))
  )
  daily_report_student4.user = user1
  daily_report_student4.save!
end
# nov (until 11/21)
((1.months.ago.beginning_of_month.to_date)...(1.months.ago.end_of_month.to_date - 8.days)).each do |date|
  daily_report_student4 = DailyEmotion.new(
    date: date,
    emotion: rand(3..4)
  )
  daily_report_student4.user = user1
  daily_report_student4.save!
end

# dec
# ((Date.today.beginning_of_month)...(Date.today)).each do |date|
#   daily_report_student4 = DailyEmotion.new(
#     date: date,
#     emotion: rand(3..4)
#   )
#   daily_report_student4.user = user1
#   daily_report_student4.save!
# end

# 11/29 ~ 12/2
# (((Date.today - 1.week).end_of_week + 1.day) .. (Date.today - 1.day)).each do |date|
#   daily_report_ryota = DailyEmotion.new(
#     date: date,
#     emotion: rand(0..1)
#   )
#   daily_report_ryota.user = user1
#   daily_report_ryota.save!
# end

# ryota for the past week (11/22 ~ 11/28)
daily_report = DailyEmotion.new(
  date: (Date.today - 1.week).beginning_of_week,
  emotion: 2
)
daily_report.user = user1
daily_report.save!

daily_report = DailyEmotion.new(
  date: (Date.today - 1.week).beginning_of_week + 1.day,
  emotion: 1
)
daily_report.user = user1
daily_report.save!

(((Date.today - 1.week).beginning_of_week + 2.day)..(Date.today - 1.week).end_of_week).each do |date|
  daily_report_ryota = DailyEmotion.new(
    date: date,
    emotion: 0
  )
  daily_report_ryota.user = user1
  daily_report_ryota.save!
end

# dec (12/1 ~ 12/2)
((Date.today.beginning_of_month)...(Date.today)).each do |date|
  daily_report_student4 = DailyEmotion.new(
    date: date,
    emotion: 0
  )
  daily_report_student4.user = user1
  daily_report_student4.save!
end

puts 'Creating emotions to other users......'
# sep
((3.months.ago.beginning_of_month.to_date)..(3.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student4 = DailyEmotion.new(
    date: date,
    emotion: (rand(0..9) == 0 ? rand(2..4) : rand(0..1))
  )
  daily_report_student4.user = user4
  daily_report_student4.save!
end
# oct
((2.months.ago.beginning_of_month.to_date)...(2.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student4 = DailyEmotion.new(
    date: date,
    emotion: (rand(0..9) < 5 ? rand(2..4) : rand(0..1))
  )
  daily_report_student4.user = user4
  daily_report_student4.save!
end
# nov
((1.months.ago.beginning_of_month.to_date)...(1.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student4 = DailyEmotion.new(
    date: date,
    emotion: rand(3..4)
  )
  daily_report_student4.user = user4
  daily_report_student4.save!
end
# dec
((Date.today.beginning_of_month)...(Date.today)).each do |date|
  daily_report_student4 = DailyEmotion.new(
    date: date,
    emotion: rand(3..4)
  )
  daily_report_student4.user = user4
  daily_report_student4.save!
end

puts 'Creating emotions with student5'

((3.months.ago.beginning_of_month.to_date)..(3.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student5 = DailyEmotion.new(
    date: date,
    emotion: (rand(0..9) == 0 ? rand(2..4) : rand(0..1))
  )
  daily_report_student5.user = user5
  daily_report_student5.save!
end

((2.months.ago.beginning_of_month.to_date)...(2.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student5 = DailyEmotion.new(
    date: date,
    emotion: (rand(0..9) < 5 ? rand(2..4) : rand(0..1))
  )
  daily_report_student5.user = user5
  daily_report_student5.save!
end

((1.months.ago.beginning_of_month.to_date)...(1.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student5 = DailyEmotion.new(
    date: date,
    emotion: rand(3..4)
  )
  daily_report_student5.user = user5
  daily_report_student5.save!
end

((Date.today.beginning_of_month)...(Date.today)).each do |date|
  daily_report_student5 = DailyEmotion.new(
    date: date,
    emotion: rand(3..4)
  )
  daily_report_student5.user = user5
  daily_report_student5.save!
end

puts 'Creating new daily students emotions students6'

((3.months.ago.beginning_of_month.to_date)..(3.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student6 = DailyEmotion.new(
    date: date,
    emotion: (rand(0..9) == 0 ? rand(2..4) : rand(0..1))
  )
  daily_report_student6.user = user6
  daily_report_student6.save!
end

((2.months.ago.beginning_of_month.to_date)...(2.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student6 = DailyEmotion.new(
    date: date,
    emotion: (rand(0..9) < 5 ? rand(2..4) : rand(0..1))
  )
  daily_report_student6.user = user6
  daily_report_student6.save!
end

((1.months.ago.beginning_of_month.to_date)...(1.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student6 = DailyEmotion.new(
    date: date,
    emotion: rand(3..4)
  )
  daily_report_student6.user = user6
  daily_report_student6.save!
end

((Date.today.beginning_of_month)...(Date.today)).each do |date|
  daily_report_student6 = DailyEmotion.new(
    date: date,
    emotion: rand(3..4)
  )
  daily_report_student6.user = user6
  daily_report_student6.save!
end

puts 'Creating emotions to students 7'

((3.months.ago.beginning_of_month.to_date)..(3.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student7 = DailyEmotion.new(
    date: date,
    emotion: (rand(0..9) == 0 ? rand(2..4) : rand(0..1))
  )
  daily_report_student7.user = user7
  daily_report_student7.save!
end

((2.months.ago.beginning_of_month.to_date)...(2.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student7 = DailyEmotion.new(
    date: date,
    emotion: (rand(0..9) < 5 ? rand(2..4) : rand(0..1))
  )
  daily_report_student7.user = user7
  daily_report_student7.save!
end

((1.months.ago.beginning_of_month.to_date)...(1.months.ago.end_of_month.to_date)).each do |date|
  daily_report_student7 = DailyEmotion.new(
    date: date,
    emotion: rand(3..4)
  )
  daily_report_student7.user = user7
  daily_report_student7.save!
end

((Date.today.beginning_of_month)...(Date.today)).each do |date|
  daily_report_student7 = DailyEmotion.new(
    date: date,
    emotion: rand(3..4)
  )
  daily_report_student7.user = user7
  daily_report_student7.save!
end

# daily_report_ryota = DailyEmotion.new(
#   date: Date.today - 1,
#   emotion: 0,
#   user_id: user1
# )
# daily_report_ryota.user = user1
# daily_report_ryota.save!

# daily_report_ryota = DailyEmotion.new(
#   date: Date.today - 2,
#   emotion: 0,
#   user_id: user1
# )
# daily_report_ryota.user = user1
# daily_report_ryota.save!

# daily_report_ryota = DailyEmotion.new(
#   date: Date.today - 3,
#   emotion: 0,
#   user_id: user1
# )
# daily_report_ryota.user = user1
# daily_report_ryota.save!

# daily_report_ryota = DailyEmotion.new(
#   date: Date.today - 4,
#   emotion: 0,
#   user_id: user1
# )
# daily_report_ryota.user = user1
# daily_report_ryota.save!

puts 'Daily emotions created'
# test for messageable

# booking = Booking.create
# counselor = Counselor.create(fist_name: "Ryota")
# user = User.create(first_name: "Joss")
# byebug
# puts 'seeded'
