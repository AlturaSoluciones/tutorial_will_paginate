json.extract! airport, :id, :iata, :iso, :name, :type, :size, :longitude, :latitude, :created_at, :updated_at
json.url airport_url(airport, format: :json)
