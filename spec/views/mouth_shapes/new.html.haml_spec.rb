require 'rails_helper'

RSpec.describe "mouth_shapes/new", type: :view do
  before(:each) do
    assign(:mouth_shape, MouthShape.new(
      :name => "MyString"
    ))
  end

  it "renders new mouth_shape form" do
    render

    assert_select "form[action=?][method=?]", mouth_shapes_path, "post" do

      assert_select "input[name=?]", "mouth_shape[name]"
    end
  end
end
