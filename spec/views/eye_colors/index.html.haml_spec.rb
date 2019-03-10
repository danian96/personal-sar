require 'rails_helper'

RSpec.describe "eye_colors/index", type: :view do
  before(:each) do
    assign(:eye_colors, [
      EyeColor.create!(
        :name => "Name"
      ),
      EyeColor.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of eye_colors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
