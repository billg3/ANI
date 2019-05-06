json.extract! anime, :id, :title, :episode, :season, :summary, :img_url, :created_at, :updated_at
json.url anime_url(anime, format: :json)
