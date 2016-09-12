require 'faker'

FactoryGirl.define do
  factory :venue do |f|
    f.name { Faker::Company.name }
    f.email { Faker::Internet.email }
    f.phone { Faker::PhoneNumber.phone_number }
    f.address { Faker::Address.postcode }
    f.description { Faker::Hipster.paragraph }
    f.main_image_url { Faker::Placeholdit.image }
    f.image_2_url { Faker::Placeholdit.image }
    f.image_3_url { Faker::Placeholdit.image }
    f.venue_type { rand(0...3) }
  end
end
