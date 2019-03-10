require 'rails_helper'

RSpec.describe "skin_colors/edit", type: :view do
  before(:each) do
    @skin_color = assign(:skin_color, SkinColor.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit skin_color form" do
    render

    assert_select "form[action=?][method=?]", skin_color_path(@skin_color), "post" do

      assert_select "input[name=?]", "skin_color[name]"
    end
  end
end
