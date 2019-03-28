# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'faker'


User.destroy_all
Story.destroy_all
Following.destroy_all

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
  body: "#{Faker::Lorem.paragraph_by_chars(256) + '\r\n' + Faker::Lorem.paragraph_by_chars(256)}",
  author_id: andrew.id
)
s1.image.attach(io: File.open('app/assets/images/baby.jpg'), filename: 'baby.jpg')
s1.save 
