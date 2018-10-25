json.extract! client_event, :id, :event_id, :client_id, :payment_method_id, :ticket_id, :created_at, :updated_at
json.url client_event_url(client_event, format: :json)
