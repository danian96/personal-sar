require 'rails_helper'

RSpec.describe "blood_types/show", type: :view do
  before(:each) do
    @blood_type = assign(:blood_type, BloodType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
