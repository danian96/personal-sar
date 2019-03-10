require 'rails_helper'

RSpec.describe "blood_types/edit", type: :view do
  before(:each) do
    @blood_type = assign(:blood_type, BloodType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit blood_type form" do
    render

    assert_select "form[action=?][method=?]", blood_type_path(@blood_type), "post" do

      assert_select "input[name=?]", "blood_type[name]"
    end
  end
end
