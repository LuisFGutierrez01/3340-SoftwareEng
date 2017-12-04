json.extract! player, :id, :user_id, :player_name, :description, :youtube_url, :created_at, :updated_at
json.url player_url(player, format: :json)
