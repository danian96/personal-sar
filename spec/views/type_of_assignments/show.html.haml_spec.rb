require 'rails_helper'

RSpec.describe "type_of_assignments/show", type: :view do
  before(:each) do
    @type_of_assignment = assign(:type_of_assignment, TypeOfAssignment.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
