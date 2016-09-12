json.extract! venue, :id, :name, :email, :phone, :address, :description, :main_image_url, :image_2_url, :image_3_url, :venue_type, :created_at, :updated_at
json.url venue_url(venue, format: :json)
