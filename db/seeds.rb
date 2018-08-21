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

puts "creating 10 topics"

Topic.create!([{
name: "Mexican History"
},

{
name: "Polish Traditions"
},

{
name: "Traditional folklore"
},

{
name: "Weaving"
},

{
name: "Fishing"
},

{
name: "Languages"
},

{
name: "Storytelling"
},

{
name: "Cooking"
},

{
name: "History"
}])


puts "topics saved"


puts "creating users"

User.create!([{

    email: "1admin@admin.com",
    password: "admin",
    name: Faker::Name.name,
    role: 21,
    birthday: "1996-11-23",
    location: "Lisbon",
    avatar_url: "1designstudent",
    tagline: Faker::Seinfeld.quote,
    biography: "Bacon fanatic. Explorer. Music scholar. Internetaholic. Organizer. Introvert. Writer. Twitter aficionado."
  },

  {
    email: "2admin@admin.com",
    password: "admin",
    name: Faker::Name.name,
    role: 61,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "1gypsylady",
    tagline: "Faker Seinfeld quote",
    biography: "Lifelong introvert. Zombie maven. Passionate internet enthusiast."
  },

  {
    email: "3admin@admin.com",
    password: "admin",
    name: "Louise Veronica Ciccone",
    role: 71,
    birthday: "1946-11-23",
    location: "Lisbon",
    avatar_url: "1Zlat_a_Luc_218",
    tagline: Faker::Seinfeld.quote,
    biography:  "I was born in Bay City, Michigan, on August 16, 1958, to parents Silvio 'Tony' Ciccone and Madonna Fortin. Tony, the son of Italian immigrants, was the first of his family to go to college, where he earned a degree in engineering."
  },

  {
    email: "4admin@admin.com",
    password: "admin",
    name: "Rosa Beltrán",
    role: 69,
    birthday: "1949-11-23",
    location: "Lisbon",
    avatar_url: "1redheadlady",
    tagline: Faker::Seinfeld.quote,
    biography: "I was born in El Rosario Sinaloa, where I completed secretarial studies and participated in singing competitions. I then moved to Mexico City but would return often to Rosario, working as a secretary at Mexico's number-one radio station, XEW."
  },

  {
    email: "5admin@admin.com",
    password: "admin",
    name: "Sam Wong",
    role: 79,
    birthday: "1938-11-23",
    location: "Lisbon",
    avatar_url: "1old-man",
    tagline: Faker::Seinfeld.quote,
    biography: "Organizer. Thinker. Reader. Lifelong travel aficionado. Communicator. Proud tv enthusiast. Friendly music fan. Evil food lover."
  },

 {
    email: "6admin@admin.com",
    password: "admin",
    name: "Anita Franklin",
    role: 61,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "1aretha",
    tagline: Faker::Seinfeld.quote,
    biography: "When my soul was in the lost and found, you came along to claim it. I didn't know just what was wrong with me, until your kiss helped me name it."
  },

  {
    email: "7admin@admin.com",
    password: "admin",
    name: "Frank Black",
    role: 61,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "1bowtie",
    tagline: Faker::Seinfeld.quote,
    biography: "Come fly with me, let's float down to Peru. In llama land, there's a one man band, and he'll toot his flute for you; come on."
  },

  {
    email: "8admin@admin.com",
    password: "admin",
    name: "Loretta Lina",
    role: 61,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "1whitelady_copie",
    tagline: Faker::Seinfeld.quote,
    biography: "Well, I was born a coal miner's daughter. In a cabin on a hill in Butcher Holler. We were poor, but we had love That's the one thing that Daddy made sure of."
  },

  {
    email: "9admin@admin.com",
    password: "admin",
    name: "Carlos Montalbán",
    role: 61,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "1darkolderman",
    tagline: Faker::Seinfeld.quote,
    biography: "He was the older brother of actor Ricardo Montalbán. Although not as famous as his younger brother, he is notable for having starred as 'El Exigente' in a series of coffee advertisements for Savarin Coffee in the 1960s and 1970s, and for portraying two different characters named 'Vargas'."
  },

  {
    email: "10admin@admin.com",
    password: "admin",
    name: "Opy Whitaker",
    role: 61,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "1oldmanpark",
    tagline: Faker::Seinfeld.quote,
    biography: "I was born and raised in Eastern Oklahoma, where I grew up hunting on family land and fishing on the local lake. I started a tournament career fishing with various partners including my uncles and dad and together we won many team tournaments."
  },

  {
    email: "11admin@admin.com",
    password: "admin",
    name: "Sabrina Corvo",
    role: 61,
    birthday: "1956-11-23",
    location: "Lisbon",
    avatar_url: "1redheadlady",
    tagline: Faker::Seinfeld.quote,
    biography: 'I grew up in a small village in the mountains where we had many traditional stories and women lived in trees.'
  }])


  puts "users saved"


