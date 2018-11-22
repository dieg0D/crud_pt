json.extract! comment, :id, :text, :user_name, :created_at, :updated_at
json.url comment_url(comment, format: :json)
