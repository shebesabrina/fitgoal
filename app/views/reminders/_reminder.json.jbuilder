json.extract! reminder, :id, :name, :phone_number, :time, :created_at, :updated_at
json.url reminder_url(reminder, format: :json)
