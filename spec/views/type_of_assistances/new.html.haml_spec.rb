require 'rails_helper'

RSpec.describe "type_of_assistances/new", type: :view do
  before(:each) do
    assign(:type_of_assistance, TypeOfAssistance.new(
      :name => "MyString"
    ))
  end

  it "renders new type_of_assistance form" do
    render

    assert_select "form[action=?][method=?]", type_of_assistances_path, "post" do

      assert_select "input[name=?]", "type_of_assistance[name]"
    end
  end
end
