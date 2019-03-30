# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'faker'
require 'ez_download'

User.destroy_all
Story.destroy_all
Following.destroy_all

guest = User.new(
  name: 'Guest User',
  bio: 'Oh please, why dont you come in from the cold?',
  email: 'guest@gmail.com',
  password: 'testing'
)
file = EzDownload.open('https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
guest.avatar.attach(io: file, filename: 'guest.jpg')
guest.save


andrew = User.new(
  name: 'Andrew Dong',
  bio: 'Software Engineer, lover of sports',
  email: 'andrew@gmail.com',
  password: 'testing'
)
andrew.avatar.attach(io: File.open('app/assets/images/andrew.jpg'), filename: 'andrew.jpg')
andrew.save

amanda = User.new(
  name: 'Amanda Flink',
  bio: 'Fitness Instructor, aspiring coder',
  email: 'amanda@gmail.com',
  password: 'testing'
)
amanda.avatar.attach(io: File.open('app/assets/images/amanda.jpg'), filename: 'amanda.jpg')
amanda.save

matthew = User.new(
  name: 'Matthew Jay',
  bio: 'Accounting Professor, general baller',
  email: 'matthew@gmail.com',
  password: 'testing'
)
matthew.avatar.attach(io: File.open('app/assets/images/matthew.jpg'), filename: 'matthew.jpg')
matthew.save

stacy = User.new(
  name: 'Stacy Bueno',
  bio: 'Investment Banker, fun lover',
  email: 'stacy@gmail.com',
  password: 'testing'
)
stacy.avatar.attach(io: File.open('app/assets/images/stacy.jpg'), filename: 'stacy.jpg')
stacy.save

theo = User.new(
  name: 'Theo Beers',
  bio: 'PhD Candidate in Egyptian Studies',
  email: 'theo@gmail.com',
  password: 'testing'
)
theo.avatar.attach(io: File.open('app/assets/images/theo.jpg'), filename: 'theo.jpg')
theo.save

mike = User.new(
  name: 'Big Mike',
  bio: "'Flag football director, lover of song",
  email: 'mike@gmail.com',
  password: 'testing'
)
mike.avatar.attach(io: File.open('app/assets/images/mike.jpg'), filename: 'mike.jpg')
mike.save 

s1 = Story.new(
  title: 'Trick Yourself Into Creating a Fresh Start',
  subtitle: 'How to get the feeling of a clean slate without a major event or life change',
  body: "#{Faker::Lorem.paragraph_by_chars(400) + '/r/n' + Faker::Lorem.paragraph_by_chars(500) + '/r/n' + Faker::Lorem.paragraph_by_chars(600) + '/r/n' + Faker::Lorem.paragraph_by_chars(600)}",
  author_id: andrew.id
)
s1.image.attach(io: File.open('app/assets/images/baby.jpg'), filename: 'baby.jpg')
s1.save 

s2 = Story.new(
  title: "What Do Social Media Breaks Accomplish?",
  subtitle: 'It depends on who you are',
  body: "#{Faker::Lorem.paragraph_by_chars(1000) + '/r/n' + Faker::Lorem.paragraph_by_chars(1000) + '/r/n' + Faker::Lorem.paragraph_by_chars(1000) + '/r/n' + Faker::Lorem.paragraph_by_chars(600)}",
  author_id: theo.id
)
s2.image.attach(io: File.open('app/assets/images/social-media.jpg'), filename: 'social-media.jpg')
s2.save

s3 = Story.new(
  title: 'Meet the People Coding Our World', subtitle: 'An interview with Clive Thompson, author of the great new book ‘Coders’',
  body: "#{Faker::Lorem.paragraph_by_chars(400) + '/r/n' + Faker::Lorem.paragraph_by_chars(500) + '/r/n' + Faker::Lorem.paragraph_by_chars(600) + '/r/n' + Faker::Lorem.paragraph_by_chars(600)}",
  author_id: amanda.id
)
s3.image.attach(io: File.open('app/assets/images/cliveThompson.jpg'), filename: 'cliveThompson.jpg')
s3.save 

s4 = Story.new(
  title: 'Your Productivity Hinges on How You Arrange Your Desk',
  subtitle: 'Advice from nine design, career, and organization experts on making your space work for you',
  body: "#{Faker::Lorem.paragraph_by_chars(400) + '/r/n' + Faker::Lorem.paragraph_by_chars(500) + '/r/n' + Faker::Lorem.paragraph_by_chars(600) + '/r/n' + Faker::Lorem.paragraph_by_chars(600)}",
  author_id: stacy.id
)
file = EzDownload.open('https://1pw8z314201u11lztq1ulowz-wpengine.netdna-ssl.com/wp-content/uploads/2016/04/increase-business-productivity.jpg')
s4.image.attach(io: file, filename: 'productivity.jpg')
s4.save

s5 = Story.new(
  title: 'I’m a Little Too Fat, a Little Too Giving. I Think I Know Why.',
  subtitle: 'Using the hunger I experienced as a kid to teach mine the power of generosity',
  body: "#{Faker::Lorem.paragraph_by_chars(400) + '/r/n' + Faker::Lorem.paragraph_by_chars(500) + '/r/n' + Faker::Lorem.paragraph_by_chars(600) + '/r/n' + Faker::Lorem.paragraph_by_chars(600)}",
  author_id: theo.id
)
file = EzDownload.open('https://membership.sfwa.org/resources/Pictures/Donate.jpg')
s5.image.attach(io: file, filename: 'donate.jpg'
)
s5.save

s6 = Story.new(
  title: 'What If Mark Zuckerberg Had Stayed in School?',
  subtitle: 'Two more years at Harvard would have taught him some valuable lessons — and changed the course of Facebook',
  body: "#{Faker::Lorem.paragraph_by_chars(400) + '/r/n' + Faker::Lorem.paragraph_by_chars(500) + '/r/n' + Faker::Lorem.paragraph_by_chars(600) + '/r/n' + Faker::Lorem.paragraph_by_chars(600)}",
  author_id: matthew.id
)
file = EzDownload.open('https://fortunedotcom.files.wordpress.com/2016/11/163292239.jpg')
s6.image.attach(io: file, filename: 'zuckerberg.jpg')
s6.save

s7 = Story.new(
  title: 'Don’t Be Shy',
  subtitle: 'I dont have a lot of breakup experience but Im pretty sure youre supposed to give the other person a reason',
  body: "#{Faker::Lorem.paragraph_by_chars(400) + '/r/n' + Faker::Lorem.paragraph_by_chars(500) + '/r/n' + Faker::Lorem.paragraph_by_chars(600) + '/r/n' + Faker::Lorem.paragraph_by_chars(600)}",
  author_id: amanda.id
)
file = EzDownload.open('https://images.medicaldaily.com/sites/medicaldaily.com/files/styles/headline/public/2016/08/03/shy.jpg')
s7.image.attach(io: file, filename: 'shy.jpg')
s7.save

s8 = Story.new(
  title: 'An Eternal Battle',
  subtitle: 'She knelt upon the small rise on the edge of the world.',
  body: "#{Faker::Lorem.paragraph_by_chars(400) + '/r/n' + Faker::Lorem.paragraph_by_chars(500) + '/r/n' + Faker::Lorem.paragraph_by_chars(600) + '/r/n' + Faker::Lorem.paragraph_by_chars(600)}",
  author_id: theo.id
)
file = EzDownload.open('https://cdn.pixabay.com/photo/2018/04/30/20/54/fantasy-3364026_960_720.jpg')
s8.image.attach(io: file, filename: 'fantasy.jpg')
s8.save 
