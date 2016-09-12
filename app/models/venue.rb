class Venue < ApplicationRecord
  validates_presence_of :name, :email, :address, :description, :main_image_url, :venue_type
  enum venu_type: { barn: 0, castle: 1, town: 2, country: 3 }
end
