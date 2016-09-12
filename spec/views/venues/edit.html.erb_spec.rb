require 'rails_helper'

RSpec.describe "venues/edit", type: :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :address => "MyString",
      :description => "MyText",
      :main_image_url => "MyString",
      :image_2_url => "MyString",
      :image_3_url => "MyString",
      :venue_type => 'barn'
    ))
  end

  it "renders the edit venue form" do
    render

    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do

      assert_select "input#venue_name[name=?]", "venue[name]"

      assert_select "input#venue_email[name=?]", "venue[email]"

      assert_select "input#venue_phone[name=?]", "venue[phone]"

      assert_select "input#venue_address[name=?]", "venue[address]"

      assert_select "textarea#venue_description[name=?]", "venue[description]"

      assert_select "input#venue_main_image_url[name=?]", "venue[main_image_url]"

      assert_select "input#venue_image_2_url[name=?]", "venue[image_2_url]"

      assert_select "input#venue_image_3_url[name=?]", "venue[image_3_url]"

      assert_select "input#venue_venue_type[name=?]", "venue[venue_type]"
    end
  end
end
