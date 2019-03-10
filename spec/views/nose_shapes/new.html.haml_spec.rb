require 'rails_helper'

RSpec.describe "nose_shapes/new", type: :view do
  before(:each) do
    assign(:nose_shape, NoseShape.new(
      :name => "MyString"
    ))
  end

  it "renders new nose_shape form" do
    render

    assert_select "form[action=?][method=?]", nose_shapes_path, "post" do

      assert_select "input[name=?]", "nose_shape[name]"
    end
  end
end
