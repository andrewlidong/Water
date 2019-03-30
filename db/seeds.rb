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
Tag.destroy_all
Tagging.destroy_all
Comment.destroy_all
Clap.destroy_all

guest = User.new(
  name: 'Guest User',
  bio: 'Oh, why dont you come in from the cold?',
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
  body: "#{Faker::Lorem.paragraph_by_chars(3000)}",
  author_id: andrew.id,
  all_tags: 'motivation, inspiration, productivity'
)
s1.image.attach(io: File.open('app/assets/images/baby.jpg'), filename: 'baby.jpg')
s1.save 

s2 = Story.new(
  title: "What Do Social Media Breaks Accomplish?",
  subtitle: 'It depends on who you are',
  body: "#{Faker::Lorem.paragraph_by_chars(4000)}",
  author_id: theo.id,
  all_tags: 'social, media, productivity, time'

)
s2.image.attach(io: File.open('app/assets/images/social-media.jpg'), filename: 'social-media.jpg')
s2.save

s3 = Story.new(
  title: 'Meet the People Coding Our World', subtitle: 'An interview with Clive Thompson, author of the great new book ‘Coders’',
  body: "#{Faker::Lorem.paragraph_by_chars(5000)}",
  author_id: amanda.id,
  all_tags: 'coding, books, interview, engineering'
)
s3.image.attach(io: File.open('app/assets/images/cliveThompson.jpg'), filename: 'cliveThompson.jpg')
s3.save 

s4 = Story.new(
  title: 'Your Productivity Hinges on How You Arrange Your Desk',
  subtitle: 'Advice from nine design, career, and organization experts on making your space work for you',
  body: "#{Faker::Lorem.paragraph_by_chars(1000)}",
  author_id: stacy.id,
  all_tags: 'productivity, work-week, ergonomics'
)
file = EzDownload.open('https://1pw8z314201u11lztq1ulowz-wpengine.netdna-ssl.com/wp-content/uploads/2016/04/increase-business-productivity.jpg')
s4.image.attach(io: file, filename: 'productivity.jpg')
s4.save

s5 = Story.new(
  title: 'I’m a Little Too Fat, a Little Too Giving. I Think I Know Why.',
  subtitle: 'Using the hunger I experienced as a kid to teach mine the power of generosity',
  body: "#{Faker::Lorem.paragraph_by_chars(4500)}",
  author_id: theo.id,
  all_tags: 'generosity, fat, gratitude, curiosity'
)
file = EzDownload.open('https://membership.sfwa.org/resources/Pictures/Donate.jpg')
s5.image.attach(io: file, filename: 'donate.jpg'
)
s5.save

s6 = Story.new(
  title: 'What If Mark Zuckerberg Had Stayed in School?',
  subtitle: 'Two more years at Harvard would have taught him some valuable lessons — and changed the course of Facebook',
  body: "#{Faker::Lorem.paragraph_by_chars(5500)}",
  author_id: matthew.id,
  all_tags: 'facebook, college, facebook, harvard'
)
file = EzDownload.open('https://fortunedotcom.files.wordpress.com/2016/11/163292239.jpg')
s6.image.attach(io: file, filename: 'zuckerberg.jpg')
s6.save

s7 = Story.new(
  title: 'Don’t Be Shy',
  subtitle: 'I dont have a lot of breakup experience but Im pretty sure youre supposed to give the other person a reason',
  body: "#{Faker::Lorem.paragraph_by_chars(6500)}",
  author_id: amanda.id,
  all_tags: 'relationships, breakups'
)
file = EzDownload.open('https://images.medicaldaily.com/sites/medicaldaily.com/files/styles/headline/public/2016/08/03/shy.jpg')
s7.image.attach(io: file, filename: 'shy.jpg')
s7.save

s8 = Story.new(
  title: 'An Eternal Battle',
  subtitle: 'She knelt upon the small rise on the edge of the world.',
  body: "#{Faker::Lorem.paragraph_by_chars(3300)}",
  author_id: theo.id,
  all_tags: 'fantasy, books, feminism'
)
file = EzDownload.open('https://cdn.pixabay.com/photo/2018/04/30/20/54/fantasy-3364026_960_720.jpg')
s8.image.attach(io: file, filename: 'fantasy.jpg')
s8.save 

s9 = Story.new(
  title: 'The Simple Truth Behind Reading 200 Books a Year',
  subtitle: 'And how to make it a habit',
  body: "#{Faker::Lorem.paragraph_by_chars(5000)}",
  author_id: matthew.id,
  all_tags: 'productivity, reading, books, success'
)
file = EzDownload.open('https://bedfordnhlibrary.org/sites/bedfordnhlibrary.org/files/books.jpg')
s9.image.attach(io: file, filename: 'books.jpg')
s9.save

s10 = Story.new(
  title: 'The Five Most Interesting Players in the NBA',
  subtitle: 'The individuals who piqued our interest the most',
  body: "#{Faker::Lorem.paragraph_by_chars(6000)}",
  author_id: andrew.id,
  all_tags: 'basketball, athletes, sports, professionals'
)
file = EzDownload.open('https://cdn.vox-cdn.com/thumbor/5q9Pc1TbXs-ONJjkKDaEGKPZMxM=/0x0:3000x2000/920x613/filters:focal(1247x439:1727x919):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63319436/devine_5_interesting_players_getty_ringer_13.0.jpg')
s10.image.attach(io: file, filename: 'nba.jpg')
s10.save

s11 = Story.new(
  title: 'Bryce Harper’s Unholy Baseball Trinity',
  subtitle: 'The Phillies’ new $330 million man is a rare breed: a true baseball celebrity.',
  body: "#{Faker::Lorem.paragraph_by_chars(6500)}",
  author_id: mike.id,
  all_tags: 'baseball, athlete, sports'
)
file = EzDownload.open('https://cdn.vox-cdn.com/thumbor/7h__jPk9TSGz_SvCr9azLuYP7Mc=/0x0:3200x1800/1070x602/filters:focal(1202x514:1714x1026):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63314001/bryce_harper_katie_baker_2.0.jpg')
s11.image.attach(io: file, filename: 'harper.jpg')
s11.save

s12 = Story.new(
  title: '‘Game of Thrones’ Loose Ends: Will Our Heroes Learn How the Wall Was Built?',
  subtitle: 'The 300-mile-long structure stood for thousands of years before the Night King breached it in Season 7’s finale. No one knows exactly how it was built—but finding out could be an important step to stopping the White Walkers.',
  body: "#{Faker::Lorem.paragraph_by_chars(3300)}",
  author_id: amanda.id,
  all_tags: 'thrones, fantasy, television'
)
file = EzDownload.open('https://cdn.vox-cdn.com/thumbor/5LVhDyBuouu5hgBx7XP0Zit-F-w=/0x0:3000x2000/920x613/filters:focal(1260x760:1740x1240):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63280245/thrones_questions_wallk.0.jpg')
s12.image.attach(io: file, filename: 'thrones.jpg')
s12.save

s13 = Story.new(
  title: 'You May Have Forgotten How Good Le’Veon Bell Is',
  subtitle: 'Jets fans may have some sticker shock after the team handed a big deal to a running back, but the former Steeler could be just what Sam Darnold and the New York offense need to take a big jump in 2019',
  body: "#{Faker::Lorem.paragraph_by_chars(3000)}",
  author_id: mike.id,
  all_tags: 'football, athlete, sports'
)
file = EzDownload.open('https://cdn.vox-cdn.com/thumbor/JnxLfLz4K84dt5l6pCijkIBH_Y0=/0x0:3000x2000/920x613/filters:focal(1359x233:1839x713):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63232909/kelly_leveonbell_getty_ringer.0.jpg')
s13.image.attach(io: file, filename: 'bell.jpg')
s13.save

s14 = Story.new(
  title: 'Who Is Kanye West’s Super Stylish Companion?',
  subtitle: 'Who is that stylish woman with the bleach blonde hair and a Starbucks cup who stepped out with Kanye West in Calabasas today?',
  body: "#{Faker::Lorem.paragraph_by_chars(4800)}",
  author_id: stacy.id,
  all_tags: 'kanye, fashion, culture, music'
)
file = EzDownload.open('https://assets.vogue.com/photos/5c6f0ca6c5e4cc2d7d135ac8/master/w_1024%2Cc_limit/00-story-kanye-west-rainbow.jpg')
s14.image.attach(io: file, filename: 'kanye.jpg')
s14.save

s15 = Story.new(
  title: 'Miley Cyrus Just Got a Very Hannah Montana Makeover',
  subtitle: 'Miley Cyrus has officially brought back her early aughts alter-ego, revealing a transformative cut on Twitter last night that recalled her tween pop star past.',
  body: "#{Faker::Lorem.paragraph_by_chars(6500)}",
  author_id: stacy.id,
  all_tags: 'hair, style, miley-cyrus, celebrity'
)
file = EzDownload.open('https://pbs.twimg.com/profile_images/1109224094120046592/5tzJLi7r_400x400.jpg')
s15.image.attach(io: file, filename: 'miley.jpg')
s15.save

s16 = Story.new(
  title: 'Who’s Sleeping in All These Hotel Bunk Beds?',
  subtitle: 'What is it about the absolute childhood joy of sleeping in a bunk bed?',
  body: "#{Faker::Lorem.paragraph_by_chars(4500)}",
  author_id: theo.id,
  all_tags: 'bed, dorm, sleep'
)
file = EzDownload.open('https://assets.vogue.com/photos/5c76c7f63019b42d500e12d9/master/w_1280%2Cc_limit/00-story-image-bunk-beds-in-hotels.jpg')
s16.image.attach(io: file, filename: 'beds.jpg')
s16.save

s17 = Story.new(
  title: 'The Air Max 720 Is the Irresistibly Bouncy Shoe of the Future',
  subtitle: 'Nike is betting that the whole world is ready for super-chunky sneakers.',
  body: "#{Faker::Lorem.paragraph_by_chars(3000)}",
  author_id: stacy.id,
  all_tags: 'style, shoes, nike'
)
file = EzDownload.open('https://media.gq.com/photos/5c9bb2b02ab5b90db539373f/16:9/w_1280%2Cc_limit/air-max-720-0937.jpg')
s17.image.attach(io: file, filename: 'nike.jpg')
s17.save

s18 = Story.new(
  title: 'What to Wear on a First Date',
  subtitle: 'A few foolproof rules to live by.',
  body: "#{Faker::Lorem.paragraph_by_chars(6000)}",
  author_id: stacy.id,
  all_tags: 'fashion, dating, clothing'
)
file = EzDownload.open('https://media.gq.com/photos/5c92a2e0f660a04ba4e84da6/16:9/w_1280%2Cc_limit/First-Date-GQ-03202019_16x9.jpg')
s18.image.attach(io: file, filename: 'clothing.jpg')
s18.save

users = [andrew, matthew, theo, mike, stacy, amanda]

stories = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18]

users.each do |user|
  stories.each do |story|
    Clap.create(user_id: user.id, clapable_type: 'Story', clapable_id: story.id, quantity: rand(10))
  end
end

users.each do |user|
  stories.each do |story|
    if rand(2) === 0
      Comment.create(body: Faker::Lorem.paragraph_by_chars(40 + rand(300)), story_id: story.id, author_id: user.id)
    end
  end
end
