require 'rails_helper'

RSpec.describe "skin_colors/index", type: :view do
  before(:each) do
    assign(:skin_colors, [
      SkinColor.create!(
        :name => "Name"
      ),
      SkinColor.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of skin_colors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
