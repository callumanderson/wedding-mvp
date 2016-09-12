require 'rails_helper'

RSpec.describe Venue, type: :model do
  let(:no_name) { FactoryGirl.build(:venue, name: nil) }
  let(:no_email) { FactoryGirl.build(:venue, email: nil) }
  let(:no_address) { FactoryGirl.build(:venue, address: nil) }
  let(:no_description) { FactoryGirl.build(:venue, description: nil) }
  let(:no_main_img) { FactoryGirl.build(:venue, main_image_url: nil) }
  let(:no_type) { FactoryGirl.build(:venue, venue_type: nil) }
  let(:valid_venue) { FactoryGirl.create(:venue) }

  it 'is invalid without a name' do
    expect(no_name).not_to be_valid
  end
  it 'is invalid without an email' do
    expect(no_email).not_to be_valid
  end
  it 'is invalid without an address' do
    expect(no_address).not_to be_valid
  end
  it 'is invalid without a description' do
    expect(no_description).not_to be_valid
  end
  it 'is invalid without a main_image_url' do
    expect(no_main_img).not_to be_valid
  end
  it 'is invalid without a type' do
    expect(no_type).not_to be_valid
  end
  it 'should be valid when created with required fields' do
    expect(valid_venue).to be_valid
  end
end
