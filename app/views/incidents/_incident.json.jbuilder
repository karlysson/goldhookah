json.extract! incident, :id, :description, :client_event_id, :created_at, :updated_at
json.url incident_url(incident, format: :json)
