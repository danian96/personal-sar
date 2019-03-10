require 'rails_helper'

RSpec.describe "mouth_shapes/edit", type: :view do
  before(:each) do
    @mouth_shape = assign(:mouth_shape, MouthShape.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit mouth_shape form" do
    render

    assert_select "form[action=?][method=?]", mouth_shape_path(@mouth_shape), "post" do

      assert_select "input[name=?]", "mouth_shape[name]"
    end
  end
end
