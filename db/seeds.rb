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
  password: 'password'
)
file = EzDownload.open('https://b.kisscc0.com/20180718/uzw/kisscc0-computer-icons-ninja-in-black-icon-design-kunai-ninja-5b4ed90cb5c4e6.4784197915318940287445.jpg')
guest.avatar.attach(io: file, filename: 'guest.jpg')
guest.save



thom = User.new(
  name: 'Thom Yorke',
  bio: 'Lead singer of Radiohead, human rights activist.',
  email: 'thom@gmail.com',
  password: 'password'
)
file = EzDownload.open('https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Thom_Yorke_Austin_Texas_2016_%28cropped%29.jpg/330px-Thom_Yorke_Austin_Texas_2016_%28cropped%29.jpg')
thom.avatar.attach(io: file, filename: 'thom.jpg')
thom.save

beyonce = User.new(
  name: 'Beyonce Knowles',
  bio: 'Singer, songwriter, actress, record producer and dancer.  Fierce fashion icon.',
  email: 'beyonce@gmail.com',
  password: 'password'
)
file = EzDownload.open('https://upload.wikimedia.org/wikipedia/commons/f/f2/Beyonce_-_The_Formation_World_Tour%2C_at_Wembley_Stadium_in_London%2C_England.jpg')
beyonce.avatar.attach(io: file, filename: 'beyonce.jpg')
beyonce.save

erdos = User.new(
  name: 'Paul Erdos',
  bio: 'Hungarian Mathematician, The Oddballs Oddball',
  email: 'erdos@gmail.com',
  password: 'password'
)
file = EzDownload.open('https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Erdos_budapest_fall_1992_%28cropped%29.jpg/300px-Erdos_budapest_fall_1992_%28cropped%29.jpg')
erdos.avatar.attach(io: file, filename: 'erdos.jpg')
erdos.save

kamala = User.new(
  name: 'Kamala Harris',
  bio: 'Attorney, Senator of California, Presidential hopeful',
  email: 'kamala@gmail.com',
  password: 'password'
)
file = EzDownload.open('https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Senator_Harris_official_senate_portrait.jpg/330px-Senator_Harris_official_senate_portrait.jpg')
kamala.avatar.attach(io: file, filename: 'kamala.jpg')
kamala.save

foucault = User.new(
  name: 'Michel Foucault',
  bio: 'French philosopher, historian of ideas, social theorist, literary critic',
  email: 'foucault@gmail.com',
  password: 'password'
)
file = EzDownload.open('https://upload.wikimedia.org/wikipedia/en/5/52/Foucault5.jpg')
foucault.avatar.attach(io: file, filename: 'foucault.jpg')
foucault.save

greta = User.new(
  name: 'Greta Gerwig',
  bio: 'Actress, playwright, director, screenwriter. Mumblecore It Girl',
  email: 'greta@gmail.com',
  password: 'password'
)
file = EzDownload.open('https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Greta_Gerwig_Berlinale_2018.jpg/330px-Greta_Gerwig_Berlinale_2018.jpg')
greta.avatar.attach(io: file, filename: 'greta.jpg')
greta.save

stephen = User.new(
  name: 'Stephen A Smith',
  bio: "'Sports radio host, journalist, hater of asinine comments",
  email: 'stephen@gmail.com',
  password: 'password'
)
file = EzDownload.open('https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Stephen_A._Smith_%2834462554722%29.jpg/330px-Stephen_A._Smith_%2834462554722%29.jpg')
stephen.avatar.attach(io: file, filename: 'stephen.jpg')
stephen.save

constance = User.new(
  name: 'Constance Wu',
  bio: "'Actress, Taiwanese-American influencer",
  email: 'constance@gmail.com',
  password: 'password'
)
file = EzDownload.open('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Constance_wu.jpg/330px-Constance_wu.jpg')
constance.avatar.attach(io: file, filename: 'constance.jpg')
constance.save

shinzo = User.new(
  name: 'Shinzo Abe',
  bio: "'Leader of Liberal Democratic Party, Proponent of Abenomics",
  email: 'shinzo@gmail.com',
  password: 'password'
)
file = EzDownload.open('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Shinz%C5%8D_Abe_Official.jpg/330px-Shinz%C5%8D_Abe_Official.jpg')
shinzo.avatar.attach(io: file, filename: 'shinzo.jpg')
shinzo.save

demi = User.new(
  name: 'Demi Lovato',
  bio: "'This Is Me, Sorry Not Sorry",
  email: 'demi@gmail.com',
  password: 'password'
)
file = EzDownload.open('http://hdqwalls.com/wallpapers/demi-lovato-2018-pc.jpg')
demi.avatar.attach(io: file, filename: 'demi.jpg')
demi.save


s1 = Story.new(
  title: 'Do We Need Zoos?',
  subtitle: 'Few people have asked why a zoo, full of dangerous, or not-so dangerous animals, is even necessary',
  body: "#{Faker::Hipster.paragraph_by_chars(5000)}",
  author_id: kamala.id,
  all_tags: 'zoo, debate, animals'
)
file = EzDownload.open('http://s109725.gridserver.com/img/puzzles/lrg/59623-a-trip-to-the-zoo.jpg')
s1.image.attach(io: file, filename: 'zoo.jpg')
s1.save 

s2 = Story.new(
  title: 'The Democratic Party Is Radicalizing',
  subtitle: 'Extremism isn’t just affecting the GOP',
  body: "#{Faker::Hipster.paragraph_by_chars(3000)}",
  author_id: foucault.id,
  all_tags: 'bernie, democracy, politics'
)
file = EzDownload.open('https://i.kinja-img.com/gawker-media/image/upload/s--DZZV8tVu--/c_scale,f_auto,fl_progressive,q_80,w_800/fh6gcqaczedyiziu6fbz.jpg')
s2.image.attach(io: file, filename: 'bernie.jpg')
s2.save 

s3 = Story.new(
  title: 'With Great Power Comes a Lot of Fun',
  subtitle: 'A different kind of superhero movie, Shazam! makes an all-too-familiar tale of derring-do feel intimate, character-driven, and inventively funny',
  body: "#{Faker::Hipster.paragraph_by_chars(7000)}",
  author_id: greta.id,
  all_tags: 'shazam, movie, fun'
)
file = EzDownload.open('https://www.syfy.com/sites/syfy/files/styles/1200x680/public/2017/07/shazam-dc-comics.jpg')
s3.image.attach(io: file, filename: 'shazam.jpg')
s3.save 

s4 = Story.new(
  title: 'Word Clouds',
  subtitle: 'The most frequently occurring words for Starbucks baristas, mid-thirties dudes clinging to youth, and more',
  body: "#{Faker::Hipster.paragraph_by_chars(3000)}",
  author_id: shinzo.id,
  all_tags: 'barista, brooklyn, productivity, hipster'
)
file = EzDownload.open('https://s23527.pcdn.co/wp-content/uploads/2019/03/hipster-745x497.jpg.optimal.jpg')
s4.image.attach(io: file, filename: 'hipster.jpg')
s4.save 

s5 = Story.new(
  title: 'A.I. Will Enhance — Not End — Human Art',
  subtitle: 'Increasingly sophisticated artificial intelligence suggests that machines could unlock the secrets of human creativity. But have we been here before?',
  body: "#{Faker::Hipster.paragraph_by_chars(3000)}",
  author_id: shinzo.id,
  all_tags: 'art, ai, machine-learning'
)
file = EzDownload.open('https://media.wired.com/photos/5bf321ac86ef9a0ff73f0177/master/pass/Ai-Tom-TA.jpg')
s5.image.attach(io: file, filename: 'art-ai.jpg')
s5.save 

s6 = Story.new(
  title: 'An Open Letter to Uber: We Need to Do Right By Our Drivers',
  subtitle: 'Signed by an employee of Uber',
  body: "#{Faker::Hipster.paragraph_by_chars(4000)}",
  author_id: shinzo.id,
  all_tags: 'uber, car, equality'
)
file = EzDownload.open('https://zdnet4.cbsistatic.com/hub/i/r/2016/02/02/8c61c394-70e1-4a10-bd86-781dd986c2a0/resize/770xauto/30f5a57bb5d509a1a522b3f987c1e197/uber.jpg')
s6.image.attach(io: file, filename: 'uber.jpg')
s6.save 

s7 = Story.new(
  title: 'This Is Silicon Valley',
  subtitle: 'I feel myself becoming part of the machine',
  body: "#{Faker::Hipster.paragraph_by_chars(5000)}",
  author_id: thom.id,
  all_tags: 'silicon-valley, tech, productivity'
)
file = EzDownload.open('https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2017/05/17/104476775-EA_Google.1910x1000.jpg')
s7.image.attach(io: file, filename: 'baby.jpg')
s7.save 

s8 = Story.new(
  title: 'Strategies to Pull Yourself Out of a Bad Mood',
  subtitle: 'How to take control of your emotions when things aren’t going your way',
  body: "#{Faker::Hipster.paragraph_by_chars(3000)}",
  author_id: demi.id,
  all_tags: 'motivation, inspiration, mood'
)
file = EzDownload.open('http://www.kosovapress.com/public/uploads/image/lum.jpg')
s8.image.attach(io: file, filename: 'mood.jpg')
s8.save 

s9 = Story.new(
  title: 'How to get better at writing CSS',
  subtitle: 'Let’s not beat around the bush: writing great CSS code can be painful.',
  body: "#{Faker::Hipster.paragraph_by_chars(3000)}",
  author_id: erdos.id,
  all_tags: 'CSS, style, productivity'
)
file = EzDownload.open('https://www.ostraining.com//images/coding/html5-css3-hd.jpg')
s9.image.attach(io: file, filename: 'css.jpg')
s9.save 

s10 = Story.new(
  title: 'Watch Joaquin Phoenix Go Insane in the chilling first teaser for JOKER',
  subtitle: 'I used to think that my life was a tragedy. But now I realize it’s a comedy',
  body: "#{Faker::Hipster.paragraph_by_chars(3000)}",
  author_id: thom.id,
  all_tags: 'joker, joaquin-phoenix, method-acting, movie'
)
file = EzDownload.open('https://cdn3.movieweb.com/i/article/8VWyDm76Bq8b5Dkjf0HDcjyq3mU025/798:50/Joker-Movie-Wraps-Production-Joaquin-Phoenix-Set-Photos.jpg')
s10.image.attach(io: file, filename: 'joker.jpg')
s10.save 

s11 = Story.new(
  title: 'Trick Yourself Into Creating a Fresh Start',
  subtitle: 'How to get the feeling of a clean slate without a major event or life change',
  body: "#{Faker::Hipster.paragraph_by_chars(7000)}",
  author_id: demi.id,
  all_tags: 'motivation, inspiration, productivity'
)
file = EzDownload.open('http://www.easetofit.com/foto/bank/images2/Tongue-tie-in-babies.jpg')
s11.image.attach(io: file, filename: 'baby.jpg')
s11.save 

s12 = Story.new(
  title: "What Do Social Media Breaks Accomplish?",
  subtitle: 'It depends on who you are',
  body: "#{Faker::Hipster.paragraph_by_chars(4000)}",
  author_id: constance.id,
  all_tags: 'social, media, productivity, time'
)
file = EzDownload.open('https://static1.squarespace.com/static/573b33963c44d88be68c246c/t/5bace8aea4222ff403b0a35a/1538076938997/social-media.jpg')
s12.image.attach(io: file, filename: 'social-media.jpg')
s12.save

s13 = Story.new(
  title: 'Meet the People Coding Our World', subtitle: 'An interview with Clive Thompson, author of the great new book ‘Coders’',
  body: "#{Faker::Hipster.paragraph_by_chars(5000)}",
  author_id: erdos.id,
  all_tags: 'coding, books, interview, engineering'
)
file = EzDownload.open('https://s3.amazonaws.com/tribeca_cms_production/uploads/article/header_marquee/52d40c218528629e3f000001/large_Clive_Thompson_Catalina_Kulczar.jpg')
s13.image.attach(io: file, filename: 'cliveThompson.jpg')
s13.save 

s14 = Story.new(
  title: 'Your Productivity Hinges on How You Arrange Your Desk',
  subtitle: 'Advice from nine design, career, and organization experts on making your space work for you',
  body: "#{Faker::Hipster.paragraph_by_chars(1500)}",
  author_id: kamala.id,
  all_tags: 'productivity, work-week, ergonomics'
)
file = EzDownload.open('https://1pw8z314201u11lztq1ulowz-wpengine.netdna-ssl.com/wp-content/uploads/2016/04/increase-business-productivity.jpg')
s14.image.attach(io: file, filename: 'productivity.jpg')
s14.save

s15 = Story.new(
  title: 'I’m a Little Too Giving. I Think I Know Why.',
  subtitle: 'Using the hunger I experienced as a kid to teach mine the power of generosity',
  body: "#{Faker::Hipster.paragraph_by_chars(4500)}",
  author_id: foucault.id,
  all_tags: 'generosity, gratitude, curiosity'
)
file = EzDownload.open('https://membership.sfwa.org/resources/Pictures/Donate.jpg')
s15.image.attach(io: file, filename: 'donate.jpg'
)
s15.save

s16 = Story.new(
  title: 'What If Mark Zuckerberg Had Stayed in School?',
  subtitle: 'Two more years at Harvard would have taught him some valuable lessons — and changed the course of Facebook',
  body: "#{Faker::Hipster.paragraph_by_chars(5500)}",
  author_id: foucault.id,
  all_tags: 'facebook, college, harvard'
)
file = EzDownload.open('https://fortunedotcom.files.wordpress.com/2016/11/163292239.jpg')
s16.image.attach(io: file, filename: 'zuckerberg.jpg')
s16.save

s17 = Story.new(
  title: 'Heres everything worth watching on Netflix',
  subtitle: 'Plan your binge watching today',
  body: "#{Faker::Hipster.paragraph_by_chars(6500)}",
  author_id: greta.id,
  all_tags: 'television, netflix'
)
file = EzDownload.open('https://static.makeuseof.com/wp-content/uploads/2016/01/netflix-everywhere-670x335.jpg')
s17.image.attach(io: file, filename: 'netflix.jpg')
s17.save

s18 = Story.new(
  title: 'Megan Fox looks unrecognizable in her new role',
  subtitle: 'Youve never seen Megan Fox quite like this before.',
  body: "#{Faker::Hipster.paragraph_by_chars(3700)}",
  author_id: greta.id,
  all_tags: 'megan, celebrity, movie'
)
file = EzDownload.open('https://www.syfy.com/sites/syfy/files/styles/1200x680/public/wire/legacy/images/jennifersbody_meganfox_0.jpg')
s18.image.attach(io: file, filename: 'megan.jpg')
s18.save 

s19 = Story.new(
  title: 'The Simple Truth Behind Reading 200 Books a Year',
  subtitle: 'And how to make it a habit',
  body: "#{Faker::Hipster.paragraph_by_chars(5000)}",
  author_id: foucault.id,
  all_tags: 'productivity, reading, books, success'
)
file = EzDownload.open('https://bedfordnhlibrary.org/sites/bedfordnhlibrary.org/files/books.jpg')
s19.image.attach(io: file, filename: 'books.jpg')
s19.save

s20 = Story.new(
  title: 'The Five Most Interesting Players in the NBA',
  subtitle: 'The individuals who piqued our interest the most',
  body: "#{Faker::Hipster.paragraph_by_chars(6000)}",
  author_id: stephen.id,
  all_tags: 'basketball, athletes, sports, professionals'
)
file = EzDownload.open('https://cdn.vox-cdn.com/thumbor/5q9Pc1TbXs-ONJjkKDaEGKPZMxM=/0x0:3000x2000/920x613/filters:focal(1247x439:1727x919):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63319436/devine_5_interesting_players_getty_ringer_13.0.jpg')
s20.image.attach(io: file, filename: 'nba.jpg')
s20.save

s21 = Story.new(
  title: 'Bryce Harper’s Unholy Baseball Trinity',
  subtitle: 'The Phillies’ new $330 million man is a rare breed: a true baseball celebrity.',
  body: "#{Faker::Hipster.paragraph_by_chars(6500)}",
  author_id: stephen.id,
  all_tags: 'baseball, athlete, sports'
)
file = EzDownload.open('https://cdn.vox-cdn.com/thumbor/7h__jPk9TSGz_SvCr9azLuYP7Mc=/0x0:3200x1800/1070x602/filters:focal(1202x514:1714x1026):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63314001/bryce_harper_katie_baker_2.0.jpg')
s21.image.attach(io: file, filename: 'harper.jpg')
s21.save

s22 = Story.new(
  title: '‘Game of Thrones’ Loose Ends: Will Our Heroes Learn How the Wall Was Built?',
  subtitle: 'The 300-mile-long structure stood for thousands of years before the Night King breached it in Season 7’s finale. No one knows exactly how it was built—but finding out could be an important step to stopping the White Walkers.',
  body: "#{Faker::Hipster.paragraph_by_chars(3300)}",
  author_id: erdos.id,
  all_tags: 'thrones, fantasy, television'
)
file = EzDownload.open('https://cdn.vox-cdn.com/thumbor/5LVhDyBuouu5hgBx7XP0Zit-F-w=/0x0:3000x2000/920x613/filters:focal(1260x760:1740x1240):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63280245/thrones_questions_wallk.0.jpg')
s22.image.attach(io: file, filename: 'thrones.jpg')
s22.save

s23 = Story.new(
  title: 'You May Have Forgotten How Good Le’Veon Bell Is',
  subtitle: 'Jets fans may have some sticker shock after the team handed a big deal to a running back, but the former Steeler could be just what Sam Darnold and the New York offense need to take a big jump in 2019',
  body: "#{Faker::Hipster.paragraph_by_chars(3000)}",
  author_id: stephen.id,
  all_tags: 'football, athlete, sports'
)
file = EzDownload.open('https://cdn.vox-cdn.com/thumbor/JnxLfLz4K84dt5l6pCijkIBH_Y0=/0x0:3000x2000/920x613/filters:focal(1359x233:1839x713):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63232909/kelly_leveonbell_getty_ringer.0.jpg')
s23.image.attach(io: file, filename: 'bell.jpg')
s23.save

s24 = Story.new(
  title: 'Who Is Kanye West’s Super Stylish Companion?',
  subtitle: 'Who is that stylish woman with Kanye West in Calabasas today?',
  body: "#{Faker::Hipster.paragraph_by_chars(4800)}",
  author_id: greta.id,
  all_tags: 'kanye, fashion, culture, music'
)
file = EzDownload.open('https://djbooth.net/.image/t_share/MTUzNDg1OTU0NDM5MTI4MjYy/kanye-nina-1jpg.jpg')
s24.image.attach(io: file, filename: 'kanye.jpg')
s24.save

s25 = Story.new(
  title: 'Miley Cyrus Just Got a Very Hannah Montana Makeover',
  subtitle: 'Miley Cyrus has officially brought back her early aughts alter-ego, revealing a transformative cut on Twitter last night that recalled her tween pop star past.',
  body: "#{Faker::Hipster.paragraph_by_chars(6500)}",
  author_id: greta.id,
  all_tags: 'hair, style, miley-cyrus, celebrity'
)
file = EzDownload.open('http://www.teenidols4you.com/blink/Actors/miley_cyrus/miley_cyrus_1259600358.jpg')
s25.image.attach(io: file, filename: 'miley.jpg')
s25.save

s26 = Story.new(
  title: 'Who’s Sleeping in All These Hotel Bunk Beds?',
  subtitle: 'What is it about the absolute childhood joy of sleeping in a bunk bed?',
  body: "#{Faker::Hipster.paragraph_by_chars(4500)}",
  author_id: foucault.id,
  all_tags: 'bed, dorm, sleep'
)
file = EzDownload.open('https://assets.vogue.com/photos/5c76c7f63019b42d500e12d9/master/w_1280%2Cc_limit/00-story-image-bunk-beds-in-hotels.jpg')
s26.image.attach(io: file, filename: 'beds.jpg')
s26.save

s27 = Story.new(
  title: 'The Air Max 720 Is the Irresistibly Bouncy Shoe of the Future',
  subtitle: 'Nike is betting that the whole world is ready for super-chunky sneakers.',
  body: "#{Faker::Hipster.paragraph_by_chars(3000)}",
  author_id: kamala.id,
  all_tags: 'style, shoes, nike'
)
file = EzDownload.open('https://media.gq.com/photos/5c9bb2b02ab5b90db539373f/16:9/w_1280%2Cc_limit/air-max-720-0937.jpg')
s27.image.attach(io: file, filename: 'nike.jpg')
s27.save

s28 = Story.new(
  title: 'What to Wear on a First Date',
  subtitle: 'A few foolproof rules to live by.',
  body: "#{Faker::Hipster.paragraph_by_chars(6000)}",
  author_id: kamala.id,
  all_tags: 'fashion, dating, clothing'
)
file = EzDownload.open('https://amp.thisisinsider.com/images/5ba24be19c888da1068b4568-750-562.jpg')
s28.image.attach(io: file, filename: 'firstdate.jpg')
s28.save

s29 = Story.new(
  title: 'Americans Are Smart About Science',
  subtitle: 'And educating them won’t solve political problems',
  body: "#{Faker::Hipster.paragraph_by_chars(8000)}",
  author_id: erdos.id,
  all_tags: 'politics, america, science'
)
file = EzDownload.open('https://pixel.nymag.com/imgs/daily/science/2016/01/06/06-grattitude-brain-scan.w700.h700.jpg')
s29.image.attach(io: file, filename: 'american.jpg')
s29.save

s30 = Story.new(
  title: 'As the Stage Gets Bigger, Zion Williamson Only Jumps Higher',
  subtitle: 'The Duke star’s box score was amazing enough in the Blue Devils’ Sweet 16 win over Virginia Tech, but the eye test was even more stunning',
  body: "#{Faker::Hipster.paragraph_by_chars(2000)}",
  author_id: stephen.id,
  all_tags: 'college, duke, zion, basketball'
)
file = EzDownload.open('https://cdn.vox-cdn.com/thumbor/xz_2B2kfUonmJRJCGBu_8eKGlsM=/0x0:4548x3032/920x613/filters:focal(2126x836:2852x1562):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63323974/1139198944.jpg.0.jpg')
s30.image.attach(io: file, filename: 'zion.jpg')
s30.save

s31 = Story.new(
  title: 'A Seeded Story for our Guest',
  subtitle: 'Imagine all the people...',
  body: "#{Faker::Hipster.paragraph_by_chars(5000)}",
  author_id: guest.id,
  all_tags: 'inspiration, example'
)
file = EzDownload.open('https://upload.wikimedia.org/wikipedia/commons/1/16/HDRI_Sample_Scene_Balls_%28JPEG-HDR%29.jpg')
s31.image.attach(io: file, filename: 'guest-example.jpg')
s31.save


users = [thom, beyonce, erdos, kamala, foucault, greta, stephen, constance, shinzo, demi]

stories = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31]

users.each do |user|
  stories.each do |story|
    Clap.create(user_id: user.id, clapable_type: 'Story', clapable_id: story.id, quantity: rand(10))
  end
end

users.each do |user|
  stories.each do |story|
    if rand(2) === 0
      Comment.create(body: Faker::Hipster.paragraph_by_chars(40 + rand(300)), story_id: story.id, author_id: user.id)
    end
  end
end
