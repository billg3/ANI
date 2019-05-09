Anime.destroy_all
Review.destroy_all
User.destroy_all


10.times do

User.create(name: Faker::Name.name, email: Faker::Internet.email, password_digest: Faker::Internet.password(42))

end



  Anime.create(title: "one punch man", episode: 3, season: 1, summary: "man punches big", img_url: "https://m.media-amazon.com/images/M/MV5BMzQxMzE5NzM2NV5BMl5BanBnXkFtZTgwMDQ4NTUyNzE@._V1_.jpg")
  Anime.create(title: "bleach", episode: 4, season: 2, summary: "dead alive idk ", img_url: "https://m.media-amazon.com/images/M/MV5BZjE0YjVjODQtZGY2NS00MDcyLThhMDAtZGQwMTZiOWNmNjRiXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX182_CR0,0,182,268_AL_.jpg")
  Anime.create(title: "dbz", episode: 5, season: 3, summary: "it's over 9000!", img_url: "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjv_MKxqY3iAhWrg-AKHd4ZAKgQjRx6BAgBEAU&url=https%3A%2F%2Fgeektyrant.com%2Fnews%2Fnorth-america-is-getting-a-dragon-ball-z-symphonic-tour&psig=AOvVaw0m9JvOk5uhepzVR1ve6UrT&ust=1557452638735144")
  Anime.create(title: "naruto", episode: 6, season: 1, summary: "overcomes the obstacle through love ather than hate", img_url: "https://m.media-amazon.com/images/M/MV5BZmQ5NGFiNWEtMmMyMC00MDdiLTg4YjktOGY5Yzc2MDUxMTE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY268_CR0,0,182,268_AL_.jpg")
  Anime.create(title: "sword art online", episode: 7, season: 2, summary: "", img_url: "https://m.media-amazon.com/images/M/MV5BNTIzMzkzMzEtMjU5OC00NTUzLTkxOGItMGU1NTdjZTE0YjE1XkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_UY268_CR1,0,182,268_AL_.jpg")
  Anime.create(title: "cowboy bebop", episode: 8, season: 3, summary: "see you next time cowboy", img_url: "https://m.media-amazon.com/images/M/MV5BNGNlNjBkODEtZThlOC00YzUxLWI0MjMtMjk3YzJmMDFlNWZlXkEyXkFqcGdeQXVyNjI0MDg2NzE@._V1_UX182_CR0,0,182,268_AL_.jpg")
  Anime.create(title: "death note", episode: 9, season: 1, summary: " supernatutal notebook with no happy ending ", img_url: "https://m.media-amazon.com/images/M/MV5BODkzMjhjYTQtYmQyOS00NmZlLTg3Y2UtYjkzN2JkNmRjY2FhXkEyXkFqcGdeQXVyNTM4MDQ5MDc@._V1_.jpg")
  Anime.create(title: "ergo proxy", episode: 10, season: 2, summary: "cogito ergo sum", img_url: "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiAo-vsqY3iAhWtdt8KHb2YBVkQjRx6BAgBEAU&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt0791205%2F&psig=AOvVaw16YVbEt732ELUA3LECBWjT&ust=1557452763626182")
  Anime.create(title: "gundam", episode: 11, season: 3, summary: "robots in space with lasers", img_url: "https://m.media-amazon.com/images/M/MV5BNDg5MGVlZTAtM2QxMC00NjM2LTlmNGMtMTkyNjc1M2RmZjZhXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg")
  Anime.create(title: "boruto", episode: 12, season: 1, summary: "naruto and sasuke raise a child", img_url: "https://img1.ak.crunchyroll.com/i/spire2/9adde4f9cc8b426d323003388462d70b1551299649_full.jpg")
  Anime.create(title: "pokemon", episode: 12, season: 2, summary: "to be the very best", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/1200px-International_Pok%C3%A9mon_logo.svg.png")
  Anime.create(title: "fullmetal alchemist", episode: 14, season: 3, summary: "a hell of a show", img_url: "https://m.media-amazon.com/images/M/MV5BZmEzN2YzOTItMDI5MS00MGU4LWI1NWQtOTg5ZThhNGQwYTEzXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg")
  Anime.create(title: "neon genesis evangelion", episode: 15, season: 1, summary: "weir", img_url: "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwi2lqurqo3iAhVNh-AKHT7xDMoQjRx6BAgBEAU&url=https%3A%2F%2Fwww.amazon.com%2FNeon-Genesis-Evangelion-Vol-3%2Fdp%2F1421553627&psig=AOvVaw0pEzLGSttP2abVRb3jO3dC&ust=1557452902048197")



Review.create(stars: 3, user_id: 2, anime_id: 6, comment: "cool")
Review.create(stars: 3, user_id: 3, anime_id: 5, comment: "cool")
Review.create(stars: 3, user_id: 4, anime_id: 4, comment: "cool")
Review.create(stars: 3, user_id: 5, anime_id: 3, comment: "cool")
Review.create(stars: 3, user_id: 6, anime_id: 2, comment: "cool")
