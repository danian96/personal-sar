require 'rails_helper'

RSpec.describe "type_of_assistances/show", type: :view do
  before(:each) do
    @type_of_assistance = assign(:type_of_assistance, TypeOfAssistance.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
