json.extract! post, :id, :title, :content, :category_id, :user_id, :likecount, :dislikecount, :reportcount, :commentcount, :created_at, :updated_at
json.url post_url(post, format: :json)