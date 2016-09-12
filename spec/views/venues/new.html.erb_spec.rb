require 'rails_helper'

RSpec.describe "venues/new", type: :view do
  let!(:venue) { FactoryGirl.create(:venue) }

  it "renders new venue form" do
    render

    assert_select "form[action=?][method=?]", venues_path, "post" do

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
