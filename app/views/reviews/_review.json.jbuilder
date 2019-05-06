json.extract! review, :id, :stars, :user_id, :anime_id, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
