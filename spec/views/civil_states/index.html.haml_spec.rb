require 'rails_helper'

RSpec.describe "civil_states/index", type: :view do
  before(:each) do
    assign(:civil_states, [
      CivilState.create!(
        :name => "Name"
      ),
      CivilState.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of civil_states" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
