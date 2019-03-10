require 'rails_helper'

RSpec.describe "eye_colors/edit", type: :view do
  before(:each) do
    @eye_color = assign(:eye_color, EyeColor.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit eye_color form" do
    render

    assert_select "form[action=?][method=?]", eye_color_path(@eye_color), "post" do

      assert_select "input[name=?]", "eye_color[name]"
    end
  end
end
