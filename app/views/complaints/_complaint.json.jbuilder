json.extract! complaint, :id, :user_id, :conpany_id, :content, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
