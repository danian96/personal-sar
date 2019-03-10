require 'rails_helper'

RSpec.describe "type_of_assignments/new", type: :view do
  before(:each) do
    assign(:type_of_assignment, TypeOfAssignment.new(
      :name => "MyString"
    ))
  end

  it "renders new type_of_assignment form" do
    render

    assert_select "form[action=?][method=?]", type_of_assignments_path, "post" do

      assert_select "input[name=?]", "type_of_assignment[name]"
    end
  end
end
