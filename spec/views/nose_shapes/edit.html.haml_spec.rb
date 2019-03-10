require 'rails_helper'

RSpec.describe "nose_shapes/edit", type: :view do
  before(:each) do
    @nose_shape = assign(:nose_shape, NoseShape.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit nose_shape form" do
    render

    assert_select "form[action=?][method=?]", nose_shape_path(@nose_shape), "post" do

      assert_select "input[name=?]", "nose_shape[name]"
    end
  end
end
