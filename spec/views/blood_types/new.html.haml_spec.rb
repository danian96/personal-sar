require 'rails_helper'

RSpec.describe "blood_types/new", type: :view do
  before(:each) do
    assign(:blood_type, BloodType.new(
      :name => "MyString"
    ))
  end

  it "renders new blood_type form" do
    render

    assert_select "form[action=?][method=?]", blood_types_path, "post" do

      assert_select "input[name=?]", "blood_type[name]"
    end
  end
end
