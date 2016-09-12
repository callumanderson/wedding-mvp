require 'rails_helper'

RSpec.describe "venues/show", type: :view do
  let!(:venue) { FactoryGirl.create(:venue) }

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Main Image Url/)
    expect(rendered).to match(/Image 2 Url/)
    expect(rendered).to match(/Image 3 Url/)
    expect(rendered).to match(/0/)
  end
end
