require 'rails_helper'

RSpec.describe 'venues/index', type: :view do
  let!(:venues) do
    FactoryGirl.create_pair(
      :venue,
      name: 'Name',
      email: 'Email',
      phone: 'Phone',
      address: 'Address',
      description: 'MyText',
      main_image_url: 'Main Image Url',
      image_2_url: 'Image 2 Url',
      image_3_url: 'Image 3 Url',
      venue_type: 2
    )
  end

  it 'renders a list of venues' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Email'.to_s, count: 2
    assert_select 'tr>td', text: 'Phone'.to_s, count: 2
    assert_select 'tr>td', text: 'Address'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'Main Image Url'.to_s, count: 2
    assert_select 'tr>td', text: 'Image 2 Url'.to_s, count: 2
    assert_select 'tr>td', text: 'Image 3 Url'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
