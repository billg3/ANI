
require 'unirest'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  #make the web request
# def api
#   data = JSON.parse(RestClient.get('https://anilist.co/search/anime'))
# end

#
# response = Unirest.post “https://Anilistmikilior1V1.p.rapidapi.com/createAnimeListEntry“,
#  headers:{
#    “X-RapidAPI-Host” => “Anilistmikilior1V1.p.rapidapi.com”,
#    “X-RapidAPI-Key” => “4bb91dacc1mshbe6c51b6318f85dp129908jsn8190ef478cf7",
#    “Content-Type” => “application/x-www-form-urlencoded”
#  }
#



#
#
# a = User.create(name:"jerry", email:"jerry@jmail.com", password_digest: "nil")
#
# b = Anime.create(title: "one punch man", episode: 3, season: 1, summary: "overcomes the obstacle", img_url: "nil")
#
# c = Review.create(stars: 4, user_id: 1, anime_id: 1)

10.times do

User.create(name: Faker::Name.name, email: Faker::Internet.email, password_digest: Faker::Internet.password(42))

end



  Anime.create(title: "one punch man", episode: 3, season: 1, summary: "man punches big", img_url: "nil")
  Anime.create(title: "bleach", episode: 4, season: 2, summary: "dead alive idk ", img_url: "nil")
  Anime.create(title: "dbz", episode: 5, season: 3, summary: "it's over 9000!", img_url: "nil")
  Anime.create(title: "naruto", episode: 6, season: 1, summary: "overcomes the obstacle through love ather than hate", img_url: "nil")
  Anime.create(title: "sword art online", episode: 7, season: 2, summary: "", img_url: "nil")
  Anime.create(title: "cowboy bebop", episode: 8, season: 3, summary: "see you next time cowboy", img_url: "nil")
  Anime.create(title: "death note", episode: 9, season: 1, summary: " supernatutal notebook with no happy ending ", img_url: "nil")
  Anime.create(title: "ergo proxy", episode: 10, season: 2, summary: "cogito ergo sum", img_url: "nil")
  Anime.create(title: "gundam", episode: 11, season: 3, summary: "robots in space with lasers", img_url: "nil")
  Anime.create(title: "boruto", episode: 12, season: 1, summary: "naruto and sasuke raise a child", img_url: "nil")
  Anime.create(title: "pokemon", episode: 12, season: 2, summary: "to be the very best", img_url: "nil")
  Anime.create(title: "fullmetal alchemist", episode: 14, season: 3, summary: "a hell of a show", img_url: "nil")
