json.extract! trnpost, :id, :image, :title, :description, :comment, :user_id, :created_at, :updated_at
json.url post_url(trnpost, format: :json)
