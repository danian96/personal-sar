require 'rails_helper'

RSpec.describe "skin_colors/new", type: :view do
  before(:each) do
    assign(:skin_color, SkinColor.new(
      :name => "MyString"
    ))
  end

  it "renders new skin_color form" do
    render

    assert_select "form[action=?][method=?]", skin_colors_path, "post" do

      assert_select "input[name=?]", "skin_color[name]"
    end
  end
end
