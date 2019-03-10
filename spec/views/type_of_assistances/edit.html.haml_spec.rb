require 'rails_helper'

RSpec.describe "type_of_assistances/edit", type: :view do
  before(:each) do
    @type_of_assistance = assign(:type_of_assistance, TypeOfAssistance.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit type_of_assistance form" do
    render

    assert_select "form[action=?][method=?]", type_of_assistance_path(@type_of_assistance), "post" do

      assert_select "input[name=?]", "type_of_assistance[name]"
    end
  end
end
