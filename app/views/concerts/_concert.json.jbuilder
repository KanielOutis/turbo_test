json.extract! concert, :id, :title, :date, :body, :created_at, :updated_at
json.url concert_url(concert, format: :json)
