require 'rails_helper'

RSpec.describe "civil_states/show", type: :view do
  before(:each) do
    @civil_state = assign(:civil_state, CivilState.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
