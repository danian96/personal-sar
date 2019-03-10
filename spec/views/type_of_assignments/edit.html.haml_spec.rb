require 'rails_helper'

RSpec.describe "type_of_assignments/edit", type: :view do
  before(:each) do
    @type_of_assignment = assign(:type_of_assignment, TypeOfAssignment.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit type_of_assignment form" do
    render

    assert_select "form[action=?][method=?]", type_of_assignment_path(@type_of_assignment), "post" do

      assert_select "input[name=?]", "type_of_assignment[name]"
    end
  end
end
