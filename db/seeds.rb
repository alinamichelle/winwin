# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Expertise.destroy_all
Topic.destroy_all
Message.destroy_all
Wish.destroy_all
Wishlist.destroy_all
User.destroy_all

puts "Creating 20 Topics"

Topic.create!([{
name: "Portuguese History"
},

{
name: "Baking"
},

{
name: "Cooking"
},

{
name: "Surfing"
},

{
name: "Yoga"
},

{
name: "Languages"
},

{
name: "Dance"
},

{
name: "Knitting & Crochet"
},

{
name: "Fashion"
},

{
name: "Art"
},

{
name: "Music"
},

{
name: "Guitar"
},

{
name: "Photography"
},

{
name: "Philosophy"
},

{
name: "Medicine"
},

{
name: "Psychology"
},

{
name: "Film"
},

{
name: "Literature"
}])


puts "Topics saved"


puts "Creating 16 Users"

User.create!([{

    email: "1admin@admin.com",
    password: "admin",
    name: "Chloe Cooper",
    role: 21,
    birthday: "1996-11-23",
    location: "Lisbon",
    avatar_url: "youngperson",
    tagline: "Waffles are just pancakes with abs.",
    biography: "Introverted extrovert. I'm a performing arts scholar at RADA. I love hiking, traveling and exploring. Foodie fanatic and Twitter aficionado."
  },

  {
    email: "2admin@admin.com",
    password: "admin",
    name: "Louise Ciccone",
    role: 61,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "madonna",
    tagline: "Also known as 'The Queen of Pop'",
    biography: "Singer, songwriter, actor, businesswoman, and mother. I've led quite a life…"
  },

  {
    email: "3admin@admin.com",
    password: "admin",
    name: "Alina Michelle",
    role: 71,
    birthday: "1946-11-23",
    location: "Lisbon",
    avatar_url: "bakewoman",
    tagline: "Difficult roads often lead to beautiful destinations.",
    biography:  "Italian born and bred, moved to Lisbon 30 years ago to open a little bakery. Cooking and baking runs through my veins."
  },

  {
    email: "4admin@admin.com",
    password: "admin",
    name: "Rosa Beltrán",
    role: 69,
    birthday: "1949-11-23",
    location: "Lisbon",
    avatar_url: "fashionablewoman",
    tagline: "Don't just exist, live.",
    biography: "I've lived quite a life. Worked as a model, photographer, and fashion designer for a number of big names before founding my own fashion house. No matter what Reese Witherspoon says, orange is definitely the new pink."
  },

  {
    email: "5admin@admin.com",
    password: "admin",
    name: "Samuel Tarver",
    role: 79,
    birthday: "1938-11-23",
    location: "Lisbon",
    avatar_url: "bookman",
    tagline: "Make it simple but significant.",
    biography: "Thinker. Reader. Lifelong travel aficionado. I know a lot about world geography and culture from my travels and living across different continents."
  },

 {
    email: "6admin@admin.com",
    password: "admin",
    name: "Anita Franklin",
    role: 61,
    birthday: "1956-11-23",
    location: "Lisbon, Portugal",
    avatar_url: "1aretha",
    tagline: "There is beauty in simplicity.",
    biography: "Lover of philosophy, art, and soul music. Have played a variety of musical instruments since a young age, starting with singing, piano, guitar, and teaching myself others instruments as I grew up."
  },

  {
    email: "7admin@admin.com",
    password: "admin",
    name: "Frank Black",
    role: 81,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "bowtie",
    tagline: "I can't wait to be old enough to pretend I can't hear.",
    biography: "I come from a long line of dentists. But I was always attracted to the pictures, and at a young age got started working in the film industry in Hollywood. My passion is film, and I have a lot of unbelievable behind-the-scene stories to share."
  },

  {
    email: "8admin@admin.com",
    password: "admin",
    name: "Ruth Lina",
    role: 60,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "ruth",
    tagline: "Everything can be solved by a good slice of cake.",
    biography: "Pro chef, I worked in several restaurants all my life before starting my own. I love gardening and growing my own fruit, vegetables, and herbs which I use to try new recipes."
  },

  {
    email: "9admin@admin.com",
    password: "admin",
    name: "Tom Rowsthorn",
    role: 65,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "surferman",
    tagline: "Surf the waves of life",
    biography: "Australian stereotypical surfer, living in Lisbon for the last 35 years. Stayed for the beautiful city, the waves, and the wonderful food."
  },

  {
    email: "10admin@admin.com",
    password: "admin",
    name: "Julio Barbeiro",
    role: 67,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "guitarman",
    tagline: "Most likely to be found with a guitar in hand.",
    biography: "Music scholar, worked as a music producer and sound engineer for several years. My passion is music and the music industry, as well as making new compositions whenever I get a chance."
  },

  {
    email: "11admin@admin.com",
    password: "admin",
    name: "Ricardo Carlos",
    role: 80,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "chessman",
    tagline: "Keep your brain active.",
    biography: "I'm passionate about always learning new things and keeping my brain active. Lately, I have gotten really interested in chess, and learning about astronomy and astrophysics. It is insane to think about how expansive the universe really is."
  },

  {
    email: "12admin@admin.com",
    password: "admin",
    name: "Gabriel Valdemar",
    role: 62,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "artistman",
    tagline: "Do something creative once a week.",
    biography: "Artist and photographer. I own a little gallery and am constantly on the look out for talented artists, painters, and photographers to display in the gallery, to give them the exposure they deserve."
  },

  {
    email: "13admin@admin.com",
    password: "admin",
    name: "Daniella Johansson",
    role: 69,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "poolwoman",
    tagline: "Just keep swimming",
    biography: "I was a professional dancer and gymnast in my time. I still love to dance, and have been discovering new ways to keep active, recently I have been doing a lot of swimming and hiking."
  },

  {
    email: "14admin@admin.com",
    password: "admin",
    name: "André Silva",
    role: 64,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "profman",
    tagline: "You're never too old to learn something new",
    biography: "I've always been passionate about learning new things and picking up new hobbies. I have several university degrees in different subject areas from psychology to engineering, I now work as a professor teaching the new generations."
  },

  {
    email: "15admin@admin.com",
    password: "admin",
    name: "Tina Andrade",
    role: 64,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "hulawoman",
    tagline: "Dance like no one is watching",
    biography: "Professional dancer, with a passion for inventing new recipes."
  },

  {
    email: "16admin@admin.com",
    password: "admin",
    name: "Kaj Schattner",
    role: 64,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "germanman",
    tagline: "Beer time?",
    biography: "Berliner retired in Lisbon. Worked in the finance industry and now love to spend my time drinking new beers and traveling the country on my motorbike. Weakness for Mexican food, especially burritos. "
  }

])


  puts "Users Saved"


