require 'rails_helper'

RSpec.describe "type_of_assignments/index", type: :view do
  before(:each) do
    assign(:type_of_assignments, [
      TypeOfAssignment.create!(
        :name => "Name"
      ),
      TypeOfAssignment.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of type_of_assignments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
