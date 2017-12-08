json.extract! event, :id, :goalFunds, :currentFunds, :dateCreated, :dateDue, :createdBy, :title, :info, :created_at, :updated_at
json.url event_url(event, format: :json)
