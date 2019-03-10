require 'rails_helper'

RSpec.describe "eye_colors/new", type: :view do
  before(:each) do
    assign(:eye_color, EyeColor.new(
      :name => "MyString"
    ))
  end

  it "renders new eye_color form" do
    render

    assert_select "form[action=?][method=?]", eye_colors_path, "post" do

      assert_select "input[name=?]", "eye_color[name]"
    end
  end
end
